# Rails Intro Review

Take 30 minutes to discuss the following questions with your table group.

1. Generate a new rails app called 'Rooty Tooty Blendy Fruity'.
  - `rails new rooty_tooty_blendy_fruity`
2. Generate two models, 'Smoothie' and 'Ingredients', using the *resource* generator.  
  * If a smoothie has ingredients, what sort of Active Record association should these two models have?
  * Both Smoothies and Ingredients should have name column with a String datatype, but what else should be included to set up the appropriate foreign-key relationship? Try to generate these resources without having to modify the migration files afterward. **BONUS:** What datatype could be used instead of :integer to generate a relationship between these models?
  - `rails generate resource smoothie name`
  - `rails generate resource ingredient name`
  - `rails generate resource smoothie_ingredient smoothie_id:integer ingredient_id:integer` 
  - **BONUS: REFERENCE** `rails generate resource smoothie_ingredient smoothie:reference ingredient:reference` 
3. Update/Write any needed ActiveRecord associations in the two models that were generated.
  - Happens in our models!
  - Ex: `belongs_to :smoothie`
  - Ex: `has_many :smoothie_ingredients`
  - Ex: `has_many :ingredients, through: :smoothie_ingredients`
4. Discuss amongst your table how you might do the following from here:
  * If you were to implement fully RESTful Smoothie controller, what methods would be needed?
    - `'smoothie#index'`
    - `'smoothie#new'`
    - `'smoothie#create'`
    - `'smoothie#show'`
    - `'smoothie#edit'`
    - `'smoothie#update'`
    - `'smoothie#destroy'`
  * What views would be needed for this to work?
    - `/views/smoothies/index.html.erb`
    - `/views/smoothies/new.html.erb`
    - `/views/smoothies/edit.html.erb`
    - `/views/smoothies/show.html.erb`
  * How would you limit the route resource in config/routes.rb for Ingredients so it will only route to index and create?
    - `resource :smoothie, only: [:index, :create]`
  * Say we wanted to display a specific Smoothie using the show method and include the ingredients that belong to it within the view, what would be needed in the method to display both the Smoothie info and it's related ingredients?  For instance:

  **"Green Mango Fusion"**
  
    * 1 mango
    * 1 banana
    * 1 cup frozen berries
    * 1 bunch of kale
    * 2 cups milk

  - We'd create an instance variable `@smoothie` in `'smoothie#show'` and pass it into our `views/smoothies/show.html.erb` file, where  we'd refer to that smoothie's ingredients (`@smoothie.ingredients`), and iterate over them to create a list of ingredient elements.