<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;


class LuckyController extends Controller
{
    /**
     * @Route("/lucky/number")
     */
    public function numberAction()
    {
        $number = mt_rand(0, 100);
        $name = 'Doe';
        $surname = 'John';
        $adresse = '5 boulevard de l\'exemple et du test';
        $pays = 'France';

        return $this->render('lucky/number.html.twig', array(
            'number' => $number, 'moteur_name' => 'Twig',
            'name' => $name, 'surname' => $surname, 'adresse' => $adresse,
            'pays' => $pays,
        ));
    }
    public function indexAction(Request $request)
    {
        // replace this example code with whatever you need
        return $this->render('default/index.html.twig', [
            'base_dir' => realpath($this->getParameter('kernel.root_dir').'/..').DIRECTORY_SEPARATOR,
        ]);
    } 
}


// class DefaultController extends Controller
// {
//     /**
//      * @Route("/", name="homepage")
//      */
//     public function indexAction(Request $request)
//     {
//         // replace this example code with whatever you need
//         return $this->render('default/index.html.twig', [
//             'base_dir' => realpath($this->getParameter('kernel.root_dir').'/..').DIRECTORY_SEPARATOR,
//         ]);
//     }
// }
