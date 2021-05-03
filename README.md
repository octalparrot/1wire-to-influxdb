# 1wire to influxdb
Simple script to report temperature from 1wire to influx db.

On Raspbian these packages you must install
```apt install digitemp curl```

You could add it in cron to do this repeatedly.

## Usage

```
1. Copy and place .digitemprc to your $HOME folder in my cause root
2. Run digitemp_DS9097U -i to initialize file with your serial numbers.
3. Edit variables in temp.sh, then run or add it to cron :)
```
