<?php
namespace AppBundle\DBAL\Types;

use Fresh\DoctrineEnumBundle\DBAL\Types\AbstractEnumType;

final class SejourType extends AbstractEnumType
{
	const OUI = "oui";
	const NON = "non";

	protected static $choices = [
		self::OUI => "oui",
		self::NON => "non"
	];
}