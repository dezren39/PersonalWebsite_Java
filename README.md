# PersonalWebsite_Java


## ConnectServlet
    package edu.cvtc.web;

    import java.io.IOException;

    import javax.servlet.ServletException;
    import javax.servlet.annotation.WebServlet;
    import javax.servlet.http.HttpServlet;
    import javax.servlet.http.HttpServletRequest;
    import javax.servlet.http.HttpServletResponse;

    /**
     * Servlet implementation class ConnectServlet
     */

    @WebServlet("/connect")
    public class ConnectServlet extends HttpServlet {
      private static final long serialVersionUID = 1L;

        /**
         * @see HttpServlet#HttpServlet()
         */

        public ConnectServlet() {
            super();
            // TODO Auto-generated constructor stub
        }

      /**
       * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
       */

      protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String target = "/thanks.jsp";

        final String firstName = request.getParameter("firstName");
        final String lastName = request.getParameter("lastName");
        final String email = request.getParameter("email");

        final User user = new User(firstName, lastName, email);

        if (firstName != null & !firstName.isEmpty()
            && lastName != null && !lastName.isEmpty()
            && email != null && !email.isEmpty()) {
          //TODO: Insert new user into connection DB.

        } else { // did not pass validation
          target = "/contact.jsp";
          final String message = "Please completely fill out the form.";
          request.setAttribute("message", message);
        }

        request.setAttribute("user", user);

        getServletContext().getRequestDispatcher(target).forward(request, response);
      }

      /**
       * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
       */

      protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
      }

    }

## User Class
    /**
     * 
     */
    package edu.cvtc.web;

    /**
     * @author drewry pope
     *
     */

    public class User {

        private String firstName;
        private String lastName;
        private String email;

        public User(String firstName, String lastName, String email) {
          super();
          this.firstName = firstName;
          this.lastName = lastName;
          this.email = email;
        }

        public String getFirstName() {
          return firstName;
        }
        public void setFirstName(String firstName) {
          this.firstName = firstName;
        }
        public String getLastName() {
          return lastName;
        }
        public void setLastName(String lastName) {
          this.lastName = lastName;
        }
        public String getEmail() {
          return email;
        }
        public void setEmail(String email) {
          this.email = email;
        }
        @Override
        public String toString() {
          return "User [firstName=" + firstName + ", lastName=" + lastName + ", email=" + email + "]";
        }

    }
