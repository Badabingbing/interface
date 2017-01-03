<?php
namespace AppBundle\DBAL\Types;

use Fresh\DoctrineEnumBundle\DBAL\Types\AbstractEnumType;

final class CategorieType extends AbstractEnumType
{
	const OUVRIER = "Ouvrier";
	const OUVRIER_QUALIFIE = "Ouvrier qualifié";
	const EMPLOYE = "Employé";
	const EMPLOYE_QUALIFIE = "Employé qualifié";
	const AGENT_MAITRISE = "Agent de maîtrise";
	const CADRE = "Cadre";
	const CADRE_SUPERIEUR = "Cadre supérieur";
	const ARTISAN = "Artisan";
	const COMMERCANT = "Commerçant";

	protected static $choices = [
		self::OUVRIER => "Ouvrier",
		self::OUVRIER_QUALIFIE => "Ouvrier qualifié",
		self::EMPLOYE => "Employé",
		self::EMPLOYE_QUALIFIE => "Employé qualifié",
		self::AGENT_MAITRISE => "Agent de maîtrise",
		self::CADRE => "Cadre",
		self::CADRE_SUPERIEUR => "Cadre supérieur",
		self::ARTISAN => "Artisan",
		self::COMMERCANT => "Commerçant"
	];
}