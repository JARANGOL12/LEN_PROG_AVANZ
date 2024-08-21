package dao.impl;

import java.util.List;

import models.Sucursal;

public interface SucursalDao {
	public List<Sucursal> listar();
	public Sucursal obtenerSucursal(Integer id);
	
}
