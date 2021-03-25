package com.company;

import com.company.model.Chair;
import com.company.model.Cine;
import com.company.model.MovieTheater;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

public class Main {

    public static void main(String[] args) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        String start = "2021-03-24 21:00:00";
        String end = "2021-03-24 12:00:00";
        LocalDateTime starHour = LocalDateTime.parse(start, formatter);
        LocalDateTime endHour = LocalDateTime.parse(start, formatter);
        Cine cine1 = new Cine(1L, "Cine Uniamérica", starHour, endHour, 200);
        Chair chair1 = new Chair(1L, true);
        Chair chair2 = new Chair(1L, false);
        List ch = new ArrayList();
        ch.add(chair1);
        ch.add(chair2);
        MovieTheater movieTheater1 = new MovieTheater(1L, "SALA 1", ch);
        System.out.println("Cine: " + cine1.getCineName());
        System.out.println("Open: " + cine1.getOpeningHour());
        System.out.println("Close: " + cine1.getCloseHour());
        cine1.setCineName("New Name");
        System.out.println("Cine: " + cine1.getCineName());
        System.out.println(movieTheater1.toString());
    }
}
