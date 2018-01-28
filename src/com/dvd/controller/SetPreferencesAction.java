package com.dvd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionForm;


public class SetPreferencesAction extends Action {

  public ActionForward execute(ActionMapping mapping, ActionForm form,
                               HttpServletRequest request,
                               HttpServletResponse response) {

    // Retrieve form parameters
    String[] show_values = request.getParameterValues("show");

    // Retrieve the session object
    HttpSession session = request.getSession();

    // Remove old values
    session.removeAttribute("showTitle");
    session.removeAttribute("showYear");
    session.removeAttribute("showGenre");

    // Use the parameter values as attribute names
    if ( show_values != null ) {
      for ( int i = 0; i < show_values.length; i++ ) {
	session.setAttribute(show_values[i], "true");
      }
    }

    return mapping.findForward("success");
  }

}
