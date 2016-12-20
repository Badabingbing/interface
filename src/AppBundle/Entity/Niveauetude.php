<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Niveauetude
 *
 * @ORM\Table(name="NIVEAUETUDE")
 * @ORM\Entity
 */
class Niveauetude
{
    /**
     * @var string
     *
     * @ORM\Column(name="niveauEtude", type="string", length=45, nullable=true)
     */
    private $niveauetude;

    /**
     * @var integer
     *
     * @ORM\Column(name="idNiveauEtude", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idniveauetude;



    /**
     * Set niveauetude
     *
     * @param string $niveauetude
     *
     * @return Niveauetude
     */
    public function setNiveauetude($niveauetude)
    {
        $this->niveauetude = $niveauetude;

        return $this;
    }

    /**
     * Get niveauetude
     *
     * @return string
     */
    public function getNiveauetude()
    {
        return $this->niveauetude;
    }

    /**
     * Get idniveauetude
     *
     * @return integer
     */
    public function getIdniveauetude()
    {
        return $this->idniveauetude;
    }
}
