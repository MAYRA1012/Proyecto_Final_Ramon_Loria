Create database UHDB

use UHDB

Drop table Mae_Usuario

CREATE table Mae_usuario
(
   id int identity(1,1),
   correo varchar(50),
   clave varchar(20),
   Nombre varchar(50),
   Tipo nvarchar(50)
   CONSTRAINT UQ_CORREO Unique (correo)
)

 alter table Mae_usuario add primary key (id);

insert into Mae_usuario values ('mvenegas@gmail.com','mvenegas','Maryangel','administrador')

insert into Mae_usuario values ('aloria@gmail.com','111','Ana','admin')

insert into Mae_usuario values ('abarquero@gmail.com','222','andrea','Admin')

select * from Mae_usuario

ALTER TABLE Mae_usuario
ADD nombre VARCHAR (50);

ALTER TABLE Mae_usuario ALTER COLUMN Tipo VARCHAR(50);


create procedure ConsultaUsuario
as
	begin
		select id, correo, clave, nombre, tipo from Mae_usuario
	end
/*ejecuta el Procedimiento*/
	Exec ConsultaUsuario 

	/*Alter procedure InsertarUsuario con alter se modifica el procedimiento almacenado */
	Alter procedure InsertarUsuario
	@correo varchar (50),
	@clave varchar (20)= '111',
	@nombre varchar (50) ='sin nombre',
	@tipo nvarchar (50) = 'usuario'

as

	begin
		insert into Mae_usuario (correo, clave, Nombre, Tipo) values (@correo, @clave, @nombre, @tipo)


	end

	exec InsertarUsuario 'manuel@gmail.com','123','','usuario'

	create procedure BorrarUsuario
	@codigo int
	as
		begin
		delete Mae_usuario where id =@codigo
		end


		exec BorrarUsuario '4'

create procedure ActualizaUsuario
	@correo varchar (50),
	@clave varchar (20),
	@nombre varchar (50),
	@tipo nvarchar (50),
	@codigo int
		as
		begin
			update Mae_usuario set correo= @correo, clave= @clave, nombre= @nombre, Tipo= @tipo
			where id=@codigo
		end

exec ActualizaUsuario 'rloria@gmail.com','222','ramon','Administrador',1


create procedure ConsultaUsuarioFiltro
@codigo int
as
	begin
		select id, correo, clave, nombre, tipo from Mae_usuario
		where id =@codigo

	end


	alter procedure ValidarUsuario2
	@correo varchar(50),
	@clave varchar (30)
	

	as
	BEGIN
		select id, nombre, tipo, correo, clave from Mae_usuario where correo=@correo and clave=@clave

		end

		exec ValidarUsuario3 'rloria@gmail.com','222'



		CREATE table Mae_Productos
(
   id int identity(1,1),
   Nom_Produc varchar(50),
   segmento varchar(20),
   Categoria varchar(50),
   Tipo nvarchar(50)
   CONSTRAINT UQ_Nom_Produc Unique (Nom_Produc)
)

 alter table Mae_Productos add primary key (id);

insert into Mae_Productos values ('Botella','Reutilizables','No Consumibles','Gravado')

insert into Mae_Productos values ('Proteina','hidrolizada ','Consumibles','Exento')

insert into Mae_Productos values ('Membresia','Personal','Mensual','Gravado')

select * from Mae_Productos

ALTER TABLE Mae_Productos
ADD Precio int;

ALTER TABLE Mae_Productos ALTER COLUMN precio float;


/*create procedure ConsultaProducto*/
alter procedure ConsultaProducto
as
	begin
		select id, Nom_Produc, segmento, Categoria, tipo,Precio from Mae_Productos
	end
/*ejecuta el Procedimiento*/
	Exec ConsultaProducto 

	/*Alter procedure InsertarProductos con alter se modifica el procedimiento almacenado */
	/*Create procedure InsertarProductos*/
	alter procedure InsertarProductos
	@Nom_Produc varchar (50),
	@segmento varchar (20),
	@Categoria varchar (50),
	@tipo nvarchar (50),
	@Precio float

as

	begin
		insert into Mae_Productos (Nom_Produc, segmento, Categoria, Tipo,Precio ) values (@Nom_Produc, @segmento, @Categoria, @tipo,@Precio)


	end

	exec InsertarProductos  'Membresia3','Personal','semestral','Gravado',75000

	create procedure BorrarProductos
	@codigo int
	as
		begin
		delete Mae_Productos where id =@codigo
		end


		exec BorrarProductos '3'

/*create procedure ActualizaProductos*/
alter procedure ActualizaProductos
	@Nom_Produc varchar (50),
	@segmento varchar (20),
	@Categoria varchar (50),
	@tipo nvarchar (50),
	@codigo int,
	@Precio float
		as
		begin
			update Mae_Productos set Nom_Produc= @Nom_Produc, segmento= @segmento, Categoria= @Categoria, Tipo= @tipo, Precio =@Precio
			where id=@codigo
		end

exec ActualizaProductos 'Botella','Reutilizables','No Consumibles','Exento',1


/*create procedure ConsultaProductosFiltro*/
alter procedure ConsultaProductosFiltro
@codigo int
as
	begin
		select id, Nom_Produc, segmento, Categoria, tipo,Precio from Mae_Productos
		where id =@codigo

	end

	exec ConsultaProductosFiltro 1



	create table Venta

(
codigo int identity,/*llave primaria   */
usuario int not null,/*llave foranea de cajero   */
producto int not null,/*llave foranea de producto  */
fecha datetime null,
constraint pk_codigoventa primary key(codigo),
constraint FK_usuario foreign key (usuario) references Mae_usuario(id),
constraint FK_producto foreign key (producto) references Mae_Productos(id)


)

insert into Venta values (1,1, '12-12-2022')




select Mae_usuario.id,Mae_usuario.nombre,Mae_Productos.Nom_Produc,Mae_Productos.precio
from venta 
inner join  Mae_usuario  on venta.usuario = Mae_usuario.id
inner join Mae_Productos on venta.producto =Mae_Productos.id




create procedure Insertarventa
	@usuariov int,
	@productov int,
	@fecha datetime 

as

	begin
		insert into Venta (usuario, producto, fecha ) values (@usuariov, @productov, @fecha)


	end

	exec Insertarventa 3,2,'12-12-2022'