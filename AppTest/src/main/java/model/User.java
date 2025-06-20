package model;

public class User {
private String nom;
private String email;
// constructeur
public User(String nom,String email) {
	this.nom = nom;
	this.email = email;
		
}
//getters nom
public String getNom() {
    return nom;
}
// setter nom
public void setNom(String nom) {
    this.nom = nom;
}
//getter prenom
public String getEmail() {
	return email;
}
// setter prenom
public void setEmail(String email) {
	this.email = email;
}

}