<?php

namespace AppBundle\Entity;

class User 
{
	private $nom;
	private $prenom;
	private $id;

	public function __construct($nom, $prenom) {
		$this->nom = $nom;
		$this->prenom = $prenom;
	}

	public function getNom() {
		return $this->nom;
	}

	public function setNom($nom) {
		$this->nom = $nom;
		return $this;
	}

	public function getPrenom() {
		return $this->prenom;
	}

	public function setPrenom($prenom) {
		$this->prenom = $prenom;
		return $this;
	}
	public function getId() {
        	return $this->id;
    	}
}
