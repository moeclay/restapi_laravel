<?php

use Illuminate\Database\Seeder;
use App\Article;

class ArticlesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // let truncate record
        Article::truncate();
        $faker = \Faker\Factory::create();

        // create a few artivcle in our database
        for($i=0; $i<50; $i++){
        	Article::create([
        		'title' => $faker->sentence,
        		'body'  => $faker->paragraph,
        	]);
        }
    }
}
