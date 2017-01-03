<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
//use AppBundle\DBAL\Types\CategorieType;
use AppBundle\DBAL\Types\SejourType;
use Fresh\DoctrineEnumBundle\Validator\Constraints as DoctrineAssert;

/**
 * DemandeurEmploi
 *
 * @ORM\Table(name="DEMANDEUR_EMPLOI", indexes={@ORM\Index(name="fk_FLUX_GENRE_idx", columns={"GENRE_idGENRE"}), @ORM\Index(name="fk_FLUX_METIER1_idx", columns={"METIER_idMETIER"}), @ORM\Index(name="fk_FLUX_STATUT1_idx", columns={"STATUT_idStatut"}), @ORM\Index(name="fk_FLUX_NIVEAUETUDE2_idx", columns={"NIVEAUETUDE_idNiveauEtude1"}), @ORM\Index(name="fk_FLUX_ADRESSE1_idx", columns={"ADRESSE_idAdresse"}), @ORM\Index(name="fk_DEMANDEURDEMPLOI_RQTH1_idx", columns={"RQTH_idRQTH"})})
 * @ORM\Entity
 */
class DemandeurEmploi
{
    /**
     * @var string
     *
     * @ORM\Column(name="action", type="string", length=75, nullable=true)
     */
    protected $action;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="date_inscription_DE", type="date", nullable=true)
     */
    protected $dateInscriptionDe;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="date_derniere_modif_DE", type="datetime", nullable=true)
     */
    protected $dateDerniereModifDe;

    /**
     * @var string
     *
     * @ORM\Column(name="photo_DE", type="string", length=255, nullable=true)
     */
    protected $photoDe;

    /**
     * @var string
     *
     * @ORM\Column(name="profilDEcol", type="string", length=45, nullable=true)
     */
    protected $profildecol;

    /**
     * @var string
     *
     * @ORM\Column(name="nom_DE", type="string", length=100, nullable=false)
     */
    protected $nomDe;

    /**
     * @var string
     *
     * @ORM\Column(name="prenom_DE", type="string", length=100, nullable=false)
     */
    protected $prenomDe;

    /**
     * @var string
     *
     * @ORM\Column(name="tel1_DE", type="string", length=10, nullable=false)
     */
    protected $tel1De;

    /**
     * @var string
     *
     * @ORM\Column(name="tel2_DE", type="string", length=10, nullable=true)
     */
    protected $tel2De;

    /**
     * @var string
     *
     * @ORM\Column(name="mail_DE", type="string", length=100, nullable=true)
     */
    protected $mailDe;

    /**
     * @var string
     *
     * @ORM\Column(name="qpv", type="string", length=45, nullable=true)
     */
    protected $qpv;

    /**
     * @var integer
     *
     * @ORM\Column(name="nbr_enfant_DE", type="integer", nullable=true)
     */
    protected $nbrEnfantDe;

    /**
     * @var string
     *
     * @ORM\Column(name="date_naissance", type="string", length=45, nullable=true)
     */
    protected $dateNaissance;

    /**
     * @var string
     *
     * @ORM\Column(name="tranche_age", type="string", length=50, nullable=true)
     */
    protected $trancheAge;

    /**
     * @var string
     *
     * @ORM\Column(name="ville_naissance", type="string", length=50, nullable=true)
     */
    protected $villeNaissance;

    /**
     * @var string
     *
     * @ORM\Column(name="dept_naissance", type="string", length=15, nullable=true)
     */
    protected $deptNaissance;

    /**
     * @var string
     *
     * @ORM\Column(name="pays_naissance", type="string", length=50, nullable=true)
     */
    protected $paysNaissance;

    /**
     * @var string
     *
     * @ORM\Column(name="nationalite_DE", type="string", length=50, nullable=true)
     */
    protected $nationaliteDe;

    /**
     *
     * @ORM\Column(name="categorie_socio", type="CategorieType", nullable=true)
     * @DoctrineAssert\Enum(entity="AppBundle\DBAL\Types\CategorieType")
     */
    protected $categorieSocio;

    /**
     *
     * @ORM\Column(name="autorisation_travail", type="SejourType", nullable=true)
     * @DoctrineAssert\Enum(entity="AppBundle\DBAL\Types\SejourType")
     */
    protected $autorisationTravail;
    
    /**
     *
     * @ORM\Column(name="titre_sejour_DE", type="SejourType", nullable=true)
     * @DoctrineAssert\Enum(entity="AppBundle\DBAL\Types\SejourType")
     */
    protected $titreSejourDe;

    /**
     * @var string
     *
     * @ORM\Column(name="locomotion", type="string", length=45, nullable=true)
     */
    protected $locomotion;

    /**
     * @var string
     *
     * @ORM\Column(name="num_pole_emploi_DE", type="string", length=8, nullable=true)
     */
    protected $numPoleEmploiDe;

    /**
     * @var string
     *
     * @ORM\Column(name="structure_ref", type="string", length=45, nullable=true)
     */
    protected $structureRef;

    /**
     * @var string
     *
     * @ORM\Column(name="allocation", type="string", length=45, nullable=true)
     */
    protected $allocation;

    /**
     * @var string
     *
     * @ORM\Column(name="diplome_pro", type="string", length=45, nullable=true)
     */
    protected $diplomePro;


    /**
     * @var integer
     *
     * @ORM\Column(name="idDE", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    protected $idde;

    /**
     * @var \AppBundle\Entity\Adresse
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Adresse")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="ADRESSE_idAdresse", referencedColumnName="idAdresse")
     * })
     */
    protected $adresseadresse;

    /**
     * @var \AppBundle\Entity\Metier
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Metier")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="METIER_idMETIER", referencedColumnName="idMETIER")
     * })
     */
    protected $metiermetier;

    /**
     * @var \AppBundle\Entity\Genre
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Genre")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="GENRE_idGENRE", referencedColumnName="idGENRE")
     * })
     */
    protected $genregenre;

    /**
     * @var \AppBundle\Entity\Niveauetude
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Niveauetude")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="NIVEAUETUDE_idNiveauEtude1", referencedColumnName="idNiveauEtude")
     * })
     */
    protected $niveauetudeniveauetude1;

    /**
     * @var \AppBundle\Entity\Statut
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Statut")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="STATUT_idStatut", referencedColumnName="idStatut")
     * })
     */
    protected $statutstatut;

    /**
     * @var \AppBundle\Entity\Rqth
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Rqth")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="RQTH_idRQTH", referencedColumnName="idRQTH")
     * })
     */
    protected $rqthrqth;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToMany(targetEntity="AppBundle\Entity\Permis", mappedBy="demandeurdemploide")
     */
    protected $permispermis;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToMany(targetEntity="AppBundle\Entity\User", mappedBy="demandeurdemploide")
     */
    protected $useruser;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->permispermis = new \Doctrine\Common\Collections\ArrayCollection();
        $this->useruser = new \Doctrine\Common\Collections\ArrayCollection();
    }


    /**
     * Set action
     *
     * @param string $action
     *
     * @return DemandeurEmploi
     */
    public function setAction($action)
    {
        $this->action = $action;

        return $this;
    }

    /**
     * Get action
     *
     * @return string
     */
    public function getAction()
    {
        return $this->action;
    }

    /**
     * Set dateInscriptionDe
     *
     * @param \DateTime $dateInscriptionDe
     *
     * @return DemandeurEmploi
     */
    public function setDateInscriptionDe($dateInscriptionDe)
    {
        $this->dateInscriptionDe = $dateInscriptionDe;

        return $this;
    }

    /**
     * Get dateInscriptionDe
     *
     * @return \DateTime
     */
    public function getDateInscriptionDe()
    {
        return $this->dateInscriptionDe;
    }

    /**
     * Set dateDerniereModifDe
     *
     * @param \DateTime $dateDerniereModifDe
     *
     * @return DemandeurEmploi
     */
    public function setDateDerniereModifDe($dateDerniereModifDe)
    {
        $this->dateDerniereModifDe = $dateDerniereModifDe;

        return $this;
    }

    /**
     * Get dateDerniereModifDe
     *
     * @return \DateTime
     */
    public function getDateDerniereModifDe()
    {
        return $this->dateDerniereModifDe;
    }

    /**
     * Set photoDe
     *
     * @param string $photoDe
     *
     * @return DemandeurEmploi
     */
    public function setPhotoDe($photoDe)
    {
        $this->photoDe = $photoDe;

        return $this;
    }

    /**
     * Get photoDe
     *
     * @return string
     */
    public function getPhotoDe()
    {
        return $this->photoDe;
    }

    /**
     * Set profildecol
     *
     * @param string $profildecol
     *
     * @return DemandeurEmploi
     */
    public function setProfildecol($profildecol)
    {
        $this->profildecol = $profildecol;

        return $this;
    }

    /**
     * Get profildecol
     *
     * @return string
     */
    public function getProfildecol()
    {
        return $this->profildecol;
    }

    /**
     * Set nomDe
     *
     * @param string $nomDe
     *
     * @return DemandeurEmploi
     */
    public function setNomDe($nomDe)
    {
        $this->nomDe = $nomDe;

        return $this;
    }

    /**
     * Get nomDe
     *
     * @return string
     */
    public function getNomDe()
    {
        return $this->nomDe;
    }

    /**
     * Set prenomDe
     *
     * @param string $prenomDe
     *
     * @return DemandeurEmploi
     */
    public function setPrenomDe($prenomDe)
    {
        $this->prenomDe = $prenomDe;

        return $this;
    }

    /**
     * Get prenomDe
     *
     * @return string
     */
    public function getPrenomDe()
    {
        return $this->prenomDe;
    }

    /**
     * Set tel1De
     *
     * @param string $tel1De
     *
     * @return DemandeurEmploi
     */
    public function setTel1De($tel1De)
    {
        $this->tel1De = $tel1De;

        return $this;
    }

    /**
     * Get tel1De
     *
     * @return string
     */
    public function getTel1De()
    {
        return $this->tel1De;
    }

    /**
     * Set tel2De
     *
     * @param string $tel2De
     *
     * @return DemandeurEmploi
     */
    public function setTel2De($tel2De)
    {
        $this->tel2De = $tel2De;

        return $this;
    }

    /**
     * Get tel2De
     *
     * @return string
     */
    public function getTel2De()
    {
        return $this->tel2De;
    }

    /**
     * Set mailDe
     *
     * @param string $mailDe
     *
     * @return DemandeurEmploi
     */
    public function setMailDe($mailDe)
    {
        $this->mailDe = $mailDe;

        return $this;
    }

    /**
     * Get mailDe
     *
     * @return string
     */
    public function getMailDe()
    {
        return $this->mailDe;
    }

    /**
     * Set qpv
     *
     * @param string $qpv
     *
     * @return DemandeurEmploi
     */
    public function setQpv($qpv)
    {
        $this->qpv = $qpv;

        return $this;
    }

    /**
     * Get qpv
     *
     * @return string
     */
    public function getQpv()
    {
        return $this->qpv;
    }

    /**
     * Set nbrEnfantDe
     *
     * @param integer $nbrEnfantDe
     *
     * @return DemandeurEmploi
     */
    public function setNbrEnfantDe($nbrEnfantDe)
    {
        $this->nbrEnfantDe = $nbrEnfantDe;

        return $this;
    }

    /**
     * Get nbrEnfantDe
     *
     * @return integer
     */
    public function getNbrEnfantDe()
    {
        return $this->nbrEnfantDe;
    }

    /**
     * Set dateNaissance
     *
     * @param string $dateNaissance
     *
     * @return DemandeurEmploi
     */
    public function setDateNaissance($dateNaissance)
    {
        $this->dateNaissance = $dateNaissance;

        return $this;
    }

    /**
     * Get dateNaissance
     *
     * @return string
     */
    public function getDateNaissance()
    {
        return $this->dateNaissance;
    }

    /**
     * Set trancheAge
     *
     * @param string $trancheAge
     *
     * @return DemandeurEmploi
     */
    public function setTrancheAge($trancheAge)
    {
        $this->trancheAge = $trancheAge;

        return $this;
    }

    /**
     * Get trancheAge
     *
     * @return string
     */
    public function getTrancheAge()
    {
        return $this->trancheAge;
    }

    /**
     * Set villeNaissance
     *
     * @param string $villeNaissance
     *
     * @return DemandeurEmploi
     */
    public function setVilleNaissance($villeNaissance)
    {
        $this->villeNaissance = $villeNaissance;

        return $this;
    }

    /**
     * Get villeNaissance
     *
     * @return string
     */
    public function getVilleNaissance()
    {
        return $this->villeNaissance;
    }

    /**
     * Set deptNaissance
     *
     * @param string $deptNaissance
     *
     * @return DemandeurEmploi
     */
    public function setDeptNaissance($deptNaissance)
    {
        $this->deptNaissance = $deptNaissance;

        return $this;
    }

    /**
     * Get deptNaissance
     *
     * @return string
     */
    public function getDeptNaissance()
    {
        return $this->deptNaissance;
    }

    /**
     * Set paysNaissance
     *
     * @param string $paysNaissance
     *
     * @return DemandeurEmploi
     */
    public function setPaysNaissance($paysNaissance)
    {
        $this->paysNaissance = $paysNaissance;

        return $this;
    }

    /**
     * Get paysNaissance
     *
     * @return string
     */
    public function getPaysNaissance()
    {
        return $this->paysNaissance;
    }

    /**
     * Set nationaliteDe
     *
     * @param string $nationaliteDe
     *
     * @return DemandeurEmploi
     */
    public function setNationaliteDe($nationaliteDe)
    {
        $this->nationaliteDe = $nationaliteDe;

        return $this;
    }

    /**
     * Get nationaliteDe
     *
     * @return string
     */
    public function getNationaliteDe()
    {
        return $this->nationaliteDe;
    }

    /**
     * Set titreSejourDe
     *
     * @param string $titreSejourDe
     *
     * @return DemandeurEmploi
     */
    public function setTitreSejourDe($titreSejourDe)
    {
        $this->titreSejourDe = $titreSejourDe;

        return $this;
    }

    /**
     * Get titreSejourDe
     *
     * @return string
     */
    public function getTitreSejourDe()
    {
        return $this->titreSejourDe;
    }

    /**
     * Set autorisationTravail
     *
     * @param string $autorisationTravail
     *
     * @return DemandeurEmploi
     */
    public function setAutorisationTravail($autorisationTravail)
    {
        $this->autorisationTravail = $autorisationTravail;

        return $this;
    }

    /**
     * Get autorisationTravail
     *
     * @return string
     */
    public function getAutorisationTravail()
    {
        return $this->autorisationTravail;
    }

    /**
     * Set locomotion
     *
     * @param string $locomotion
     *
     * @return DemandeurEmploi
     */
    public function setLocomotion($locomotion)
    {
        $this->locomotion = $locomotion;

        return $this;
    }

    /**
     * Get locomotion
     *
     * @return string
     */
    public function getLocomotion()
    {
        return $this->locomotion;
    }

    /**
     * Set numPoleEmploiDe
     *
     * @param string $numPoleEmploiDe
     *
     * @return DemandeurEmploi
     */
    public function setNumPoleEmploiDe($numPoleEmploiDe)
    {
        $this->numPoleEmploiDe = $numPoleEmploiDe;

        return $this;
    }

    /**
     * Get numPoleEmploiDe
     *
     * @return string
     */
    public function getNumPoleEmploiDe()
    {
        return $this->numPoleEmploiDe;
    }

    /**
     * Set structureRef
     *
     * @param string $structureRef
     *
     * @return DemandeurEmploi
     */
    public function setStructureRef($structureRef)
    {
        $this->structureRef = $structureRef;

        return $this;
    }

    /**
     * Get structureRef
     *
     * @return string
     */
    public function getStructureRef()
    {
        return $this->structureRef;
    }

    /**
     * Set allocation
     *
     * @param string $allocation
     *
     * @return DemandeurEmploi
     */
    public function setAllocation($allocation)
    {
        $this->allocation = $allocation;

        return $this;
    }

    /**
     * Get allocation
     *
     * @return string
     */
    public function getAllocation()
    {
        return $this->allocation;
    }

    /**
     * Set diplomePro
     *
     * @param string $diplomePro
     *
     * @return DemandeurEmploi
     */
    public function setDiplomePro($diplomePro)
    {
        $this->diplomePro = $diplomePro;

        return $this;
    }

    /**
     * Get diplomePro
     *
     * @return string
     */
    public function getDiplomePro()
    {
        return $this->diplomePro;
    }

    /**
     * Set categorieSocio
     *
     * @param string $categorieSocio
     *
     * @return DemandeurEmploi
     */
    public function setCategorieSocio($categorieSocio)
    {
        $this->categorieSocio = $categorieSocio;

        return $this;
    }

    /**
     * Get categorieSocio
     *
     * @return string
     */
    public function getCategorieSocio()
    {
        return $this->categorieSocio;
    }

    /**
     * Get idde
     *
     * @return integer
     */
    public function getIdde()
    {
        return $this->idde;
    }

    /**
     * Set adresseadresse
     *
     * @param \AppBundle\Entity\Adresse $adresseadresse
     *
     * @return DemandeurEmploi
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
     * Set metiermetier
     *
     * @param \AppBundle\Entity\Metier $metiermetier
     *
     * @return DemandeurEmploi
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
     * Set genregenre
     *
     * @param \AppBundle\Entity\Genre $genregenre
     *
     * @return DemandeurEmploi
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

    /**
     * Set niveauetudeniveauetude1
     *
     * @param \AppBundle\Entity\Niveauetude $niveauetudeniveauetude1
     *
     * @return DemandeurEmploi
     */
    public function setNiveauetudeniveauetude1(\AppBundle\Entity\Niveauetude $niveauetudeniveauetude1 = null)
    {
        $this->niveauetudeniveauetude1 = $niveauetudeniveauetude1;

        return $this;
    }

    /**
     * Get niveauetudeniveauetude1
     *
     * @return \AppBundle\Entity\Niveauetude
     */
    public function getNiveauetudeniveauetude1()
    {
        return $this->niveauetudeniveauetude1;
    }

    /**
     * Set statutstatut
     *
     * @param \AppBundle\Entity\Statut $statutstatut
     *
     * @return DemandeurEmploi
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
     * Set rqthrqth
     *
     * @param \AppBundle\Entity\Rqth $rqthrqth
     *
     * @return DemandeurEmploi
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
     * Add permispermi
     *
     * @param \AppBundle\Entity\Permis $permispermi
     *
     * @return DemandeurEmploi
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
     * @return DemandeurEmploi
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
