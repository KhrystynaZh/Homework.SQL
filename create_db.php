<?php

require __DIR__ . '/vendor/autoload.php';

use BinaryStudioAcademyTests\Tools\ConnectionFactory;
use BinaryStudioAcademyTests\Tools\Migrator;
use BinaryStudioAcademyTests\Tools\Seeder;
use Dotenv\Dotenv;

$dotenv = new Dotenv(__DIR__);
$dotenv->load();

$connection = (new ConnectionFactory())->make();
$migrator = new Migrator($connection);
$seeder = new Seeder($connection);

$migrator->up();
$seeder->seed();

echo "Database schema was applied and seeded with data." . PHP_EOL;

