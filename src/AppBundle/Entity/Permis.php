<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Permis
 *
 * @ORM\Table(name="PERMIS")
 * @ORM\Entity
 */
class Permis
{
    /**
     * @var string
     *
     * @ORM\Column(name="permis", type="string", length=10, nullable=true)
     */
    private $permis;

    /**
     * @var integer
     *
     * @ORM\Column(name="idPermis", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idpermis;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToMany(targetEntity="AppBundle\Entity\Offredemploi", mappedBy="permispermis")
     */
    private $offredemploioe;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToMany(targetEntity="AppBundle\Entity\DemandeurEmploi", inversedBy="permispermis")
     * @ORM\JoinTable(name="permis_has_demandeurdemploi",
     *   joinColumns={
     *     @ORM\JoinColumn(name="PERMIS_idPermis", referencedColumnName="idPermis")
     *   },
     *   inverseJoinColumns={
     *     @ORM\JoinColumn(name="DEMANDEURDEMPLOI_idDE", referencedColumnName="idDE")
     *   }
     * )
     */
    private $demandeurdemploide;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->offredemploioe = new \Doctrine\Common\Collections\ArrayCollection();
        $this->demandeurdemploide = new \Doctrine\Common\Collections\ArrayCollection();
    }


    /**
     * Set permis
     *
     * @param string $permis
     *
     * @return Permis
     */
    public function setPermis($permis)
    {
        $this->permis = $permis;

        return $this;
    }

    /**
     * Get permis
     *
     * @return string
     */
    public function getPermis()
    {
        return $this->permis;
    }

    /**
     * Get idpermis
     *
     * @return integer
     */
    public function getIdpermis()
    {
        return $this->idpermis;
    }

    /**
     * Add offredemploioe
     *
     * @param \AppBundle\Entity\Offredemploi $offredemploioe
     *
     * @return Permis
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

    /**
     * Add demandeurdemploide
     *
     * @param \AppBundle\Entity\DemandeurEmploi $demandeurdemploide
     *
     * @return Permis
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

    public function __toString()
   {
      return strval( $this->getPermis() );
   }
}
