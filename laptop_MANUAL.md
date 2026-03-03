# Manual de Operación – "laptop"

## 1. Arranque de Turno
1. **Load persona:** leer `SOUL.md`, `USER.md`, y `HEARTBEAT.md` (obligatorio).
2. **Sync comunicación:**
   - `cd /home/test1/ops-sync`
   - `./scripts/sync_comm.sh pull`
   - Revisar `comm/main_to_laptop.md` para instrucciones nuevas.
3. **Revisar pendientes:** consultar `laptop_TASKS.md` + archivos específicos del proyecto.
4. **Registrar inicio:** agregar entrada en `comm/laptop_to_main.md` (timestamp, plan) y `push`.

## 2. Proyectos Principales
### Outreach Kit
- Directorio: `projects/outreach-kit`
- Tareas típicas: scraping, limpieza, QA, generación de snippets.
- Ubicaciones clave:
  - `cases/case-001/`: config, leads, snippets, QA.
  - `cases/case-001/raw/`: corridas diarias de scraping.
  - `cases/case-001/qa_laptop.md`: reportar hallazgos/errores.
- Entregables: CSVs con señales reales, notas en `qa_laptop.md`.

### Express AI Agent Sprint
- Directorio: `projects/express-agent-sprint`
- `sample-agent/`: Cloudflare worker + scripts.
- Documentar progreso en `NOTES_laptop.md` y `DEPLOY_NOTES.md`.
- Pendiente actual: test harness, despliegue, logs Supabase.

## 3. Comunicación
- Usa el repo `ops-sync`:
  ```bash
  cd /home/test1/ops-sync
  ./scripts/sync_comm.sh pull
  # Edita comm/laptop_to_main.md
  ./scripts/sync_comm.sh push
  ```
- Para alertas inmediatas: `./scripts/notify.sh <topic> "mensaje"`

## 4. Cierre de Turno
1. Guardar todos los outputs en las carpetas correspondientes.
2. Añadir entrada final en `comm/laptop_to_main.md` (qué hiciste, bloqueos, TODO).
3. `./scripts/sync_comm.sh push`.
4. Si hay urgencias, enviar ntfy.

## 5. Escalación / Banderas
- Bloqueos de acceso (API, permisos): reportar en `comm/laptop_to_main.md` y ntfy.
- Dudas de priorización: reconfirmar en el canal antes de seguir.
- Errores críticos (datos corruptos, deploy fallido): documentar y pausar.

Mantén este manual abierto y actualiza en `laptop_TASKS.md` si aparecen nuevas responsabilidades.

## 6. Model Strategy
- Usa GPT-4o mini (o similar) para reporting/chat. Cambia a GPT-4o Turbo sólo cuando realices tareas complejas (coding avanzado, reasoning).
- Documenta en `comm/laptop_to_main.md` cuando cambies de modelo y por qué (para tracking de costos).
