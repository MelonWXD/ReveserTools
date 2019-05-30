adb shell dumpsys activity activities | sed -En -e '/Running activities/,/Run #0/p'
#adb shell dumpsys activity | grep mFocus
