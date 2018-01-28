package com.dvd.view;

// Struts imports
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionError;
import org.apache.struts.action.ActionErrors;
import javax.servlet.http.HttpServletRequest;


public class AddDVDForm extends ActionForm {

  private String title = null;
  public void setTitle(String title) {
    this.title = title.trim();
  }
  public String getTitle() {
    return title;
  }

  private String year = null;
  public void setYear(String year) {
    this.year = year.trim();
  }
  public String getYear() {
    return year;
  }

  private String genre = null;
  public void setGenre(String genre) {
    this.genre = genre.trim();
  }
  public String getGenre() {
    if ( newGenre.length() == 0 ) {
      return genre;
    } else {
      return newGenre;
    }
  }

  private String newGenre = null;
  public void setNewGenre(String newGenre) {
    this.newGenre = newGenre.trim();
  }

  public ActionErrors validate(ActionMapping mapping,
                               HttpServletRequest request) {
    ActionErrors errors = new ActionErrors();

    // Form verification
    if ( title.length() == 0 ) {
      errors.add("title",
		 new ActionError("error.titleField.required"));
    }
    if ( year.length() == 0 ) {
      errors.add("year",
		 new ActionError("error.yearField.required"));
    }

    return errors;
  }

}
