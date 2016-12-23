<?php

namespace AppBundle\Controller;

use AppBundle\Entity\DemandeurEmploi;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

/**
 * Demandeuremploi controller.
 *
 * @Route("demandeurs")
 */
class DemandeurEmploiController extends Controller
{
    /**
     * Lists all demandeurEmploi entities.
     *
     * @Route("/", name="demandeurs_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $demandeurEmplois = $em->getRepository('AppBundle:DemandeurEmploi')->findAll();

        return $this->render('demandeuremploi/index.html.twig', array(
            'demandeurEmplois' => $demandeurEmplois,
        ));
    }

    /**
     * Creates a new demandeurEmploi entity.
     *
     * @Route("/new", name="demandeurs_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $demandeurEmploi = new Demandeuremploi();
        $form = $this->createForm('AppBundle\Form\DemandeurEmploiType', $demandeurEmploi);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($demandeurEmploi);
            $em->flush($demandeurEmploi);

            return $this->redirectToRoute('demandeurs_show', array('id' => $demandeurEmploi->getIdde()));
        }

        return $this->render('demandeuremploi/new.html.twig', array(
            'demandeurEmploi' => $demandeurEmploi,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a demandeurEmploi entity.
     *
     * @Route("/{id}", name="demandeurs_show")
     * @Method("GET")
     */
    public function showAction(DemandeurEmploi $demandeurEmploi)
    {
        $deleteForm = $this->createDeleteForm($demandeurEmploi);

        return $this->render('demandeuremploi/show.html.twig', array(
            'demandeurEmploi' => $demandeurEmploi,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing demandeurEmploi entity.
     *
     * @Route("/{id}/edit", name="demandeurs_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, DemandeurEmploi $demandeurEmploi)
    {
        $deleteForm = $this->createDeleteForm($demandeurEmploi);
        $editForm = $this->createForm('AppBundle\Form\DemandeurEmploiType', $demandeurEmploi);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('demandeurs_edit', array('id' => $demandeurEmploi->getIdde()));
        }

        return $this->render('demandeuremploi/edit.html.twig', array(
            'demandeurEmploi' => $demandeurEmploi,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a demandeurEmploi entity.
     *
     * @Route("/{id}", name="demandeurs_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, DemandeurEmploi $demandeurEmploi)
    {
        $form = $this->createDeleteForm($demandeurEmploi);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($demandeurEmploi);
            $em->flush($demandeurEmploi);
        }

        return $this->redirectToRoute('demandeurs_index');
    }

    /**
     * Creates a form to delete a demandeurEmploi entity.
     *
     * @param DemandeurEmploi $demandeurEmploi The demandeurEmploi entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(DemandeurEmploi $demandeurEmploi)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('demandeurs_delete', array('id' => $demandeurEmploi->getIdde())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
