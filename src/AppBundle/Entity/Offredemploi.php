<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Offredemploi
 *
 * @ORM\Table(name="OFFREDEMPLOI", indexes={@ORM\Index(name="fk_OFFREDEMPLOI_STATUT1_idx", columns={"STATUT_idStatut"}), @ORM\Index(name="fk_OFFREDEMPLOI_METIER1_idx", columns={"METIER_idMETIER"}), @ORM\Index(name="fk_OFFREDEMPLOI_RQTH1_idx", columns={"RQTH_idRQTH"}), @ORM\Index(name="fk_OFFREDEMPLOI_NIVEAUETUDE1_idx", columns={"NIVEAUETUDE_idNiveauEtude"})})
 * @ORM\Entity
 */
class Offredemploi
{
    /**
     * @var \DateTime
     *
     * @ORM\Column(name="DateSaisieOE", type="date", nullable=true)
     */
    private $datesaisieoe;

    /**
     * @var string
     *
     * @ORM\Column(name="DebutOE", type="string", length=45, nullable=true)
     */
    private $debutoe;

    /**
     * @var integer
     *
     * @ORM\Column(name="DureeChiffreOE", type="integer", nullable=true)
     */
    private $dureechiffreoe;

    /**
     * @var string
     *
     * @ORM\Column(name="DureeTempsOE", type="string", length=45, nullable=true)
     */
    private $dureetempsoe;

    /**
     * @var string
     *
     * @ORM\Column(name="Horaire", type="string", length=45, nullable=true)
     */
    private $horaire;

    /**
     * @var string
     *
     * @ORM\Column(name="Remuneration", type="string", length=45, nullable=true)
     */
    private $remuneration;

    /**
     * @var string
     *
     * @ORM\Column(name="Descriptif", type="string", length=225, nullable=true)
     */
    private $descriptif;

    /**
     * @var integer
     *
     * @ORM\Column(name="TYPECONTRAT_idTypeContrat", type="integer", nullable=false)
     */
    private $typecontratIdtypecontrat;

    /**
     * @var integer
     *
     * @ORM\Column(name="FICHEOFFRE_idFicheOffre", type="integer", nullable=false)
     */
    private $ficheoffreIdficheoffre;

    /**
     * @var string
     *
     * @ORM\Column(name="TypeContrat", type="string", length=45, nullable=true)
     */
    private $typecontrat;

    /**
     * @var string
     *
     * @ORM\Column(name="LieuTravail", type="string", length=45, nullable=true)
     */
    private $lieutravail;

    /**
     * @var integer
     *
     * @ORM\Column(name="idOE", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idoe;

    /**
     * @var \AppBundle\Entity\Metier
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Metier")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="METIER_idMETIER", referencedColumnName="idMETIER")
     * })
     */
    private $metiermetier;

    /**
     * @var \AppBundle\Entity\Niveauetude
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Niveauetude")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="NIVEAUETUDE_idNiveauEtude", referencedColumnName="idNiveauEtude")
     * })
     */
    private $niveauetudeniveauetude;

    /**
     * @var \AppBundle\Entity\Rqth
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Rqth")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="RQTH_idRQTH", referencedColumnName="idRQTH")
     * })
     */
    private $rqthrqth;

