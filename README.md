# Exploradores del multiverso

Aplicación para que un investigador encuentre personajes de Rick and Morty, conserve los que necesita revisar y retome su espacio aunque el dispositivo cambie de manos o se quede sin red.

## Qué resuelve

- El acceso es un número celular. La verificación es simulada: el código son los últimos 4 dígitos. No se envía un SMS.
- Cada celular tiene su propia biblioteca y su última búsqueda. Cerrar el espacio no borra los registros de ese número, y otro celular no los ve.
- La búsqueda usa la API pública `https://rickandmortyapi.com/`.
- Los personajes guardados viven en el dispositivo con `hydrated_bloc` y se pueden abrir sin conexión. Si la ficha no puede refrescarse, se muestra la copia local y se dice por qué.
- Una búsqueda sin coincidencias y un fallo de red muestran mensajes distintos.

## Cómo correrla

```sh
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter run --flavor development --target lib/main_development.dart
```

También existen los flavors `staging` y `production`, con los targets `lib/main_staging.dart` y `lib/main_production.dart`.

Para generar un APK de desarrollo:

```sh
flutter build apk --debug --flavor development --target lib/main_development.dart
```

El archivo queda en `build/app/outputs/flutter-apk/app-development-debug.apk`.

## Decisiones técnicas

La app sigue la separación de Quantum:

- `packages/madd_models` guarda peticiones, respuestas y el personaje de dominio con Freezed, más el contrato `ApiClient` y los errores.
- `packages/madd_service` implementa ese contrato con Dio y traduce la API.
- `packages/madd_repository` define `CharacterRepository` y lo implementa. `MaddRepositories` es el único lugar que construye Dio, el servicio y el repositorio. La interfaz solo ve el contrato.

La sesión y la biblioteca son `HydratedBloc`. El almacén es un archivo en el directorio de documentos de la app, no un servidor. La llave de cada registro es el celular, así que dos investigadores no mezclan su trabajo en el mismo teléfono.

El código de acceso no sale del dispositivo. `PhoneVerification` compara el código con los últimos cuatro dígitos del número ya normalizado.

## Pruebas

```sh
flutter test
dart test --directory packages/madd_models
dart test --directory packages/madd_service
dart test --directory packages/madd_repository
```

El plan de trabajo y la bitácora están en [PLAN_DE_TRABAJO.md](PLAN_DE_TRABAJO.md).
