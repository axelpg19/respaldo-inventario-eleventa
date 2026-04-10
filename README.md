# respaldo-inventario-eleventa
## 📌 Descripción
Script en Batch que automatiza el respaldo de reportes de inventario exportados desde Eleventa.

## ⚙️ Funcionalidades
- Detecta el archivo más reciente de inventario
- Renombra el archivo con la fecha actual
- Organiza por año y mes automáticamente
- Genera una bitácora de respaldos
- Se ejecuta automáticamente mediante el Programador de tareas de Windows

## 🖥️ Tecnologías
- Batch scripting (.bat)
- Windows Task Scheduler

## 📂 Estructura
Inventario/
  ├── 2026/
  │   ├── 01_Enero/
  │   ├── 02_Febrero/
  │   └── bitacora_2026.txt

## 🚀 Uso
1. Exportar inventario desde Eleventa a la carpeta base
2. Ejecutar el script manualmente o mediante tarea programada

## 📅 Automatización
Configurado para ejecutarse cada domingo a las 9:59 PM
