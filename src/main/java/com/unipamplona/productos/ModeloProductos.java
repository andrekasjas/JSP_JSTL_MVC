package com.unipamplona.productos;

import java.sql.*;
import java.util.*;
import javax.sql.DataSource;

public class ModeloProductos {
	private DataSource origenDatos;

	public ModeloProductos(DataSource origenDatos) {
		this.origenDatos = origenDatos;
	}
	
	public List<Productos> getProductos() throws Exception{
		List<Productos> product = new ArrayList<>();
		Connection miConexion = this.origenDatos.getConnection();
		String sql = "SELECT * FROM productos";
		Statement miStatement = miConexion.createStatement();
		ResultSet miResulset = miStatement.executeQuery(sql);
		while(miResulset.next()) {
			String codigo = miResulset.getString(1);
			String seccion = miResulset.getString(2);
			String nombre = miResulset.getString(3);
			double precio = miResulset.getDouble(4);
			String importado = miResulset.getString(6);
			String pais = miResulset.getString(7);
			Productos tem = new Productos(codigo,seccion,nombre,precio,null,importado,pais);
			product.add(tem);
		}
		miStatement.close();
		miConexion.close();
		return product;
	}

	public void agregarNuevoProducto(Productos nuevoProducto) throws Exception{
		// TODO Auto-generated method stub
		Connection miConexion = this.origenDatos.getConnection();
		String miSql = "INSERT INTO productos(codigo,seccion,nombre,precio,importado,pais) VALUES (?,?,?,?,?,?)";
		PreparedStatement miStatement = miConexion.prepareStatement(miSql);
		miStatement.setString(1,nuevoProducto.getCodigo());
		miStatement.setString(2,nuevoProducto.getSeccion());
		miStatement.setString(3,nuevoProducto.getNombre());
		miStatement.setDouble(4,nuevoProducto.getPrecio());
		miStatement.setString(5,nuevoProducto.getImportado());
		miStatement.setString(6,nuevoProducto.getPais());
		miStatement.execute();
		miStatement.close();
		miConexion.close();
	}

	public Productos getProducto(String codigoProducto) throws Exception {
		// TODO Auto-generated method stub
		Productos elProducto = null;
		ResultSet miResultSet = null;
		Connection miConexion = this.origenDatos.getConnection();
		String miSql = "SELECT * FROM productos WHERE codigo = ?";
		PreparedStatement miStatement = miConexion.prepareStatement(miSql);
		miStatement.setString(1, codigoProducto);
		miResultSet = miStatement.executeQuery();
		if(miResultSet.next()) {
			elProducto = new Productos(miResultSet.getString(1), 
					   miResultSet.getString(2), 
					   miResultSet.getString(3), 
					   miResultSet.getDouble(4), 
					   null, 
					   miResultSet.getString(6), 
					   miResultSet.getString(7));
		}else {
			throw new Exception("No se encuentra el codigo: "+codigoProducto);
		}
		miStatement.close();
		miConexion.close();
		return elProducto;
	}

	public void actualizarElProducto(Productos elProducto)throws Exception{
		// TODO Auto-generated method stub
		Connection miConexion = this.origenDatos.getConnection();
		String miSql = "UPDATE productos SET seccion=?,nombre=?,precio=?,importado=?,pais=? where codigo =?";
		PreparedStatement miStatement = miConexion.prepareStatement(miSql);
		miStatement.setString(1,elProducto.getSeccion());
		miStatement.setString(2,elProducto.getNombre());
		miStatement.setDouble(3,elProducto.getPrecio());
		miStatement.setString(4,elProducto.getImportado());
		miStatement.setString(5,elProducto.getPais());
		miStatement.setString(6, elProducto.getCodigo());
		miStatement.execute();
		miStatement.close();
		miConexion.close();
	}

	public void eliminarElProducto(String codigoProducto) throws Exception{
		// TODO Auto-generated method stub
		Connection miConnection = this.origenDatos.getConnection();
		String miSql = "DELETE FROM productos WHERE codigo=?";
		PreparedStatement miPreparedStatement = miConnection.prepareStatement(miSql);
		miPreparedStatement.setString(1, codigoProducto);
		miPreparedStatement.execute();
		miPreparedStatement.close();
		miConnection.close();
	}
	
}
