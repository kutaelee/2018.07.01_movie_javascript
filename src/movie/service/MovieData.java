package movie.service;

import movie.model.Movie;
import movie.model.MovieContent;

public class MovieData {

	private Movie movie;
	private MovieContent content;

	public MovieData(Movie movie, MovieContent content) {
		this.movie = movie;
		this.content = content;
	}

	public Movie getMovie() {
		return movie;
	}

	public String getContent() {
		return content.getContent();
	}

}
