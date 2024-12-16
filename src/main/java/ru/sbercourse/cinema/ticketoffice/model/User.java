package ru.sbercourse.cinema.ticketoffice.model;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import jakarta.persistence.*;
import jakarta.validation.constraints.Past;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;
import java.util.Set;

@Entity
@Table(name = "users")
@NoArgsConstructor
@Getter
@Setter
@ToString(callSuper = true)
@SequenceGenerator(name = "default_gen", sequenceName = "users_seq", allocationSize = 1)
@JsonIdentityInfo(generator = ObjectIdGenerators.IntSequenceGenerator.class, property = "jsonId")
public class User extends GenericModel{

    @Column(name = "first_name", nullable = false)
    private String firstName;

    @Column(name = "last_name", nullable = false)
    private String lastName;

    @Past(message = "Дата рождения должна быть в прошлом")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Column(name = "birth_date", nullable = false)
    private LocalDate birthDate;

    @Column(name = "email", nullable = false)
    private String email;

    @Column(name = "login", nullable = false)
    private String login;

    @Column(name = "password", nullable = false)
    private String password;

    @Column(name = "change_password_token")
    private String changePasswordToken;

    @ManyToOne(optional = false)
    @JoinColumn(name = "role_id", foreignKey = @ForeignKey(name = "fk_users_roles"), nullable = false)
    private Role role;

    @ToString.Exclude
    @OneToMany(mappedBy = "user", orphanRemoval = true,
            cascade = {CascadeType.MERGE, CascadeType.REMOVE})
    private Set<Order> orders;

    public void setBirthDate(LocalDate birthDate) {
        if (birthDate.isBefore(LocalDate.of(1910, 1, 1)) || birthDate.isAfter(LocalDate.of(2010, 12, 31))) {
            throw new IllegalArgumentException("Дата рождения должна быть в диапазоне 1910-2010");
        }
        this.birthDate = birthDate;
    }
}
