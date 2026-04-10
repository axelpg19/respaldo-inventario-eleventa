# respaldo-inventario-eleventa
# 📦 Sistema de Respaldo Automático de Inventarios (Eleventa)

![Status](https://img.shields.io/badge/status-activo-success)
![Platform](https://img.shields.io/badge/platform-Windows-blue)
![Script](https://img.shields.io/badge/script-Batch%20\(.bat\)-lightgrey)

## 📌 Descripción

Este proyecto consiste en un **script automatizado en Batch (.bat)** diseñado para gestionar respaldos de inventario exportados desde el sistema Eleventa.

El script detecta automáticamente archivos de inventario, los renombra con base en la fecha actual y los organiza en una estructura de carpetas por año y mes, generando además una bitácora de ejecución.

---

## ⚙️ Funcionalidades

✔️ Detección automática del archivo más reciente
✔️ Renombrado dinámico con fecha (YYYY-MM-DD)
✔️ Organización automática por año y mes
✔️ Creación de carpetas si no existen
✔️ Registro en bitácora (logs)
✔️ Compatible con ejecución automatizada (Task Scheduler)
✔️ No depende del nombre original del archivo

---

## 🗂️ Estructura de Carpetas

```
Inventario/
│
├── 2026/
│   ├── 01_Enero/
│   │   └── Inventario_2026-01-15.xlsx
│   ├── 02_Febrero/
│   └── bitacora_2026.txt
│
├── 2027/
│   └── ...
```

---

## 🚀 ¿Cómo funciona?

1. El usuario exporta el inventario desde Eleventa a la carpeta base.
2. El script:

   * Busca el archivo más reciente (.xls o .xlsx)
   * Obtiene la fecha actual del sistema
   * Renombra el archivo
   * Lo mueve a su carpeta correspondiente
3. Se registra la acción en una bitácora.

---

## 🖥️ Requisitos

* Sistema operativo Windows
* Acceso a línea de comandos (CMD)
* Eleventa (para generar los archivos de inventario)

---

## 📂 Configuración

Dentro del script, puedes modificar la ruta base:

```bat
set base=%USERPROFILE%\Documents\Respaldos Eleventa\Inventario
```

---

## ⏰ Automatización (Recomendado)

Se recomienda usar el **Programador de tareas de Windows** para ejecutar el script automáticamente.

Ejemplo de configuración:

* Frecuencia: Semanal
* Día: Domingo
* Hora: 9:59 PM

---

## 📝 Bitácora

El sistema genera automáticamente un archivo de registro por año:

```
bitacora_2026.txt
```

Ejemplo de registro:

```
[2026-04-10 21:59] Respaldo creado: 04_Abril\Inventario_2026-04-10.xlsx
```

---

## 💡 Casos de uso

* Tiendas de abarrotes con Eleventa
* Control de inventario histórico
* Automatización de respaldos sin intervención manual

---

## 🔧 Tecnologías utilizadas

* Batch scripting (.bat)
* Windows Task Scheduler

---

## 📈 Posibles mejoras futuras

* Versión en PowerShell o Python
* Interfaz gráfica
* Notificaciones automáticas
* Soporte para múltiples sucursales

---

## 👨‍💻 Autor

Desarrollado por Axel Ponce
Proyecto personal enfocado en automatización de procesos reales

---

## 📄 Licencia

Este proyecto es de uso libre con fines prácticos.
