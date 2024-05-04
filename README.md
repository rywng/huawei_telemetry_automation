# Telemetry automation for Huawei Mate 50 pro

## Workflow description:

- `0_enable.sh`: exec when booted, enable modem catch
- make some phone call
- `1_save.sh`: exec when phone call is done, save the modem log file
- wait until the log is collected
- `2_move_clean.sh`: pull model log to computer and clear logs

## Dependency:

- `adb`
- `BetaClub` need to be installed on phone

> for none Linux user, you can use `python3 python_adapter.py $shell_script_path` to execute the script
