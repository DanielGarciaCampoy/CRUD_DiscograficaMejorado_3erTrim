# CRUD_DiscograficaMejorado_3erTrim

  Este repositorio contiene lo siguiente:
  - El código fuente del CRUD, que contiene 2 tablas, (álbumes y discográficas) (cada una con su clave primaria) cada una con sus opciones de listado, borrado, modificación y añadido, además de un login al principio. La tabla de álbum tiene una foreign key (CodDiscog), que es la primary key de Discográficas, por lo que al borrar una discográfica también se borran todos los álbumes asociados a este.
  - Archivo sql que respalda la base de datos
  - Video explicativo en YouTube

<h2>Fuentes</h2>
  Este proyecto de CRUD JSP ha sido realizado con lo siguiente:
  
  - <b>Bootstrap5:</b> todas las páginas contienen css y javascript de bootstrap5(https://getbootstrap.com/), además de los snippets sacados de la misma. Como se puede comprobar en los botones y la navbar típcos de bootstrap.
  - <b>Propio:</b> además de bootstrap, algunas páginas contienen un poco de css de diseño propio.
  - <b>Páginas de código prediseñado:</b> He usado código prediseñado (o plantilla) de codepen(https://codepen.io/search/pens?q=login) para la página principal de inicio de sesión y la de login, además de las de modificación y alertas de borrado y añadido, ya que son todas de la misma plantilla personalizada. Dicha plantilla es la siguiente: https://codepen.io/colorlib/pen/rxddKy

<h2>Capturas</h2>
En las siguientes capturas se mostrará todas las funciones de la página:

1. Login: hay dos casillas: de usuario y contraseña
![Captura1](https://user-images.githubusercontent.com/72436388/155395619-efe1da93-6511-4a5f-b4a4-0dc940685c15.PNG)

1.1. El usuario y contraseña del login es admin (admin admin), pero si pones usuario o contraseña incorrectos ocurrirá lo siguiente: 
![1_1](https://user-images.githubusercontent.com/72436388/155396173-9d41b451-e16c-415d-8f65-b0c1332d0720.PNG)

  - Si lo haces correctamente te llevará a la siguiente página: en la que te saludará según tu nombre de usuario y te permitirá ir directamente a la lista de álbumes o discográficas, o bien cerrar sesión directamente:
  ![ultima](https://user-images.githubusercontent.com/72436388/158382096-fc4a02d7-1ad9-4f0e-aa1c-e42019005654.PNG)

2. La lista de álbumes con todos sus atributos (Codigo de album, nombre de album, artista, y año de publicación), con las funciones de borrar y modificar para cada línea, además de un formulario para añadir álbumes, arriba se encuentra una navbar con la función de cerrar sesión (que devuelve al login inicial) y dos enlaces para elegir entre ver la lista de álbumes o discográficas:
![2](https://user-images.githubusercontent.com/72436388/155396789-21042518-e531-4a0f-955e-09e43405eaa9.PNG)

2.2. Lista discográficas: esta es la lista de discográficas, todo funciona igual que con la lista de álbumes
![2_2](https://user-images.githubusercontent.com/72436388/155397315-d6d96844-c17d-4d2d-a3fe-b0ba4172ec1b.PNG)

3. Borrado, modificado y añadido en la tabla de álbumes:
  3.1. Borrado: Si pinchamos en borrar en cualquier línea, (yo por ejemplo lo haré en la 1era) saldrá lo siguiente:
    ![3_1](https://user-images.githubusercontent.com/72436388/155397867-6a704b69-e840-4b0c-bb15-c61d384ce561.PNG)
    
    Luego se puede comprobar que se ha borrado:
    ![3_11](https://user-images.githubusercontent.com/72436388/155398046-fb9c1de6-9118-43fc-b067-00bbe719857b.PNG)

  3.2. Modificado: si pinchamos en modificar en cualquier línea saldrá lo siguiente (he añadido una más (album1prueba) para este ejemplo)
   ![Captura2](https://user-images.githubusercontent.com/72436388/155398552-d58f6f2c-4b9b-42b6-b7ac-36a8d3ad083f.PNG)
 ![Captura3](https://user-images.githubusercontent.com/72436388/155398575-1d6cde9c-c9dd-4640-a157-08238c8c2d7b.PNG)
  Se puede comprobar que se le ha cambiado el nombre al album con el códgo 2:
  ![Captura4](https://user-images.githubusercontent.com/72436388/155398827-b1860caa-3d6c-42e0-9feb-f2bc2ee01e43.PNG)

  3.3. Añadido: Si en el formulario que aparece encima de la lista de álbumes introducimos datos, y presionamos en añadir, dichos datos se añadirán a la tabla:
  ![a](https://user-images.githubusercontent.com/72436388/155399144-421100e0-8a61-48dc-b201-deb2858dd058.PNG)
![anadido](https://user-images.githubusercontent.com/72436388/155399223-19ea5763-8455-453c-8165-54bf03eaf3c3.PNG)
![a2](https://user-images.githubusercontent.com/72436388/155399280-bf6ad014-67f1-4643-99e8-24cae8119103.PNG)

  (Todas las funciones de añadido, borrado y modificado funcionan igual para la tabla de discográficas)

4. Excepciones:
  4.1. Si intento añadir una linea con un codigo que ya existe ocurre lo siguiente:
  ![repetido1](https://user-images.githubusercontent.com/72436388/155399774-b6f5aea5-0c2f-4e3f-8f6a-d9ce7f0a4eb0.PNG)
  ![repetido2](https://user-images.githubusercontent.com/72436388/155399784-aae02485-e6f1-4a5c-b69d-0d6263c4bfe6.PNG)
  (Detecta que se ha repetido y no lo sube)
