Initial Launch
---

Launch one docker instance and copy the blog dir

docker run --name=hexoinit hexo

and 

docker cp hexoinit:/blog /your/directory/install

Edit the _config.yml and check the ip address 


after this, you can launch your blog in the sky !

docker run -d -p 4000:4000 -v /your/directory/install:/blog hexo


Create post
---
Hexo provide some command line to create post and other

You can run this command inside your container.

Find the container name and run this for create a simple article : 

docker exec "instancename" hexo new "Post title"