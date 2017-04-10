Doc

Http request examples: 

Get User:
```:3000/user```

Create a user: 
```POST :3000/users email=chnsydney@gmail.com first_name=sydney last_name=coco```
Takes three argument email, first_name and last_name

Modify a user (where 1 is the id): 
```PUT :3000/users/1 email=new@email.com

Delete a user
```DELETE :3000/users/#{id} ```
