<?php
// Centralised config. Edit DB credentials here for your local setup.
return [
    'db' => [
        'host'    => '127.0.0.1',
        'port'    => 3306,
        'name'    => 'crush_db',
        'user'    => 'root',
        'pass'    => '',    // <-- change to your MySQL password
        'charset' => 'utf8mb4',
    ],
    'jwt_secret'  => 'change-this-super-long-school-project-secret-min-32-chars-please',
    'jwt_hours'   => 168, // one week
    'cors_origin' => '*',
];
