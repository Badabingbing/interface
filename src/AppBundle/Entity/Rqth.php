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
     * @var boolean
     *
     * @ORM\Column(name="RQTH", type="boolean", nullable=true)
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
     * @param boolean $rqth
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
     * @return boolean
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
}
