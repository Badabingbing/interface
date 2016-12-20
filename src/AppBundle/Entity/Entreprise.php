<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Entreprise
 *
 * @ORM\Table(name="ENTREPRISE", indexes={@ORM\Index(name="fk_ENTREPRISE_ADRESSE1_idx", columns={"ADRESSE_idAdresse"}), @ORM\Index(name="fk_ENTREPRISE_OFFREDEMPLOI1_idx", columns={"OFFREDEMPLOI_idOE"})})
 * @ORM\Entity
 */
class Entreprise
{
    /**
     * @var string
     *
     * @ORM\Column(name="RaisonSociale", type="string", length=45, nullable=true)
     */
    private $raisonsociale;

    /**
     * @var string
     *
     * @ORM\Column(name="nombreOE", type="string", length=45, nullable=true)
     */
    private $nombreoe;

    /**
     * @var integer
     *
     * @ORM\Column(name="idEntreprise", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $identreprise;

    /**
     * @var \AppBundle\Entity\Adresse
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Adresse")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="ADRESSE_idAdresse", referencedColumnName="idAdresse")
     * })
     */
    private $adresseadresse;

    /**
     * @var \AppBundle\Entity\Offredemploi
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Offredemploi")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="OFFREDEMPLOI_idOE", referencedColumnName="idOE")
     * })
     */
    private $offredemploioe;



    /**
     * Set raisonsociale
     *
     * @param string $raisonsociale
     *
     * @return Entreprise
     */
    public function setRaisonsociale($raisonsociale)
    {
        $this->raisonsociale = $raisonsociale;

        return $this;
    }

    /**
     * Get raisonsociale
     *
     * @return string
     */
    public function getRaisonsociale()
    {
        return $this->raisonsociale;
    }

    /**
     * Set nombreoe
     *
     * @param string $nombreoe
     *
     * @return Entreprise
     */
    public function setNombreoe($nombreoe)
    {
        $this->nombreoe = $nombreoe;

        return $this;
    }

    /**
     * Get nombreoe
     *
     * @return string
     */
    public function getNombreoe()
    {
        return $this->nombreoe;
    }

    /**
     * Get identreprise
     *
     * @return integer
     */
    public function getIdentreprise()
    {
        return $this->identreprise;
    }

    /**
     * Set adresseadresse
     *
     * @param \AppBundle\Entity\Adresse $adresseadresse
     *
     * @return Entreprise
     */
    public function setAdresseadresse(\AppBundle\Entity\Adresse $adresseadresse = null)
    {
        $this->adresseadresse = $adresseadresse;

        return $this;
    }

    /**
     * Get adresseadresse
     *
     * @return \AppBundle\Entity\Adresse
     */
    public function getAdresseadresse()
    {
        return $this->adresseadresse;
    }

    /**
     * Set offredemploioe
     *
     * @param \AppBundle\Entity\Offredemploi $offredemploioe
     *
     * @return Entreprise
     */
    public function setOffredemploioe(\AppBundle\Entity\Offredemploi $offredemploioe = null)
    {
        $this->offredemploioe = $offredemploioe;

        return $this;
    }

    /**
     * Get offredemploioe
     *
     * @return \AppBundle\Entity\Offredemploi
     */
    public function getOffredemploioe()
    {
        return $this->offredemploioe;
    }
}
