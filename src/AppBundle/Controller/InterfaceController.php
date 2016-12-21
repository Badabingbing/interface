<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
// use AppBundle\Entity\User;

class InterfaceController extends Controller {
    /**
     * @Route("/interface/layout")
     * @Route("/interface/listeDE", name="listeDE")
     */

    public function listAction() {

        return $this->render('interface/listeDE.html.twig');
     }

     /**
     * @Route("/interface/ficheDemploi/{id}", name="ficheDemploi")
     */

     public function showAction($id) {

        return $this->render('interface/ficheDemploi.html.twig');
     }

}



        // return $this->render('interface/test.html.twig', array(
        //     'articles' => array(
        //         array(
        //             "moteur_templates" => "des extensions",
        //             "titre" => "Titre 3",
        //             "auteur" => array(
        //                 "nom" => "Doe",
        //                 "prenom" => "John",
        //             ),
        //             "date" => new \DateTime(),
        //             "contenu" => "<span>Ici le contenu de l'article</span>",
        //         ),
        //         array(
        //             "moteur_templates" => "de la boucle 'for'",
        //             "titre" => "Titre 2",
        //             "auteur" => array(
        //                 "nom" => "Doe",
        //                 "prenom" => "John",
        //             ),
        //             "date" => new \DateTime(),
        //             "contenu" => "<span>Ici le contenu de l'article</span>",
        //         ),
        //         array(
        //             "moteur_templates" => "de Twig",
        //             "titre" => "Titre 1",
        //             "auteur" => array(
        //                 "nom" => "Doe",
        //                 "prenom" => "John",
        //             ),
        //             "date" => new \DateTime(),
        //             "contenu" => "<span>Ici le contenu de l'article</span>",
        //         ),
        //     )
        // ));