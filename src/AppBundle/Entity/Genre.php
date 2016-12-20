<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Genre
 *
 * @ORM\Table(name="GENRE")
 * @ORM\Entity
 */
class Genre
{
    /**
     * @var string
     *
     * @ORM\Column(name="Genre", type="string", length=5, nullable=true)
     */
    private $genre;

    /**
     * @var integer
     *
     * @ORM\Column(name="idGENRE", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idgenre;



    /**
     * Set genre
     *
     * @param string $genre
     *
     * @return Genre
     */
    public function setGenre($genre)
    {
        $this->genre = $genre;

        return $this;
    }

    /**
     * Get genre
     *
     * @return string
     */
    public function getGenre()
    {
        return $this->genre;
    }

    /**
     * Get idgenre
     *
     * @return integer
     */
    public function getIdgenre()
    {
        return $this->idgenre;
    }
}
