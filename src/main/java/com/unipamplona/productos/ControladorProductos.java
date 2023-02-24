package com.unipamplona.productos;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class ControladorProductos
 */
@WebServlet("/ControladorProductos")
public class ControladorProductos extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private ModeloProductos modeloProductos;
	
	@Resource(name = "jdbc/productos")
	private DataSource miPool;
	
	
       
    @Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		try {
			this.modeloProductos = new ModeloProductos(miPool);
		} catch (Exception e) {
			throw new ServletException(e);
		}
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		String elComando = request.getParameter("instruccion");
		if(elComando == null) elComando="listar";
		switch (elComando) {
		case "listar": 
			obtenerProductos(request, response);
			break;
		case "insertarBD":
			agregarProducto(request,response);
			break;
		case "cargar":
			try {
				cargarProductos(request,response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
		case "actualizarBD":
			try {
				actualizarProducto(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
		case "eliminar":
			try {
				eliminarProducto(request,response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
		default:
			obtenerProductos(request, response);
		}	
	}

	private void eliminarProducto(HttpServletRequest request, HttpServletResponse response)throws Exception{
		// TODO Auto-generated method stub
		String codigoProducto = request.getParameter("codigoProducto");
		this.modeloProductos.eliminarElProducto(codigoProducto);
		obtenerProductos(request, response);
	}

	private void actualizarProducto(HttpServletRequest request, HttpServletResponse response)throws Exception{
		// TODO Auto-generated method stub
		
		String codigo = request.getParameter("q14_codigo");
		String seccion = request.getParameter("q15_codigo15");
		String nombre = request.getParameter("q16_codigo16");
		double precio = Double.parseDouble(request.getParameter("q17_codigo17"));
		String importado = request.getParameter("q21_importado21");
		String pais = request.getParameter("q19_importado");
		
		Productos elProducto = new Productos(codigo, seccion, nombre, precio, null, importado, pais);
		
		try {
			this.modeloProductos.actualizarElProducto(elProducto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		obtenerProductos(request, response);
	}

	private void cargarProductos(HttpServletRequest request, HttpServletResponse response)throws Exception{
		// TODO Auto-generated method stub
		String codigoProducto = request.getParameter("codigoProducto");
		Productos elProducto = this.modeloProductos.getProducto(codigoProducto);
		request.setAttribute("elProducto", elProducto);
		RequestDispatcher miDispatcher = request.getRequestDispatcher("/actualizarProducto.jsp");
		miDispatcher.forward(request, response);
	}

	private void agregarProducto(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String codigo = request.getParameter("q14_codigo");
		String seccion = request.getParameter("q15_codigo15");
		String nombre = request.getParameter("q16_codigo16");
		double precio = Double.parseDouble(request.getParameter("q17_codigo17"));
		String importado = request.getParameter("q21_importado21");
		String pais = request.getParameter("q19_importado");
		
		Productos nuevoProducto = new Productos(codigo, seccion, nombre, precio, null, importado, pais);
		
		try {
			this.modeloProductos.agregarNuevoProducto(nuevoProducto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		obtenerProductos(request, response);
	}

	private void obtenerProductos(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		List<Productos> products = null ;
		try {
			products = this.modeloProductos.getProductos();
			request.setAttribute("misProductos", products);
			RequestDispatcher miDispatcher = request.getRequestDispatcher("/ListaProductos.jsp");
			miDispatcher.forward(request, response);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}


}
