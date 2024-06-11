

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;


public class WelcomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public WelcomeServlet() {
        super();
      
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//implementacion de uso de sesiones 
		 HttpSession session = request.getSession();
		    String sessionId = session.getId();
		    Integer visitCount = (Integer) session.getAttribute("visitCount");
	    	request.setAttribute("name", "Juan David Castaneda Tenjo");
	    	
		    
		    if (visitCount == null) {
		        visitCount = 0;
		    }
		    visitCount++;
		    session.setAttribute("visitCount", visitCount);
		    response.setContentType("text/html; charset=UTF-8");
		    PrintWriter out = response.getWriter();
		    
		    
if(visitCount == 10) {
    out.println("""
	        <!DOCTYPE html>
	        <html>
	        <head><title>Parcial 3</title>
	        <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        .content {
            background: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .footer {
            margin-top: 20px;
            font-size: 0.8em;
            color: #666;
        }
    </style>
	        </head>
	        <body>	
	          <h1>Realizado por Juan David Castañeda Tenjo</h1>
	          <p>Request URI: %s</p>
	          <p>Protocol: %s</p>
	          <p>Remote Address: %s</p>
	          <p>A Random Number: <strong>%f</strong></p>
	          <p>Session ID: %s</p>
	          <p>Numero de visitas: %d</p>
	          <strong><p>Eres la visita numero 10, Felicidades </p> </strong>
	              <div class="footer">
        <p>&copy; 2024 Realizado por Juan David Castañeda Tenjo</p>
    </div>
	        </body>
	        </html>
	        """.formatted(request.getRequestURI(), request.getProtocol(),
	                      request.getRemoteAddr(), Math.random(),
	                      sessionId, visitCount));
	    out.close();	
	
}
	   		 

		    out.println("""
		        <!DOCTYPE html>
		        <html>
		        <head><title>Parcial 3</title>
		        <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        .content {
            background: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .footer {
            margin-top: 20px;
            font-size: 0.8em;
            color: #666;
        }
    </style>
		        </head>
		        <body>
		          <h1>Realizado por Juan David Castañeda Tenjo</h1>
		          <p>Request URI: %s</p>
		          <p>Protocol: %s</p>
		          <p>Remote Address: %s</p>
		          <p>A Random Number: <strong>%f</strong></p>
		          <p>Session ID: %s</p>
		          <p>Numero de visitas: %d</p>
		              <div class="footer">
        <p>&copy; 2024 Realizado por Juan David Castañeda Tenjo</p>
    </div>
		        </body>
		        
		        </html>
		        """.formatted(request.getRequestURI(), request.getProtocol(),
		                      request.getRemoteAddr(), Math.random(),
		                      sessionId, visitCount));
		    out.close();

		  
		
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
