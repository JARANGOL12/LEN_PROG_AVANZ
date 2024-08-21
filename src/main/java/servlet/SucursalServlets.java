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

import org.eclipse.jdt.internal.compiler.util.Util;

import dao.impl.SucursalDaoImpl;

/**
 * Servlet implementation class SucursalServlets
 */@WebServlet("/sucursales/*")
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
		
		String pathInfo =request.getPathInfo();
		System.out.println(pathInfo);
		
		if(pathInfo==null) {
          List<Sucursal> sucursales = sucursalDao.listar();
			
			request.setAttribute("sucursales", sucursales);
			RequestDispatcher dispacher =request.getRequestDispatcher("/view/listarSucursales.jsp");
			dispacher.forward(request, response);
		} else {
			String id=utils.Util.extractDataFromPath(pathInfo,1);
			System.out.println("id:" + id);
			
			Sucursal sucursal = sucursalDao.obtenerSucursal(Integer.parseInt(id));
			request.setAttribute("sucursal", sucursal);
			
			
			RequestDispatcher dispacher =request.getRequestDispatcher("/view/detalleSucursal.jsp");
			dispacher.forward(request, response);
			
		}
		
		}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
