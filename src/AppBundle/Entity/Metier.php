<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Metier
 *
 * @ORM\Table(name="METIER")
 * @ORM\Entity
 */
class Metier
{
    /**
     * @var string
     *
     * @ORM\Column(name="metier", type="string", length=50, nullable=true)
     */
    private $metier;

    /**
     * @var integer
     *
     * @ORM\Column(name="idMETIER", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idmetier;



    /**
     * Set metier
     *
     * @param string $metier
     *
     * @return Metier
     */
    public function setMetier($metier)
    {
        $this->metier = $metier;

        return $this;
    }

    /**
     * Get metier
     *
     * @return string
     */
    public function getMetier()
    {
        return $this->metier;
    }

    /**
     * Get idmetier
     *
     * @return integer
     */
    public function getIdmetier()
    {
        return $this->idmetier;
    }

    public function __toString() {
         return $this->metier; 
         }
}
