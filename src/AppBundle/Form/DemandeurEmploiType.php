<?php

namespace AppBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class DemandeurEmploiType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder->add('dateInscriptionDe')
                ->add('dateDerniereModifDe')
                ->add('photoDe')
                ->add('profildecol')
                ->add('nomDe')
                ->add('prenomDe')
                ->add('tel1De')
                ->add('tel2De')
                ->add('mailDe')
                ->add('qpv')
                ->add('nbrEnfantDe')
                ->add('dateNaissance')
                ->add('trancheAge')
                ->add('villeNaissance')
                ->add('deptNaissance')
                ->add('paysNaissance')
                ->add('nationaliteDe')
                ->add('titreSejourDe')
                ->add('autorisationTravail')
                ->add('locomotion')
                ->add('numPoleEmploiDe')
                ->add('structureRef')
                ->add('allocation')
                ->add('diplomePro')
                ->add('categorieSocio')
                ->add('rqthrqth')
                ->add('adresseadresse')
                ->add('genregenre')
                ->add('metiermetier')
                ->add('niveauetudeniveauetude1')
                ->add('statutstatut')
                ->add('permispermis')
                ->add('useruser')        ;
    }
    
    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'AppBundle\Entity\DemandeurEmploi'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'appbundle_demandeuremploi';
    }


}
