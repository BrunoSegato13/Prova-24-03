//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package com.company.model;

import java.time.LocalDateTime;
import java.util.Objects;

public class Cine {
    private Long cineId;
    private String cineName;
    private LocalDateTime openingHour;
    private LocalDateTime closeHour;
    private int totalCineChairs;

    public Cine(Long cineId, String cineName, LocalDateTime openingHour, LocalDateTime closeHour, int totalCineChairs) {
        this.cineId = cineId;
        this.cineName = cineName;
        this.openingHour = openingHour;
        this.closeHour = closeHour;
        this.totalCineChairs = totalCineChairs;
    }
    public Long getCineId() {
        return this.cineId;
    }

    public void setCineId(Long cineId) {
        this.cineId = cineId;
    }

    public String getCineName() {
        return this.cineName;
    }

    public void setCineName(String cineName) {
        this.cineName = cineName;
    }

    public LocalDateTime getOpeningHour() {
        return this.openingHour;
    }

    public void setOpeningHour(LocalDateTime openingHour) {
        this.openingHour = openingHour;
    }

    public LocalDateTime getCloseHour() {
        return this.closeHour;
    }

    public void setCloseHour(LocalDateTime closeHour) {
        this.closeHour = closeHour;
    }

    public int getTotalCineChairs() {
        return this.totalCineChairs;
    }

    public void setTotalCineChairs(int totalCineChairs) {
        this.totalCineChairs = totalCineChairs;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        } else if (o != null && this.getClass() == o.getClass()) {
            Cine cine = (Cine)o;
            return Objects.equals(this.cineId, cine.cineId);
        } else {
            return false;
        }
    }

    public int hashCode() {
        return Objects.hash(new Object[]{this.cineId});
    }
}
