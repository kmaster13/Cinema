package ru.sbercourse.cinema.ticketoffice.mvc;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import ru.sbercourse.cinema.ticketoffice.dto.FilmSessionDTO;
import ru.sbercourse.cinema.ticketoffice.model.FilmSession;
import ru.sbercourse.cinema.ticketoffice.repository.FilmSessionRepository;
import ru.sbercourse.cinema.ticketoffice.service.FilmService;
import ru.sbercourse.cinema.ticketoffice.service.FilmSessionService;

import java.time.LocalTime;
import java.util.Comparator;
import java.util.List;

@Controller
@RequestMapping("/filmSessions")
public class FilmSessionController {

    private FilmSessionService filmSessionService;
    private FilmService filmService;
    private FilmSessionRepository filmSessionRepository;


    @PostMapping("/add")
    public String create(@ModelAttribute("filmSessionForm") FilmSessionDTO filmSessionDTO, RedirectAttributes redirectAttributes) {
        if (isCurrentSessionFilm(filmSessionDTO)) {
            filmSessionService.create(filmSessionDTO);
        } else {
            redirectAttributes.addFlashAttribute("errorMessage", "Прошлый сеанс ещё не окончен!");
        }
        return "redirect:/films/get/" + filmSessionDTO.getFilmId();
    }

    private boolean isCurrentSessionFilm(FilmSessionDTO filmSessionDTO) {
        List<FilmSession> sessions = filmSessionRepository.findAllByFilmIdAndStartDateAndType(
                filmSessionDTO.getFilmId(), filmSessionDTO.getStartDate(), filmSessionDTO.getType());
        if (sessions != null && !sessions.isEmpty()) {
            LocalTime time = sessions.stream().max(Comparator.comparing(FilmSession::getStartTime))
                    .get().getStartTime().plusHours(3);
            return filmSessionDTO.getStartTime().isAfter(time);
        }
        return true;
    }

    @GetMapping("/delete/{id}")
    public String softDelete(@PathVariable Long id, HttpServletRequest request) {
        filmSessionService.softDelete(id);
        String referer = request.getHeader("Referer");
        return "redirect:" + referer;
    }

    @GetMapping("/restore/{id}")
    public String restore(@PathVariable Long id, HttpServletRequest request) {
        filmSessionService.restore(id);
        String referer = request.getHeader("Referer");
        return "redirect:" + referer;
    }

    @GetMapping("/update/{id}")
    public String update(Model model, @PathVariable Long id) {
        FilmSessionDTO filmSessionDTO = filmSessionService.getById(id);
        model.addAttribute("filmSession", filmSessionDTO);
        model.addAttribute("filmTitle", filmService.getById(filmSessionDTO.getFilmId()).getTitle());
        return "filmSessions/updateFilmSession";
    }

    @PostMapping("/update")
    public String update(@ModelAttribute("filmSessionForm") FilmSessionDTO filmSessionDTO) {
        filmSessionService.update(filmSessionDTO);
        return "redirect:/films/get/" + filmSessionDTO.getFilmId();
    }


    @Autowired
    public void setFilmSessionService(FilmSessionService filmSessionService) {
        this.filmSessionService = filmSessionService;
    }

    @Autowired
    public void setFilmService(FilmService filmService) {
        this.filmService = filmService;
    }

    @Autowired
    public void setFilmSessionRepository(FilmSessionRepository filmSessionRepository) {
        this.filmSessionRepository = filmSessionRepository;
    }
}
