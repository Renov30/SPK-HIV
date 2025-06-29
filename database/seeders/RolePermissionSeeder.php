<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;

class RolePermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        $adminRole = Role::create([
            'name' => 'admin'
        ]);
        $pakarRole = Role::create([
            'name' => 'pakar'
        ]);
        $user = User::create([
            'name' => 'admin',
            'email' => 'admin@gmail.com',
            'password' => bcrypt('123123123'),
        ]);

        $user = User::create([
            'name' => 'pakar',
            'email' => 'pakar@gmail.com',
            'password' => bcrypt('123123123'),
        ]);

        $user->assignRole($adminRole);
        $user->assignRole($pakarRole);
    }
}
