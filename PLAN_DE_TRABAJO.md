# Plan de trabajo

## Plan inicial

Problemas que plantea el reto:

1. Encontrar un personaje por nombre entre muchos registros de la API de Rick and Morty.
2. Separar el trabajo de cada investigador en un dispositivo compartido. La organización los identifica con el celular.
3. Conservar lo que alguien marcó para revisar después, aunque se caiga la red o se cierre la app.
4. Explicar con claridad cuando una consulta falla o no hay coincidencias.

| Prioridad | Tarea | Esfuerzo |
| --- | --- | --- |
| Alta | Dejar el proyecto Android compilando con el Gradle y el Android Gradle Plugin que pide el SDK de Flutter | 1 h |
| Alta | Modelos Freezed de petición y respuesta, y el personaje que usa la app | 1 h |
| Alta | Servicio Dio y contrato de repositorio, con la composición de dependencias en un solo lugar | 1 h |
| Alta | Identificación simulada por celular y sesión que sobrevive al cierre | 2 h |
| Alta | Búsqueda, ficha y biblioteca local separada por celular | 2 h |
| Media | Mensajes de vacío, de red y de copia guardada | 1 h |
| Media | Pruebas de la verificación, del mapeo y de que dos celulares no comparten registros | 1 h |

## Bitácora

1. El build de Android fallaba porque Gradle 9.0.0 estaba por debajo del mínimo de Flutter (9.3.1) y no era compatible con Java 25. Subí el wrapper a Gradle 9.5.0, el Android Gradle Plugin a 9.3.1 y Kotlin a 2.4.20, que es el conjunto del template actual de Flutter. El bytecode pasó a Java 17 y el ProGuard por defecto a `proguard-android-optimize.txt`, porque AGP 9 rechaza el archivo anterior. `assembleDevelopmentDebug` compiló después de eso.

2. Armé los tres paquetes para comunicar con la API de Rick and Morty. La app conoce el repositorio, el repositorio conoce el servicio, el servicio conoce Dio. Los modelos no conocen a ninguno de los dos.

3. La petición `CharacterSearchRequest` y las respuestas `CharacterResponse` y `CharacterPageResponse` viven en `madd_models` con Freezed y `json_serializable`. El personaje de dominio también es Freezed, para poder guardarlo en el estado de un bloc y serializarlo.

4. `CharacterRepository` es una clase abstracta. `ApiCharacterRepository` es la implementación. `MaddRepositories` construye el cliente Dio, el servicio y entrega a la app solo el contrato. Un 404 de la API, que Rick and Morty usa cuando el nombre no existe, se traduce a `CharacterException.notFound`. Un timeout o una conexión caída se traduce a `unavailable`.

5. La verificación no llama a ningún servicio de SMS. `PhoneVerification` acepta un celular de 10 dígitos, quita el prefijo +52 si viene escrito, y exige que el código sea los últimos cuatro dígitos. La pantalla lo dice en texto, para que se pueda demostrar sin un teléfono real.

6. `SessionBloc` y `LibraryBloc` extienden `HydratedBloc`. El primero recuerda el celular activo y la última búsqueda de cada número. El segundo guarda los personajes por celular. Cerrar sesión deja la biblioteca intacta: al volver a entrar con el mismo número, la búsqueda y los guardados siguen ahí. Otro número no los ve.

7. La ficha intenta refrescar el personaje con `fetchById`. Si no hay red, se queda con la copia con la que se abrió y muestra que es la versión guardada en el dispositivo.

8. Dificultad: Flutter 3.47 movió Material a `material_ui` y los delegados de `flutter_localizations` ya no satisfacen ese tipo. Forzar el locale `es` con los delegados generados dejaba el `TextField` sin `MaterialLocalizations`. La app ahora registra los delegados de `material_ui` y `cupertino_ui`, que sí cubren español.

9. Dificultad: Freezed 4.0.3 no resuelve junto a `auto_route_generator` 10.6.0. El proyecto usa Freezed 4.0.1.
