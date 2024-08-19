package servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Sucursal;

import java.io.IOException;
import java.util.List;

import dao.impl.SucursalDaoImpl;

/**
 * Servlet implementation class SucursalServlets
 */@WebServlet("/sucursales")
public class SucursalServlets extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	 private dao.impl.SucursalDao sucursalDao;
    public SucursalServlets() {
        super();
        sucursalDao = new SucursalDaoImpl();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		 List<Sucursal> sucursales = sucursalDao.listar();
			
			request.setAttribute("sucursales", sucursales);
			
		
		RequestDispatcher dispacher =request.getRequestDispatcher("/view/listarSucursales.jsp");
		dispacher.forward(request, response);
		}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
