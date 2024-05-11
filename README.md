# stock-management

## Assumptions

1. La aplicación es un portal B2B y para poder acceder hace falta tener una cuenta previa. Esta cuenta será creada por
   un administrador, independientemente del rol del usuario.
2. Existen tres posibles roles ADMIN, WAREHOUSE y CLIENT.
3. La gestión de contraseñas por parte del usuario está fuera de alcance. Por lo tanto, se generará el usuario con una
   contraseña por defecto y se comunicaría por vía segura al mismo. Una vez creado el usuario, la contraseña no puede
   ser cambiada.

## local development

Run the app locally using

```shell
docker compose up

mvn jetty:run
```