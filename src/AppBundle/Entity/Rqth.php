<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Rqth
 *
 * @ORM\Table(name="RQTH")
 * @ORM\Entity
 */
class Rqth
{
    /**
     * @var string
     *
     * @ORM\Column(name="RQTH", type="string", length=3, nullable=true)
     */
    private $rqth;

    /**
     * @var integer
     *
     * @ORM\Column(name="idRQTH", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idrqth;



    /**
     * Set rqth
     *
     * @param string $rqth
     *
     * @return Rqth
     */
    public function setRqth($rqth)
    {
        $this->rqth = $rqth;

        return $this;
    }

    /**
     * Get rqth
     *
     * @return string
     */
    public function getRqth()
    {
        return $this->rqth;
    }

    /**
     * Get idrqth
     *
     * @return integer
     */
    public function getIdrqth()
    {
        return $this->idrqth;
    }
    
    public function __toString()
   {
      return strval( $this->getRqth() );
   }

}
