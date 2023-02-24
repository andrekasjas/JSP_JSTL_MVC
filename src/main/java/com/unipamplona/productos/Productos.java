package com.unipamplona.productos;

import java.util.Date;

public class Productos {
	private String codigo;
	private String seccion;
	private String nombre;
	private double precio;
	private Date fecha;
	private String importado;
	private String pais;
	
	public Productos(String codigo, String seccion, String nombre, double precio, Date fecha, String importado,
			String pais) {
		this.codigo = codigo;
		this.seccion = seccion;
		this.nombre = nombre;
		this.precio = precio;
		this.fecha = fecha;
		this.importado = importado;
		this.pais = pais;
	}


	public String getCodigo() {
		return codigo;
	}


	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}


	public String getSeccion() {
		return seccion;
	}
	public void setSeccion(String seccion) {
		this.seccion = seccion;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public double getPrecio() {
		return precio;
	}
	public void setPrecio(double precio) {
		this.precio = precio;
	}
	public Date getFecha() {
		return fecha;
	}
	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
	public String getImportado() {
		return importado;
	}
	public void setImportado(String importado) {
		this.importado = importado;
	}
	public String getPais() {
		return pais;
	}
	public void setPais(String pais) {
		this.pais = pais;
	}


	@Override
	public String toString() {
		return "Productos [codigo=" + codigo + ", seccion=" + seccion + ", nombre=" + nombre + ", precio=" + precio
				+ ", fecha=" + fecha + ", importado=" + importado + ", pais=" + pais + "]";
	}
	
	
}
