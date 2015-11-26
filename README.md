testing spec for recipes:
name: string
summary: text
description: text

- name must be present
- name must be between 5 and less then 100 characters
- summary must be present
- summary must be between 10 characters and less than 150
- description must be present
- description must be between 20 and 500 characters
- chef_id must be present


-------------------------------------------------------------------

testing spec for chefs:
chefname: string
email: string

- chefname must be present
- chefname must be between 3 and 40 characters
- email must be present
- email must be unique (since we'll use this for logins later)
- email must be valid

-------------------------------------------------------------------

Chefs:

What we have already:
- Chef model and validations
- chefs table with columns chefname and email

What we want to do:
- Add passwords to the chefs table so chefs can be authenticated and logged in
- Use email as log in credentials since it is unique
- Ability to register new chefs to use the app
- Ability to display chefs profile
- Ability to list chefs using the app
- Restrict actions like create recipe, edit recipe, and like feature
- Restricting the edit of recipes to only the chefs who created the recipe





