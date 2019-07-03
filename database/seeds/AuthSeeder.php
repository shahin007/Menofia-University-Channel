<?php

use Illuminate\Database\Seeder;

class AuthSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\User::create([
            'name'=>'admin',
            'email'=>'mahmoudnada5050@gmail.com',
            'password'=>bcrypt(123456)
        ]);
    }
}
