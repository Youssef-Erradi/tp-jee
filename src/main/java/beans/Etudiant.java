package beans;

import java.io.Serializable;
import java.util.Objects;

public class Etudiant implements Serializable{
	private static final long serialVersionUID = 7339485522350639569L;
	
	private String nom, prenom;

	public Etudiant() {}
	
	public Etudiant(String nom, String prenom) {
		this.nom = nom;
		this.prenom = prenom;
	}
	
	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	@Override
	public int hashCode() {
		return Objects.hash(nom, prenom);
	}

	@Override
	public boolean equals( Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Etudiant other = (Etudiant) obj;
		return Objects.equals(nom, other.nom) && Objects.equals(prenom, other.prenom);
	}

	@Override
	public String toString() {
		return nom + " " + prenom;
	}	
	
}
