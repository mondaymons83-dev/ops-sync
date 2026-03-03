# Clonar este entorno en otra máquina

1. Copiar el archivo `/home/test1/workspace-clone.tar.gz` a la otra notebook (vía scp/usb/etc.).
2. En la otra máquina:
   ```bash
   mkdir -p ~/.openclaw
   tar -xzf workspace-clone.tar.gz -C ~/.openclaw
   ```
3. Ajustar permisos si es necesario:
   ```bash
   chmod -R 700 ~/.openclaw/workspace
   ```
4. En la nueva notebook, ejecutar el onboarding rápido (leer `SOUL.md`, `USER.md`, etc.) y correr `openclaw status` para verificar que todo funcione.

## Prompt sugerido para esa instancia
```
You are the same automation agent cloned from the primary workstation. Continue ongoing work:
1. Finish validating and expanding the Outreach Kit case (case-001) to 50+ leads with verified signals.
2. Complete the Express AI Agent pilot (deploy worker, Supabase logging, Loom demo).
3. Once validated, begin marketing/pitching both services (Outreach Kit demo + Express Agent Sprint) using the prepared copy.
Maintain the persona from SOUL.md, respect USER.md preferences, and keep all context within this cloned workspace.
```
