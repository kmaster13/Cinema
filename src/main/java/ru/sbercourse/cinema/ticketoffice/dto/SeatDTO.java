package ru.sbercourse.cinema.ticketoffice.dto;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.persistence.Column;
import jakarta.persistence.Enumerated;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import ru.sbercourse.cinema.ticketoffice.model.HallType;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Schema(description = "DTO места в кинозале")
public class SeatDTO extends GenericDTO {

    @Schema(description = "Ряд")
    private Byte row;

    @Schema(description = "Место в ряду")
    private Byte place;

    @Schema(description = "Тип зала")
    private HallType type;

}