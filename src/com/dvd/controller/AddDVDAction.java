package com.dvd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletContext;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionError;
import org.apache.struts.action.ActionErrors;
import java.util.*;
import com.dvd.model.DVDItem;
import com.dvd.model.DVDLibrary;
import com.dvd.view.AddDVDForm;


public class AddDVDAction extends Action {

  public ActionForward execute(ActionMapping mapping, ActionForm form,
                               HttpServletRequest request,
                               HttpServletResponse response) {

    ServletContext context = getServlet().getServletContext();

    // Use Struts actions to record business processing errors.
    ActionErrors errors = new ActionErrors();
    // Store this set in the request scope, in case we need to
    // send the ErrorPage view.
    saveErrors(request, errors);

    try {

      // Retrieve the DVD library from the session-scope
      HttpSession session = request.getSession();
      DVDLibrary library = (DVDLibrary) session.getAttribute("library");

      // Cast the action form to an application-specific form
      AddDVDForm myForm = (AddDVDForm) form;

      // Business logic
      DVDItem item = library.addDVD(myForm.getTitle(),
				    myForm.getYear(),
				    myForm.getGenre());

      // Store the item on the request-scope
      request.setAttribute("dvdItem", item);

      // Dispatch to Success view
      return mapping.findForward("success");

    // Handle any unexpected expections
    } catch (RuntimeException e) {

      // Log stack trace
      context.log("An unexpected error: ", e);

      // Record the error
      errors.add(ActionErrors.GLOBAL_ERROR,
                 new ActionError("error.unexpectedError",
                                 e.getMessage()));

      // and forward to the error handling page (the form itself)
      return mapping.findForward("error");
    }
  }

}
