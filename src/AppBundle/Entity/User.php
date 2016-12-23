<?php
namespace AppBundle\Entity; 
 
use Doctrine\ORM\Mapping as ORM; 
 
/** 
 * User 
 * 
 * @ORM\Table(name="USER", indexes={@ORM\Index(name="fk_USER_STATUT1_idx", columns={"STATUT_idStatut"})}) 
 * @ORM\Entity 
 */ 
class User 
{ 
    /** 
     * @var string 
     * 
     * @ORM\Column(name="nomUser", type="string", length=45, nullable=true) 
     */ 
    private $nomuser; 
 
    /** 
     * @var string 
     * 
     * @ORM\Column(name="prenomUser", type="string", length=45, nullable=true) 
     */ 
    private $prenomuser; 
 
    /** 
     * @var string 
     * 
     * @ORM\Column(name="email", type="string", length=255, nullable=true) 
     */ 
    private $email; 
 
    /** 
     * @var string 
     * 
     * @ORM\Column(name="password", type="string", length=255, nullable=true) 
     */ 
    private $password; 
 
    /** 
     * @var string 
     * 
     * @ORM\Column(name="ProfilUser", type="string", length=45, nullable=true) 
     */ 
    private $profiluser; 
 
    /** 
     * @var integer 
     * 
     * @ORM\Column(name="idUser", type="integer") 
     * @ORM\Id 
     * @ORM\GeneratedValue(strategy="IDENTITY") 
     */ 
    private $iduser; 
 
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
     * @ORM\ManyToMany(targetEntity="AppBundle\Entity\DemandeurEmploi", inversedBy="useruser") 
     * @ORM\JoinTable(name="user_has_demandeurdemploi", 
     *   joinColumns={ 
     *     @ORM\JoinColumn(name="USER_idUser", referencedColumnName="idUser") 
     *   }, 
     *   inverseJoinColumns={ 
     *     @ORM\JoinColumn(name="DEMANDEURDEMPLOI_idDE", referencedColumnName="idDE") 
     *   } 
     * ) 
     */ 
    private $demandeurdemploide; 
 
    /** 
     * @var \Doctrine\Common\Collections\Collection 
     * 
     * @ORM\ManyToMany(targetEntity="AppBundle\Entity\Offredemploi", inversedBy="useruser") 
     * @ORM\JoinTable(name="user_has_offredemploi", 
     *   joinColumns={ 
     *     @ORM\JoinColumn(name="USER_idUser", referencedColumnName="idUser") 
     *   }, 
     *   inverseJoinColumns={ 
     *     @ORM\JoinColumn(name="OFFREDEMPLOI_idOE", referencedColumnName="idOE") 
     *   } 
     * ) 
     */ 
    private $offredemploioe; 
 
    /** 
     * Constructor 
     */ 
    public function __construct() 
    { 
        $this->demandeurdemploide = new \Doctrine\Common\Collections\ArrayCollection(); 
        $this->offredemploioe = new \Doctrine\Common\Collections\ArrayCollection(); 
    } 
 
 
    /** 
     * Set nomuser 
     * 
     * @param string $nomuser 
     * 
     * @return User 
     */ 
    public function setNomuser($nomuser) 
    { 
        $this->nomuser = $nomuser; 
 
        return $this; 
    } 
 
    /** 
     * Get nomuser 
     * 
     * @return string 
     */ 
    public function getNomuser() 
    { 
        return $this->nomuser; 
    } 
 
    /** 
     * Set prenomuser 
     * 
     * @param string $prenomuser 
     * 
     * @return User 
     */ 
    public function setPrenomuser($prenomuser) 
    { 
        $this->prenomuser = $prenomuser; 
 
        return $this; 
    } 
 
    /** 
     * Get prenomuser 
     * 
     * @return string 
     */ 
    public function getPrenomuser() 
    { 
        return $this->prenomuser; 
    } 
 
    /** 
     * Set email 
     * 
     * @param string $email 
     * 
     * @return User 
     */ 
    public function setEmail($email) 
    { 
        $this->email = $email; 
 
        return $this; 
    } 
 
    /** 
     * Get email 
     * 
     * @return string 
     */ 
    public function getEmail() 
    { 
        return $this->email; 
    } 
 
    /** 
     * Set password 
     * 
     * @param string $password 
     * 
     * @return User 
     */ 
    public function setPassword($password) 
    { 
        $this->password = $password; 
 
        return $this; 
    } 
 
    /** 
     * Get password 
     * 
     * @return string 
     */ 
    public function getPassword() 
    { 
        return $this->password; 
    } 
 
    /** 
     * Set profiluser 
     * 
     * @param string $profiluser 
     * 
     * @return User 
     */ 
    public function setProfiluser($profiluser) 
    { 
        $this->profiluser = $profiluser; 
 
        return $this; 
    } 
 
    /** 
     * Get profiluser 
     * 
     * @return string 
     */ 
    public function getProfiluser() 
    { 
        return $this->profiluser; 
    } 
 
    /** 
     * Get iduser 
     * 
     * @return integer 
     */ 
    public function getIduser() 
    { 
        return $this->iduser; 
    } 
 
    /** 
     * Set statutstatut 
     * 
     * @param \AppBundle\Entity\Statut $statutstatut 
     * 
     * @return User 
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
     * Add demandeurdemploide 
     * 
     * @param \AppBundle\Entity\DemandeurEmploi $demandeurdemploide 
     * 
     * @return User 
     */ 
    public function addDemandeurdemploide(\AppBundle\Entity\DemandeurEmploi $demandeurdemploide) 
    { 
        $this->demandeurdemploide[] = $demandeurdemploide; 
 
        return $this; 
    } 
 
    /** 
     * Remove demandeurdemploide 
     * 
     * @param \AppBundle\Entity\DemandeurEmploi $demandeurdemploide 
     */ 
    public function removeDemandeurdemploide(\AppBundle\Entity\DemandeurEmploi $demandeurdemploide) 
    { 
        $this->demandeurdemploide->removeElement($demandeurdemploide); 
    } 
 
    /** 
     * Get demandeurdemploide 
     * 
     * @return \Doctrine\Common\Collections\Collection 
     */ 
    public function getDemandeurdemploide() 
    { 
        return $this->demandeurdemploide; 
    } 
 
    /** 
     * Add offredemploioe 
     * 
     * @param \AppBundle\Entity\Offredemploi $offredemploioe 
     * 
     * @return User 
     */ 
    public function addOffredemploioe(\AppBundle\Entity\Offredemploi $offredemploioe) 
    { 
        $this->offredemploioe[] = $offredemploioe; 
 
        return $this; 
    } 
 
    /** 
     * Remove offredemploioe 
     * 
     * @param \AppBundle\Entity\Offredemploi $offredemploioe 
     */ 
    public function removeOffredemploioe(\AppBundle\Entity\Offredemploi $offredemploioe) 
    { 
        $this->offredemploioe->removeElement($offredemploioe); 
    } 
 
    /** 
     * Get offredemploioe 
     * 
     * @return \Doctrine\Common\Collections\Collection 
     */ 
    public function getOffredemploioe() 
    { 
        return $this->offredemploioe; 
    } 
} 