package ru.sbercourse.cinema.ticketoffice.model;

public enum HallType {
    VIP("ВИП"),
    DEFAULT("Обычный"),
    SOFT("Мягкий");

    private final String text;

    HallType(String text) {
        this.text = text;
    }

    public String getText() {
        return text;
    }
}
