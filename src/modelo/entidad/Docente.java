package modelo.entidad;

import java.io.Serializable;
import javax.persistence.*;

@Entity
public class Docente implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "cedula")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private String cedula;
	
	@Column(name = "constrasena")
	private String contraseña;
	
	@Column(name = "nombre")
	private String nombre;
	
	@Column(name = "apellido")
	private String apellido;
	
	public Docente() {}

	public Docente(String cedula, String contraseña, String nombre, String apellido) {
		this.cedula = cedula;
		this.contraseña = contraseña;
		this.nombre = nombre;
		this.apellido = apellido;
	}

	public String getCedula() {
		return cedula;
	}

	public void setCedula(String cedula) {
		this.cedula = cedula;
	}

	public String getContraseña() {
		return contraseña;
	}

	public void setContraseña(String contraseña) {
		this.contraseña = contraseña;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((apellido == null) ? 0 : apellido.hashCode());
		result = prime * result + ((cedula == null) ? 0 : cedula.hashCode());
		result = prime * result + ((contraseña == null) ? 0 : contraseña.hashCode());
		result = prime * result + ((nombre == null) ? 0 : nombre.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (obj instanceof Docente) {
			Docente docente = (Docente) obj;
			return docente.getCedula().equals(this.cedula);
		}
		return false;
	}

	@Override
	public String toString() {
		return "Docente [cedula=" + cedula + ", nombre=" + nombre + " apellido="
				+ apellido + "]";
	}
}
