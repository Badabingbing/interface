<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Document
 *
 * @ORM\Table(name="DOCUMENT", indexes={@ORM\Index(name="fk_DOCUMENT_OFFREDEMPLOI1_idx", columns={"OFFREDEMPLOI_idOE"}), @ORM\Index(name="fk_DOCUMENT_DEMANDEUR_EMPLOI1_idx", columns={"DEMANDEUR_EMPLOI_idDE"})})
 * @ORM\Entity
 */
class Document
{
    /**
     * @var string
     *
     * @ORM\Column(name="document", type="string", length=45, nullable=true)
     */
    private $document;

    /**
     * @var integer
     *
     * @ORM\Column(name="idDocuement", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $iddocuement;

    /**
     * @var \AppBundle\Entity\DemandeurEmploi
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\DemandeurEmploi")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="DEMANDEUR_EMPLOI_idDE", referencedColumnName="idDE")
     * })
     */
    private $demandeurEmploide;

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
     * Set document
     *
     * @param string $document
     *
     * @return Document
     */
    public function setDocument($document)
    {
        $this->document = $document;

        return $this;
    }

    /**
     * Get document
     *
     * @return string
     */
    public function getDocument()
    {
        return $this->document;
    }

    /**
     * Get iddocuement
     *
     * @return integer
     */
    public function getIddocuement()
    {
        return $this->iddocuement;
    }

    /**
     * Set demandeurEmploide
     *
     * @param \AppBundle\Entity\DemandeurEmploi $demandeurEmploide
     *
     * @return Document
     */
    public function setDemandeurEmploide(\AppBundle\Entity\DemandeurEmploi $demandeurEmploide = null)
    {
        $this->demandeurEmploide = $demandeurEmploide;

        return $this;
    }

    /**
     * Get demandeurEmploide
     *
     * @return \AppBundle\Entity\DemandeurEmploi
     */
    public function getDemandeurEmploide()
    {
        return $this->demandeurEmploide;
    }

    /**
     * Set offredemploioe
     *
     * @param \AppBundle\Entity\Offredemploi $offredemploioe
     *
     * @return Document
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
