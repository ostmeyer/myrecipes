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