    /**
     * @var \AppBundle\Entity\Statut
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Statut")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="STATUT_idStatut", referencedColumnName="idStatut")
     * })
     */
    private $statutstatut;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToMany(targetEntity="AppBundle\Entity\Permis", inversedBy="offredemploioe")
     * @ORM\JoinTable(name="offredemploi_has_permis",
     *   joinColumns={
     *     @ORM\JoinColumn(name="OFFREDEMPLOI_idOE", referencedColumnName="idOE")
     *   },
     *   inverseJoinColumns={
     *     @ORM\JoinColumn(name="PERMIS_idPermis", referencedColumnName="idPermis")
     *   }
     * )
     */
    private $permispermis;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToMany(targetEntity="AppBundle\Entity\User", mappedBy="offredemploioe")
     */
    private $useruser;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->permispermis = new \Doctrine\Common\Collections\ArrayCollection();
        $this->useruser = new \Doctrine\Common\Collections\ArrayCollection();
    }


    /**
     * Set datesaisieoe
     *
     * @param \DateTime $datesaisieoe
     *
     * @return Offredemploi
     */
    public function setDatesaisieoe($datesaisieoe)
    {
        $this->datesaisieoe = $datesaisieoe;

        return $this;
    }

    /**
     * Get datesaisieoe
     *
     * @return \DateTime
     */
    public function getDatesaisieoe()
    {
        return $this->datesaisieoe;
    }

    /**
     * Set debutoe
     *
     * @param string $debutoe
     *
     * @return Offredemploi
     */
    public function setDebutoe($debutoe)
    {
        $this->debutoe = $debutoe;

        return $this;
    }

    /**
     * Get debutoe
     *
     * @return string
     */
    public function getDebutoe()
    {
        return $this->debutoe;
    }

    /**
     * Set dureechiffreoe
     *
     * @param integer $dureechiffreoe
     *
     * @return Offredemploi
     */
    public function setDureechiffreoe($dureechiffreoe)
    {
        $this->dureechiffreoe = $dureechiffreoe;

        return $this;
    }

    /**
     * Get dureechiffreoe
     *
     * @return integer
     */
    public function getDureechiffreoe()
    {
        return $this->dureechiffreoe;
    }

    /**
     * Set dureetempsoe
     *
     * @param string $dureetempsoe
     *
     * @return Offredemploi
     */
    public function setDureetempsoe($dureetempsoe)
    {
        $this->dureetempsoe = $dureetempsoe;

        return $this;
    }

    /**
     * Get dureetempsoe
     *
     * @return string
     */
    public function getDureetempsoe()
    {
        return $this->dureetempsoe;
    }

    /**
     * Set horaire
     *
     * @param string $horaire
     *
     * @return Offredemploi
     */
    public function setHoraire($horaire)
    {
        $this->horaire = $horaire;

        return $this;
    }

    /**
     * Get horaire
     *
     * @return string
     */
    public function getHoraire()
    {
        return $this->horaire;
    }

    /**
     * Set remuneration
     *
     * @param string $remuneration
     *
     * @return Offredemploi
     */
    public function setRemuneration($remuneration)
    {
        $this->remuneration = $remuneration;

        return $this;
    }

    /**
     * Get remuneration
     *
     * @return string
     */
    public function getRemuneration()
    {
        return $this->remuneration;
    }

    /**
     * Set descriptif
     *
     * @param string $descriptif
     *
     * @return Offredemploi
     */
    public function setDescriptif($descriptif)
    {
        $this->descriptif = $descriptif;

        return $this;
    }

    /**
     * Get descriptif
     *
     * @return string
     */
    public function getDescriptif()
    {
        return $this->descriptif;
    }

    /**
     * Set typecontratIdtypecontrat
     *
     * @param integer $typecontratIdtypecontrat
     *
     * @return Offredemploi
     */
    public function setTypecontratIdtypecontrat($typecontratIdtypecontrat)
    {
        $this->typecontratIdtypecontrat = $typecontratIdtypecontrat;

        return $this;
    }

    /**
     * Get typecontratIdtypecontrat
     *
     * @return integer
     */
    public function getTypecontratIdtypecontrat()
    {
        return $this->typecontratIdtypecontrat;
    }

    /**
     * Set ficheoffreIdficheoffre
     *
     * @param integer $ficheoffreIdficheoffre
     *
     * @return Offredemploi
     */
    public function setFicheoffreIdficheoffre($ficheoffreIdficheoffre)
    {
        $this->ficheoffreIdficheoffre = $ficheoffreIdficheoffre;

        return $this;
    }

    /**
     * Get ficheoffreIdficheoffre
     *
     * @return integer
     */
    public function getFicheoffreIdficheoffre()
    {
        return $this->ficheoffreIdficheoffre;
    }

    /**
     * Set typecontrat
     *
     * @param string $typecontrat
     *
     * @return Offredemploi
     */
    public function setTypecontrat($typecontrat)
    {
        $this->typecontrat = $typecontrat;

        return $this;
    }

    /**
     * Get typecontrat
     *
     * @return string
     */
    public function getTypecontrat()
    {
        return $this->typecontrat;
    }

    /**
     * Set lieutravail
     *
     * @param string $lieutravail
     *
     * @return Offredemploi
     */
    public function setLieutravail($lieutravail)
    {
        $this->lieutravail = $lieutravail;

        return $this;
    }

    /**
     * Get lieutravail
     *
     * @return string
     */
    public function getLieutravail()
    {
        return $this->lieutravail;
    }

    /**
     * Get idoe
     *
     * @return integer
     */
    public function getIdoe()
    {
        return $this->idoe;
    }

    /**
     * Set metiermetier
     *
     * @param \AppBundle\Entity\Metier $metiermetier
     *
     * @return Offredemploi
     */
    public function setMetiermetier(\AppBundle\Entity\Metier $metiermetier = null)
    {
        $this->metiermetier = $metiermetier;

        return $this;
    }

    /**
     * Get metiermetier
     *
     * @return \AppBundle\Entity\Metier
     */
    public function getMetiermetier()
    {
        return $this->metiermetier;
    }

    /**
     * Set niveauetudeniveauetude
     *
     * @param \AppBundle\Entity\Niveauetude $niveauetudeniveauetude
     *
     * @return Offredemploi
     */
    public function setNiveauetudeniveauetude(\AppBundle\Entity\Niveauetude $niveauetudeniveauetude = null)
    {
        $this->niveauetudeniveauetude = $niveauetudeniveauetude;

        return $this;
    }

    /**
     * Get niveauetudeniveauetude
     *
     * @return \AppBundle\Entity\Niveauetude
     */
    public function getNiveauetudeniveauetude()
    {
        return $this->niveauetudeniveauetude;
    }

    /**
     * Set rqthrqth
     *
     * @param \AppBundle\Entity\Rqth $rqthrqth
     *
     * @return Offredemploi
     */
    public function setRqthrqth(\AppBundle\Entity\Rqth $rqthrqth = null)
    {
        $this->rqthrqth = $rqthrqth;

        return $this;
    }

    /**
     * Get rqthrqth
     *
     * @return \AppBundle\Entity\Rqth
     */
    public function getRqthrqth()
    {
        return $this->rqthrqth;
    }

    /**
     * Set statutstatut
     *
     * @param \AppBundle\Entity\Statut $statutstatut
     *
     * @return Offredemploi
     */
    public function setStatutstatut(\AppBundle\Entity\Statut $statutstatut = null)
    {
        $this->statutstatut = $statutstatut;

        return $this;
    }

    /**
     * Get statutstatut
     *
     * @return \AppBundle\Entity\Statut
     */
    public function getStatutstatut()
    {
        return $this->statutstatut;
    }

    /**
     * Add permispermi
     *
     * @param \AppBundle\Entity\Permis $permispermi
     *
     * @return Offredemploi
     */
    public function addPermispermi(\AppBundle\Entity\Permis $permispermi)
    {
        $this->permispermis[] = $permispermi;

        return $this;
    }

    /**
     * Remove permispermi
     *
     * @param \AppBundle\Entity\Permis $permispermi
     */
    public function removePermispermi(\AppBundle\Entity\Permis $permispermi)
    {
        $this->permispermis->removeElement($permispermi);
    }

    /**
     * Get permispermis
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getPermispermis()
    {
        return $this->permispermis;
    }

    /**
     * Add useruser
     *
     * @param \AppBundle\Entity\User $useruser
     *
     * @return Offredemploi
     */
    public function addUseruser(\AppBundle\Entity\User $useruser)
    {
        $this->useruser[] = $useruser;

        return $this;
    }

    /**
     * Remove useruser
     *
     * @param \AppBundle\Entity\User $useruser
     */
    public function removeUseruser(\AppBundle\Entity\User $useruser)
    {
        $this->useruser->removeElement($useruser);
    }

    /**
     * Get useruser
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getUseruser()
    {
        return $this->useruser;
    }
}
