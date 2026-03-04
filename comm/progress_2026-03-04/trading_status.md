# Trading Bot – Estado Paper (2026-03-04)

## Entorno
- Proyecto: `projects/trading_bot_complete_con_manual`
- Python: micromamba `tradingbot` (3.11) + Poetry `.venv`
- Config actual: `PAPER_MODE=true`, `TEST_MODE=false` (velas reales, paper trades)
- Run command por sesión:
  ```bash
  cd projects/trading_bot_complete_con_manual
  poetry run python -m app.cli run --style all --interval 30 --symbol <PAR>
  ```

## Sesiones activas
| Par | Estrategias | Estado actual | Último fill |
| --- | --- | --- | --- |
| BTC/USDT | 15 (all) | Shorts `vwap_reversion_scalp` abiertos @ 69,920 y 70,627 | 2026-03-04 08:49:51Z |
| ETH/USDT | 15 (all) | Short `vwap_reversion_scalp` abierto @ 2,062.64 (el anterior se cerró en -0.18) | 2026-03-04 08:57:59Z |
| SOL/USDT | 15 (all) | Long `divergence_swing` abierto @ 89.37 (trailing stop 88.50) | 2026-03-04 08:56:36Z |

## Resumen de fills
(Generado con `poetry run python scripts/summarize_trades.py`)

- **BTC/USDT**
  - 2026-03-04T08:44:39Z · `vwap_reversion_scalp` · short 0.000715 BTC @ 69,920.00
  - 2026-03-04T08:49:51Z · `vwap_reversion_scalp` · short 0.000708 BTC @ 70,627.44
- **ETH/USDT**
  - 2026-03-04T08:56:12Z · `vwap_reversion_scalp` · short 0.02433 ETH @ 2,055.25 (cerrado -0.18)
  - 2026-03-04T08:57:59Z · `vwap_reversion_scalp` · short 0.02424 ETH @ 2,062.64 (activo)
- **SOL/USDT**
  - 2026-03-04T08:56:36Z · `divergence_swing` · long 0.55947 SOL @ 89.37 (activo)

Los logs completos viven en `projects/trading_bot_complete_con_manual/logs/trading.log`. El script `scripts/summarize_trades.py` permite volver a generar este resumen cuando haya más operaciones.
