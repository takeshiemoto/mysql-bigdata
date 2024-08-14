<?php
require_once 'vendor/autoload.php';

$faker = Faker\Factory::create('ja_JP');

$pdo = new PDO('mysql:host=bigdata-db;dbname=bigdata_db', 'user', 'password');
$pdo->beginTransaction();

// Get gender IDs
$stmt = $pdo->query("SELECT id FROM genders");
$genderIds = $stmt->fetchAll(PDO::FETCH_COLUMN);

$batchSize = 1000;
$valueStrings = [];
$valueData = [];

for ($i = 0; $i < 50000000; $i++) {
    $firstName = $faker->firstName;
    $lastName = $faker->lastName;
    $email = $faker->safeEmail;
    $birthday = $faker->date('Y-m-d', '-18 years');
    $genderId = $faker->randomElement($genderIds);

    $valueStrings[] = "(?, ?, ?, ?, ?)";
    $valueData[] = $firstName;
    $valueData[] = $lastName;
    $valueData[] = $email;
    $valueData[] = $birthday;
    $valueData[] = $genderId;

    if (($i + 1) % $batchSize == 0) {
        $stmt = $pdo->prepare("INSERT INTO users (first_name, last_name, email, birthday, gender_id) VALUES " . implode(', ', $valueStrings));
        $stmt->execute($valueData);
        $valueStrings = [];
        $valueData = [];
    }
}

if (!empty($valueStrings)) {
    $stmt = $pdo->prepare("INSERT INTO users (first_name, last_name, email, birthday, gender_id) VALUES " . implode(', ', $valueStrings));
    $stmt->execute($valueData);
}

$pdo->commit();

echo "Done\n";
