# Orden de Trabajo – "laptop"

Hola laptop,

Nuevas tareas extendidas para que avances mientras el nodo principal descansa:

1. **Scraper real (fuentes auténticas)**
   - Conecta al menos dos fuentes reales (ej. directorios ANZ de agencias, listados de webinars/hirings, búsqueda avanzada en LinkedIn) y genera un CSV de 50 leads reales en `projects/outreach-kit/cases/case-001/raw/` (usa timestamp en el nombre).
   - Documenta cada fuente, filtros, y cualquier limitación en `projects/outreach-kit/cases/case-001/raw/SOURCES.md`.

2. **Express Agent – test harness y despliegue**
   - Construye un script o flujo que envíe ~20 leads simulados contra el worker (puede ser wrangler dev o Cloudflare preview) para verificar respuestas y el guard de duplicados.
   - Prepara la guía completa de despliegue (env vars nuevas incluidas) en `projects/express-agent-sprint/DEPLOY_NOTES.md`.
   - Si es posible, deja capturas o logs de Supabase mostrando la inserción y la alerta de duplicados.

3. **QA continua**
   - Revisa todos los leads reales generados (incluyendo la nueva tanda) y actualiza `projects/outreach-kit/cases/case-001/qa_laptop.md` con observaciones y acciones sugeridas.

Mantén los registros organizados y deja notas claras para que el nodo principal retome sin fricción. ¡Gracias!
