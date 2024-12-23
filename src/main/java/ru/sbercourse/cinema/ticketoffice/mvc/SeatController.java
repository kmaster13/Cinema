package ru.sbercourse.cinema.ticketoffice.mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import ru.sbercourse.cinema.ticketoffice.dto.FilmSessionDTO;
import ru.sbercourse.cinema.ticketoffice.dto.SeatDTO;
import ru.sbercourse.cinema.ticketoffice.repository.SeatRepository;
import ru.sbercourse.cinema.ticketoffice.service.FilmService;
import ru.sbercourse.cinema.ticketoffice.service.FilmSessionService;
import ru.sbercourse.cinema.ticketoffice.service.SeatService;

@Controller
@RequestMapping("/seats")
public class SeatController {

    private SeatService seatService;
    @Autowired
    private SeatRepository seatRepository;
    private FilmSessionService filmSessionService;
    private FilmService filmService;


    @GetMapping("")
    public String getAll(
            @RequestParam(value = "page", defaultValue = "1") int page,
            @RequestParam(value = "size", defaultValue = "5") int pageSize,
            Model model
    ) {
        PageRequest pageRequest = PageRequest.of(page - 1, pageSize, Sort.by(Sort.Direction.ASC, "type", "row", "place"));
        Page<SeatDTO> seatDTOPage = seatService.getAll(pageRequest);
        model.addAttribute("seats", seatDTOPage);
        return "seats/viewAllSeats";
    }

    @PostMapping("/add")
    public String create(@ModelAttribute("seatForm") SeatDTO seatDTO, RedirectAttributes redirectAttributes) {
        try {
            int maxPlace = seatRepository.findMaxPlaceInRowAndType(seatDTO.getRow(), seatDTO.getType());

            if (maxPlace > 0) {
                seatDTO.setPlace((byte) (maxPlace + 1));
            } else {
                seatDTO.setPlace((byte) 1);
            }

            int maxRow = seatRepository.findMaxRowByType(seatDTO.getType());

            if (seatDTO.getRow() > maxRow + 1) {
                throw new IllegalArgumentException("Ряд должен быть не больше " + (maxRow + 1));
            }

            seatService.create(seatDTO);
            redirectAttributes.addFlashAttribute("successMessage", "Место успешно добавлено.");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("errorMessage", e.getMessage());
        }
        return "redirect:/seats";
    }

    @GetMapping("/delete/{id}")
    public String softDelete(@PathVariable Long id) {
        seatService.softDelete(id);
        return "redirect:/seats";
    }

    @GetMapping("/restore/{id}")
    public String restore(@PathVariable Long id) {
        seatService.restore(id);
        return "redirect:/seats";
    }

    @GetMapping("/update/{id}")
    public String update(Model model, @PathVariable Long id) {
        model.addAttribute("seat", seatService.getById(id));
        return "seats/updateSeat";
    }

    @PostMapping("/update")
    public String update(@ModelAttribute("seatForm") SeatDTO seatDTO) {
        seatService.update(seatDTO);
        return "redirect:/seats";
    }

    @PostMapping("/search")
    public String search(
            @RequestParam(value = "page", defaultValue = "1") int page,
            @RequestParam(value = "size", defaultValue = "3") int pageSize,
            @ModelAttribute("seatsSearchForm") SeatDTO seatDTO,
            Model model
    ) {
        Byte rowForSearch = seatDTO.getRow();
        Byte placeForSearch = seatDTO.getPlace();
        if (rowForSearch != null || placeForSearch != null) {
            PageRequest pageRequest = PageRequest.of(page - 1, pageSize, Sort.by(Sort.Direction.ASC, "row", "place"));
            Page<SeatDTO> seatDTOPage = seatService.searchSeats(rowForSearch, placeForSearch, pageRequest);
            model.addAttribute("seats", seatDTOPage);
            return "seats/viewAllSeats";
        } else {
            return "redirect:/seats";
        }
    }

    @GetMapping("/selectSeat")
    public String getSeats(@RequestParam(value = "filmSessionId") Long filmSessionId, Model model) {
        FilmSessionDTO filmSessionDTO = filmSessionService.getById(filmSessionId);
        model.addAttribute("filmTitle", filmService.getById(filmSessionDTO.getFilmId()).getTitle());
        model.addAttribute("filmSession", filmSessionDTO);
        model.addAttribute("seatsInMap", seatService.getAllInMap(filmSessionId));
        return "seats/selectSeat";
    }


    @Autowired
    public void setSeatService(SeatService seatService) {
        this.seatService = seatService;
    }

    @Autowired
    public void setFilmSessionService(FilmSessionService filmSessionService) {
        this.filmSessionService = filmSessionService;
    }

    @Autowired
    public void setFilmService(FilmService filmService) {
        this.filmService = filmService;
    }
}
