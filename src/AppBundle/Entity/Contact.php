<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Contact
 *
 * @ORM\Table(name="CONTACT", indexes={@ORM\Index(name="fk_CONTACT_ENTREPRISE1_idx", columns={"ENTREPRISE_idEntreprise"}), @ORM\Index(name="fk_CONTACT_GENRE1_idx", columns={"GENRE_idGENRE"})})
 * @ORM\Entity
 */
class Contact
{
    /**
     * @var string
     *
     * @ORM\Column(name="NomContact", type="string", length=45, nullable=true)
     */
    private $nomcontact;

    /**
     * @var string
     *
     * @ORM\Column(name="prenomContact", type="string", length=45, nullable=true)
     */
    private $prenomcontact;

    /**
     * @var string
     *
     * @ORM\Column(name="mailContact", type="string", length=45, nullable=true)
     */
    private $mailcontact;

    /**
     * @var string
     *
     * @ORM\Column(name="telContact", type="string", length=45, nullable=true)
     */
    private $telcontact;

    /**
     * @var integer
     *
     * @ORM\Column(name="idContact", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     */
    private $idcontact;

    /**
     * @var \AppBundle\Entity\Entreprise
     *
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     * @ORM\OneToOne(targetEntity="AppBundle\Entity\Entreprise")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="ENTREPRISE_idEntreprise", referencedColumnName="idEntreprise")
     * })
     */
    private $entrepriseentreprise;

    /**
     * @var \AppBundle\Entity\Genre
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Genre")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="GENRE_idGENRE", referencedColumnName="idGENRE")
     * })
     */
    private $genregenre;



    /**
     * Set nomcontact
     *
     * @param string $nomcontact
     *
     * @return Contact
     */
    public function setNomcontact($nomcontact)
    {
        $this->nomcontact = $nomcontact;

        return $this;
    }

    /**
     * Get nomcontact
     *
     * @return string
     */
    public function getNomcontact()
    {
        return $this->nomcontact;
    }

    /**
     * Set prenomcontact
     *
     * @param string $prenomcontact
     *
     * @return Contact
     */
    public function setPrenomcontact($prenomcontact)
    {
        $this->prenomcontact = $prenomcontact;

        return $this;
    }

    /**
     * Get prenomcontact
     *
     * @return string
     */
    public function getPrenomcontact()
    {
        return $this->prenomcontact;
    }

    /**
     * Set mailcontact
     *
     * @param string $mailcontact
     *
     * @return Contact
     */
    public function setMailcontact($mailcontact)
    {
        $this->mailcontact = $mailcontact;

        return $this;
    }

    /**
     * Get mailcontact
     *
     * @return string
     */
    public function getMailcontact()
    {
        return $this->mailcontact;
    }

    /**
     * Set telcontact
     *
     * @param string $telcontact
     *
     * @return Contact
     */
    public function setTelcontact($telcontact)
    {
        $this->telcontact = $telcontact;

        return $this;
    }

    /**
     * Get telcontact
     *
     * @return string
     */
    public function getTelcontact()
    {
        return $this->telcontact;
    }

    /**
     * Set idcontact
     *
     * @param integer $idcontact
     *
     * @return Contact
     */
    public function setIdcontact($idcontact)
    {
        $this->idcontact = $idcontact;

        return $this;
    }

    /**
     * Get idcontact
     *
     * @return integer
     */
    public function getIdcontact()
    {
        return $this->idcontact;
    }

    /**
     * Set entrepriseentreprise
     *
     * @param \AppBundle\Entity\Entreprise $entrepriseentreprise
     *
     * @return Contact
     */
    public function setEntrepriseentreprise(\AppBundle\Entity\Entreprise $entrepriseentreprise)
    {
        $this->entrepriseentreprise = $entrepriseentreprise;

        return $this;
    }

    /**
     * Get entrepriseentreprise
     *
     * @return \AppBundle\Entity\Entreprise
     */
    public function getEntrepriseentreprise()
    {
        return $this->entrepriseentreprise;
    }

    /**
     * Set genregenre
     *
     * @param \AppBundle\Entity\Genre $genregenre
     *
     * @return Contact
     */
    public function setGenregenre(\AppBundle\Entity\Genre $genregenre = null)
    {
        $this->genregenre = $genregenre;

        return $this;
    }

    /**
     * Get genregenre
     *
     * @return \AppBundle\Entity\Genre
     */
    public function getGenregenre()
    {
        return $this->genregenre;
    }
}
