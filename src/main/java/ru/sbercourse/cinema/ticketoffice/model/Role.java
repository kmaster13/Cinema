package ru.sbercourse.cinema.ticketoffice.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name = "roles")
@NoArgsConstructor
@Getter
@Setter
@ToString
public class Role{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY, generator = "default_gen")
    @SequenceGenerator(name = "default_gen", initialValue = 2)
    @Column(name = "id")
    private Long id;

    @Column(name = "title", nullable = false)
    private String title;

    @Column(name = "description")
    private String description;



    public Role(String title, String description) {
        this.title = title;
        this.description = description;
    }
}
