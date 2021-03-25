//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package com.company.model;

import java.util.List;
import java.util.Objects;

public class MovieTheater {
    private Long movieTheaterid;
    private String movieTheaterName;
    private List<Chair> chairs;

    public MovieTheater(Long movieTheaterid, String movieTheaterName, List<Chair> chairs) {
        this.movieTheaterid = movieTheaterid;
        this.movieTheaterName = movieTheaterName;
        this.chairs = chairs;
    }

    public Long getMovieTheaterid() {
        return this.movieTheaterid;
    }

    public void setMovieTheaterid(Long movieTheaterid) {
        this.movieTheaterid = movieTheaterid;
    }

    public String getMovieTheaterName() {
        return this.movieTheaterName;
    }

    public void setMovieTheaterName(String movieTheaterName) {
        this.movieTheaterName = movieTheaterName;
    }

    public List<Chair> getChairs() {
        return this.chairs;
    }

    public void setChairs(List<Chair> chairs) {
        this.chairs = chairs;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        } else if (o != null && this.getClass() == o.getClass()) {
            MovieTheater that = (MovieTheater)o;
            return Objects.equals(this.movieTheaterid, that.movieTheaterid);
        } else {
            return false;
        }
    }

    public int hashCode() {
        return Objects.hash(new Object[]{this.movieTheaterid});
    }

    public String toString() {
        return "MovieTheater{movieTheaterid=" + this.movieTheaterid + ", movieTheaterName='" + this.movieTheaterName + "', chairs=" + this.chairs + "}";
    }
}
