<h1>Comandos utilizados para Blog1</h1>
<h2> 1. Crear 5 nuevos blogs</h2>

``` 
    blog = Blog.new(name:"Blog 1", description:"Descripcion del blog")
    blog.save 
```
``` 
    blog = Blog.new(name:"Blog 2", description:"Descripcion del blog2") 
    blog.save 
``` 
``` 
    blog = Blog.new(name:"Blog 3", description:"Descripcion del blog3")
    blog.save 
``` 
```  
    blog = Blog.new(name:"Blog 4", description:"Descripcion del blog4")
    blog.save 
``` 
``` 
    blog = Blog.new(name:"Blog 5", description:"Descripcion del blog5")
    blog.save 
``` 

<h2> 2. Crear varias publicaciones para cada blog</h2>

``` 
    post = Post.new(title:"Publicacion 1", content:"Contenido de la prublicacion 1", blog_id: 1)
    post.save 
```
``` 
    post = Post.new(title:"Publicacion 2", content:"Contenido de la prublicacion 2", blog_id: 1)
    post.save 
```
``` 
    post = Post.new(title:"Publicacion 3", content:"Contenido de la prublicacion 3", blog_id: 1)
    post.save 
```
``` 
    post = Post.new(title:"Publicacion 1", content:"Contenido de la prublicacion 1", blog_id: 2)
    post.save 
```
``` 
    post = Post.new(title:"Publicacion 2", content:"Contenido de la prublicacion 2", blog_id: 2)
    post.save 
```
``` 
    post = Post.new(title:"Publicacion 3", content:"Contenido de la prublicacion 3", blog_id: 2)
    post.save 
```
``` 
    post = Post.new(title:"Publicacion 1", content:"Contenido de la prublicacion 1", blog_id: 3)
    post.save 
```
``` 
    post = Post.new(title:"Publicacion 2", content:"Contenido de la prublicacion 2", blog_id: 3)
    post.save 
```
``` 
    post = Post.new(title:"Publicacion 3", content:"Contenido de la prublicacion 3", blog_id: 3)
    post.save 
```
``` 
    post = Post.new(title:"Publicacion 1", content:"Contenido de la prublicacion 1", blog_id: 4)
    post.save 
```
``` 
    post = Post.new(title:"Publicacion 2", content:"Contenido de la prublicacion 2", blog_id: 4)
    post.save 
```
``` 
    post = Post.new(title:"Publicacion 3", content:"Contenido de la prublicacion 3", blog_id: 4)
    post.save 
```
``` 
    post = Post.new(title:"Publicacion 1", content:"Contenido de la prublicacion 1", blog_id: 5)
    post.save 
```
``` 
    post = Post.new(title:"Publicacion 2", content:"Contenido de la prublicacion 2", blog_id: 5)
    post.save 
```
``` 
    post = Post.new(title:"Publicacion 3", content:"Contenido de la prublicacion 3", blog_id: 5)
    post.save 
```

<h2> 3. Crear varios mensajes para la primera publicacion</h2>

``` 
    message = Message.new(author:"Author 1", message:"Message 1 de la publicacion", post_id: Post.first.id)
    message.save 
```
``` 
    message = Message.new(author:"Author 1", message:"Message 2 de la publicacion", post_id: Post.first.id)
    message.save 
```
``` 
    message = Message.new(author:"Author 1", message:"Message 3 de la publicacion", post_id: Post.first.id)
    message.save 
```

<h2> 4. Obtener todas las publicaciones para el primer blog</h2>

``` 
    Blog.first.posts
```

<h2> 5. Obtener todas las publicaciones para el último blog (ordenadas por titulo en orden descendiente)</h2>

``` 
    Blog.last.posts.order(id: :desc)
```

<h2> 6. Actualizar el título de la primera publicación</h2>

``` 
    Post.first
    Post.first.update({title: "Titulo modificado"})
    Post.first
```

<h2> 7. Eliminar la tercera publicación (haga que el modelo borre automáticamente todos los mensajes asociados con la tercera publicación cuando la elimines)</h2>

``` 
    class Post < ApplicationRecord
        before_destroy { messages.destroy_all  }
        belongs_to :blog
        has_many :messages

        validates :title, presence: true, length: { minimum: 7}
        validates :content, presence: true
    end
``` 

```
    message = Message.new(author:"Author 1", message:"Message 1 de la publicacion", post_id: 3)
    message.save 
    Post.find(3).destroy
``` 

<h2> 8. Obtener todos los blog</h2>

``` 
    Blog.all
```

<h2> 9. Obtener todos los blog con id menor a 5</h2>

``` 
    Blog.where("id < ?", 5) o Blog.where(id: ...5)
```