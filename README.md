# CRUD_DiscograficaMejorado_3erTrim

  Este repositorio contiene lo siguiente:
  - El código fuente del CRUD, que contiene 2 tablas, (álbumes y discográficas) (cada una con su clave primaria) cada una con sus opciones de listado, borrado, modificación y añadido, además de un login al principio. La tabla de álbum tiene una foreign key (CodDiscog), que es la primary key de Discográficas, por lo que al borrar una discográfica también se borran todos los álbumes asociados a este.
  - Archivo sql que respalda la base de datos
  - Video explicativo en YouTube: https://www.youtube.com/watch?v=JR45sA4Ouxk

<h2>Fuentes</h2>
  Este proyecto de CRUD JSP ha sido realizado con lo siguiente:
  
  - <b>Bootstrap5:</b> todas las páginas contienen css y javascript de bootstrap5(https://getbootstrap.com/), además de los snippets sacados de la misma. Como se puede comprobar en los botones y la navbar típcos de bootstrap.
  - <b>Propio:</b> además de bootstrap, algunas páginas contienen un poco de css de diseño propio.
  - <b>Páginas de código prediseñado:</b> He usado código prediseñado (o plantilla) de codepen(https://codepen.io/search/pens?q=login) para la página principal de inicio de sesión y la de login, además de las de modificación y alertas de borrado y añadido, ya que son todas de la misma plantilla personalizada. Dicha plantilla es la siguiente: https://codepen.io/colorlib/pen/rxddKy

<h2>Capturas</h2>
En las siguientes capturas se mostrará todas las funciones de la página:

1. Login: hay dos casillas: de usuario y contraseña
![Captura1](https://user-images.githubusercontent.com/72436388/155395619-efe1da93-6511-4a5f-b4a4-0dc940685c15.PNG)

1.1. El usuario y contraseña del login es admin (admin admin) o usuario (usuario usuario), por lo que si pones el usuario o la contraseña incorrectos ocurrirá lo siguiente: 
![Captura](https://user-images.githubusercontent.com/72436388/168580448-84e1146d-f539-46f2-9581-2f576883eb7a.PNG)

1.2. Si desde la pagina de index.jsp se intenta entrar sin iniciar sesión y lo requiere como listarAlbum.jsp o listarDiscog.jsp a través de la barra de navegación te redigirá a la página inicial y te saldrá el siguiente mensaje:

![Captura2](https://user-images.githubusercontent.com/72436388/168585539-2ba30127-620e-41e9-adb2-53518188fd83.PNG)


  - Si lo haces correctamente te llevará a la siguiente página: en la que te saludará según tu nombre de usuario y te permitirá ir directamente a la lista de álbumes o discográficas, o bien cerrar sesión directamente:
  ![ultima](https://user-images.githubusercontent.com/72436388/158382096-fc4a02d7-1ad9-4f0e-aa1c-e42019005654.PNG)

2. La lista de álbumes con todos sus atributos (Codigo de album, nombre de album, artista, y año de publicación), con las funciones de borrar y modificar para cada línea, además de un formulario para añadir álbumes, arriba se encuentra una navbar con la función de cerrar sesión (que devuelve al login inicial) y dos enlaces para elegir entre ver la lista de álbumes o discográficas:
![2](https://user-images.githubusercontent.com/72436388/168656323-339364ff-5ae3-42b2-b393-89bbdedb735e.PNG)


2.2. Lista discográficas: esta es la lista de discográficas, todo funciona igual que con la lista de álbumes
![22](https://user-images.githubusercontent.com/72436388/168656342-2cca29cb-b1b3-47cb-a1c4-53eeeb8268bb.PNG)


3. Borrado, modificado y añadido en la tabla de álbumes:
  3.1. Borrado: Si pinchamos en borrar en cualquier línea, (yo por ejemplo lo haré en la 1era) saldrá lo siguiente:
![31](https://user-images.githubusercontent.com/72436388/168656387-8f617e56-60cb-409d-a49d-ac7047fe986d.PNG)
    
    Luego se puede comprobar que se ha borrado:
    ![3_11](https://user-images.githubusercontent.com/72436388/155398046-fb9c1de6-9118-43fc-b067-00bbe719857b.PNG)
    
    * Si se borra una discográfica, también se borrarán en cascade todos los álbumes que tengan el mismo CodDiscog

  3.2. Modificado: si pinchamos en modificar en cualquier línea saldrá lo siguiente (he añadido una más (album1prueba) para este ejemplo)
   ![32](https://user-images.githubusercontent.com/72436388/168656434-906df7c7-b62f-47b5-8e04-c5c8a369fb72.PNG)
 ![Captura3](https://user-images.githubusercontent.com/72436388/155398575-1d6cde9c-c9dd-4640-a157-08238c8c2d7b.PNG)
  Se puede comprobar que se le ha cambiado el nombre al album con el códgo 2:
 ![32_2](https://user-images.githubusercontent.com/72436388/168656473-60564d6b-006c-40e9-be0e-0f28a8a69b59.PNG)
 

  3.3. Añadido: Si en el formulario que aparece encima de la lista de álbumes introducimos datos, y presionamos en añadir, dichos datos se añadirán a la tabla:
  ![33_1](https://user-images.githubusercontent.com/72436388/168656488-a8979bb2-6bc0-467b-b31a-0ecfe6ff3f0b.PNG)
![anadido](https://user-images.githubusercontent.com/72436388/155399223-19ea5763-8455-453c-8165-54bf03eaf3c3.PNG)
![33_2](https://user-images.githubusercontent.com/72436388/168656512-44ae7464-1c78-451e-b11b-987ec244f8c5.PNG)

  (Todas las funciones de añadido, borrado y modificado funcionan igual para la tabla de discográficas)

4. Excepciones:
  4.1. Si intento añadir una álbum con un codigo de álbum que ya existe ocurre lo siguiente:
  ![41](https://user-images.githubusercontent.com/72436388/168656552-24949698-3991-42a9-b804-5e7d2c43efb3.PNG)
  ![repetido2](https://user-images.githubusercontent.com/72436388/155399784-aae02485-e6f1-4a5c-b69d-0d6263c4bfe6.PNG)
  (Detecta que se ha repetido y no lo sube)
  
  4.2. Si intento añadir un álbum con un código de discográfica que no existe ocurre lo siguiente:
  ![42_1](https://user-images.githubusercontent.com/72436388/168656864-3e2cfb71-b5a1-4d44-ba88-d1161a880ee9.PNG)

  ![42_2](https://user-images.githubusercontent.com/72436388/168656871-5d08612c-1863-4f1a-b5bd-7f96c18eb01d.PNG)

  
