## Shut down each instance of polybar
killall -q polybar


# Launch Polybar, on each monitor
polybar mybar 2>&1 | tee -a /tmp/polybar.log & disown
polybar secondary 2>&1 | tee -a /tmp/polybar.log & disown
echo "Polybar launched..."
