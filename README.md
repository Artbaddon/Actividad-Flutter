# actividad_flutter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
# Extremoduro Best Albums Flutter App

Este proyecto es una aplicación Flutter que muestra una lista de los mejores álbumes de la banda española Extremoduro. Cada álbum se presenta en una tarjeta con su imagen, título y descripción.

## Características
- Lista interactiva de álbumes usando `ListView` y `Card`.
- Navegación entre vistas mediante un Drawer.
- Uso de Material Design y colores personalizados.
- Código organizado y escalable usando modelos de datos (`Album`).

## Estructura principal
- `main.dart`: Contiene la lógica principal, widgets y la lista de álbumes.
- `assets/img/`: Carpeta con las imágenes de los álbumes.

## Cómo agregar más álbumes
1. Abre el archivo `main.dart`.
2. Busca la lista `albums`.
3. Añade nuevos objetos `Album` con el título, descripción e imagen correspondiente.

```dart
Album(
	title: 'Nuevo Álbum',
	description: 'Descripción del nuevo álbum.',
	imagePath: 'assets/img/nuevo_album.jpg',
),
```

## Ejecución
1. Instala Flutter y dependencias.
2. Ejecuta `flutter pub get` para instalar paquetes.
3. Corre la app con `flutter run`.
