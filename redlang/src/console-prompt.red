Red [
    Title: ""
    References: [
        http://red.reb4.me/news/2016/03/060-red-gui-system
    ]
]

system/console/prompt: does [

    now-time: now/time
    either ((now-time > 12:00) and (now-time < 14:00)) [
        rejoin [now-time " Lunch Time!!! >> "]
    ][
        rejoin [to-local-file system/options/path " > " now-time " >> "]
    ]
]
