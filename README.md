# Dashboard Power BI - Proyecto Colaborativo


## Uso

1. Clona este repositorio:
   ```bash
   git clone https://github.com/Barrera1712/DashboardPowerBI.git
   ```
2. Abre el archivo `DashboardPowerBI.pbip` en **Power BI Desktop**.
3. Si quieres usar tus datos reales:
   - Coloca tu Excel local **fuera del repositorio** (por seguridad).
   - En Power Query → **Administrar parámetros → dataRout** cambia el valor actual por tu ruta local (ej. `C:\MisDatos\archivo.xlsx`).
4. Refresca el modelo para cargar tus datos.
5. Trabaja normalmente y guarda cambios.


## Seguridad de datos

- Los datos reales **no deben subirse al repositorio**.  
- Los parámetros (`dataRout`) permiten conectar localmente tus datos reales sin modificar el proyecto base.


## Colaboración

- Cada colaborador trabaja en su rama (`feature/<nombre>` o `fix/<nombre>`).
- Nunca subir `.pbix`, `.pbit` ni archivos Excel con datos sensibles.
- Los commits deben ser descriptivos y atómicos.


## Tecnologías

- Power BI Desktop (versión 2024 o superior)
- Estructura `.pbip` (Power BI Project)
- Git y GitHub para control de versiones
