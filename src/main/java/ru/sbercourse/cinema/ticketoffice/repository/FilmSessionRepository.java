package ru.sbercourse.cinema.ticketoffice.repository;

import org.springframework.stereotype.Repository;
import ru.sbercourse.cinema.ticketoffice.model.FilmSession;
import ru.sbercourse.cinema.ticketoffice.model.HallType;

import java.time.LocalDate;
import java.util.List;

@Repository
public interface FilmSessionRepository extends GenericRepository<FilmSession> {
    List<FilmSession> findAllByFilmIdAndStartDateAndType(Long filmId, LocalDate startDate, HallType type);
}
