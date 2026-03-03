# ops-sync

Repositorio para sincronizar comunicación entre main y laptop.

## Uso rápido
```bash
cd /home/monday/ops-sync
./scripts/sync_comm.sh pull   # traer instrucciones
# editar comm/*.md
./scripts/sync_comm.sh push   # enviar update
```

`./scripts/notify.sh <topic> "mensaje"` envía notificación vía ntfy (configura `NTFY_TOPIC` si no quieres pasar el nombre cada vez).
