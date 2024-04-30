huaewi telemetry automation for mate 50 pro
workflow as below:
* exec 0_enable.sh: exec when booted, enable modem catch
* make some phone call
* exec 1_save.sh: exec when phone call is done, save the modem log file
* wait until the log is collected
* exec 2_move_clean.sh: pull model log to computer and clearn logs

environment:
* adb
* BetaClub need to be installed on phone

for none linux user, you can use python3 python_adapter.py $shell_script_path to performe the same exec as linux