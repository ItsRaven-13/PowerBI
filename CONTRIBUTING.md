# Guía de Contribución - Proyecto Power BI

¡Gracias por tu interés en contribuir a este proyecto!  
Sigue estas reglas para mantener un flujo de trabajo limpio, seguro y colaborativo.

## Flujo de trabajo (Git Flow)

1. **Clona el repositorio**
   ```bash
   git clone https://github.com/Barrera1712/DashboardPowerBI.git
   ```

2. **Clona la rama remota de desarrollo (Develop) y usala**
   ```bash
   git checkout -b develop origin/develop
   ```
3. **Crea una nueva rama temporal**
   Usa el formato:
   ```bash
   git checkout -b feature/<nombre>     # Para nuevas características
   git checkout -b fix/<nombre>         # Para correcciones
   ```

4. **Realiza tus cambios**
   - Evita modificar directamente los archivos `.pbip` o `.pbix` del main.
   - No subas ningún archivo Excel con datos reales.
   - Trabaja sobre los archivos de definición (`.tmdl`, `.json`, `.pbism`).

5. **Guarda y haz commit**
   ```bash
   git add .
   git commit -m "feat: agrega visualización de promedios"
   ```

6. **Asegúrate de mantener sincronizada tu rama develop local y remota**
   ```bash
   git pull origin develop
   ```

7. **Fusiona tu rama temporal con la de desarrollo**
   ```bash
   git checkout develop
   git merge --no-ff <nombre>
   git branch -d <nombre>
   ```

8. **Envía tus aportaciónes**
   ```bash
   git push origin develop
   ```

9. **Crea un Pull Request (PR)**
   - Describe claramente los cambios.
   - Menciona el issue relacionado si aplica.
   - Espera revisión antes de fusionar.


## Normas de limpieza

- No incluir archivos grandes (>50MB).
- No incluir datos sensibles (nombre, email, contraseñas, etc.).
- El archivo `./data/samples/exampleDataata.xlsx` solo debe contener **datos de ejemplo o ficticios**.


## Buenas prácticas

- Mantén los commits **atómicos** (una mejora por commit).
- Usa mensajes claros en inglés o español, con prefijos:
  - `feat:` → Nueva funcionalidad
  - `fix:` → Corrección
  - `docs:` → Documentación
  - `refactor:` → Mejora de código sin cambios funcionales
- Actualiza el `README.md` si agregas funcionalidades relevantes.


## Recomendaciones Power BI

- Usa **parámetros en Power Query** para las rutas de archivos.
- Trabaja siempre con **.pbip**, no con .pbix.
- Verifica que las dependencias del modelo (`.tmdl`) se mantengan consistentes.


Gracias por mantener la calidad del proyecto y proteger los datos.
