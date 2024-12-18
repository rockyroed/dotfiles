# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Define the tray position monitor
TRAY_POS="HDMI-1"  # Change this to the monitor name where you want the tray or use "primary" for the primary monitor

# Launch Polybar instances
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    if [ "$m" = "$(xrandr --query | grep primary | cut -d" " -f1)" ]; then
      TRAY_POS=$m  # Dynamically assign tray position to the primary monitor
    fi
    MONITOR=$m TRAY_POS=$TRAY_POS polybar --reload toph &
  done
else
    MONITOR=default TRAY_POS=default polybar --reload toph &
fi

echo "Bars launched..."

