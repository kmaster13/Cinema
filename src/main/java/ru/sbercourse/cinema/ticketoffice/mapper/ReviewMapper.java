package ru.sbercourse.cinema.ticketoffice.mapper;

import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import ru.sbercourse.cinema.ticketoffice.dto.ReviewDTO;
import ru.sbercourse.cinema.ticketoffice.dto.UserDTO;
import ru.sbercourse.cinema.ticketoffice.model.Film;
import ru.sbercourse.cinema.ticketoffice.model.Review;
import ru.sbercourse.cinema.ticketoffice.model.User;
import ru.sbercourse.cinema.ticketoffice.repository.FilmRepository;
import ru.sbercourse.cinema.ticketoffice.repository.UserRepository;

@Component
public class ReviewMapper extends GenericMapper<Review, ReviewDTO>
        implements ConverterForSpecificFields<Review, ReviewDTO> {

    private FilmRepository filmRepository;
    private UserRepository userRepository;
    private UserMapper userMapper;



    public ReviewMapper() {
        super(Review.class, ReviewDTO.class);
    }

    @PostConstruct
    @Override
    public void setupMapper() {
        modelMapper.createTypeMap(Review.class, ReviewDTO.class)
                .addMappings(m -> {
                    m.skip(ReviewDTO::setFilmId);
                    m.skip(ReviewDTO::setUserDTO);
                })
                .setPostConverter(toDtoConverter());

        modelMapper.createTypeMap(ReviewDTO.class, Review.class)
                .addMappings(m -> {
                    m.skip(Review::setFilm);
                    m.skip(Review::setUser);
                })
                .setPostConverter(toEntityConverter());
    }

    @Override
    public void mapSpecificFields(ReviewDTO source, Review destination) {
        Long filmId = source.getFilmId();
        if (filmId != null) {
            destination.setFilm(filmRepository.findById(filmId).orElse(null));
        } else destination.setFilm(null);

        UserDTO userDTO = source.getUserDTO();
        if (userDTO != null) {
            Long userId = userDTO.getId();
            destination.setUser(userRepository.findById(userId).orElse(null));
        } else destination.setUser(null);
    }

    @Override
    public void mapSpecificFields(Review source, ReviewDTO destination) {
        Long filmId = null;
        Film film = source.getFilm();
        if (film != null) {
            filmId = film.getId();
        }
        destination.setFilmId(filmId);

        User user = source.getUser();
        destination.setUserDTO(userMapper.toDTO(user));
    }



    @Autowired
    public void setFilmRepository(FilmRepository filmRepository) {
        this.filmRepository = filmRepository;
    }

    @Autowired
    public void setUserRepository(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Autowired
    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }
}
