package ru.sbercourse.cinema.ticketoffice.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WorkerController {

    @GetMapping("/workers")
    public String workerPage() {
        return "workers";
    }
}
