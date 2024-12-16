package ru.sbercourse.cinema.ticketoffice.constants;

public interface MailConstants {

    String MAIL_MESSAGE_FOR_REMEMBER_PASSWORD = """
              Добрый день. Вы получили это письмо, так как с вашего аккаунта была отправлена заявка на восстановление пароля.
                  
              Для восстановления пароля перейдите по ссылке:
            """;

    String MAIL_SUBJECT_FOR_REMEMBER_PASSWORD = "Восстановление пароля на сайте Кинотеатра";
    String MAIL_SUBJECT_FOR_REGISTRATION_PASSWORD = "Регистрация на сайте Кинотеатра";
    String MAIL_MESSAGE_FOR_REGISTRATION_PASSWORD = "Добрый день. Вы получили это письмо, " +
            "так как ваш email был привязан к новому аккаунту на сайте Кинотеатора.";

    String MAIL_SUBJECT_FOR_BUY_TICKET = "Покупка билетов в Кинотеатре";

    String MAIL_MESSAGE_FOR_BUY_TICKET = "Добрый день. Вы получили это письмо, " +
            "так как с вашего аккаунта была совершена покупка билетов.";
}
