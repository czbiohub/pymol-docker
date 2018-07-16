# pymol-docker
Docker image for open-source pymol

## This image is broken - needs $DISPLAY variable set propely

Current output:

```
Mon 16 Jul - 12:44  ~/code/pymol-docker   origin ☊ master ✔ 1☀ 
  sudo docker run -it -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix czbiohub/pymol
Password:
Unable to find image 'czbiohub/pymol:latest' locally
docker: Error response from daemon: manifest for czbiohub/pymol:latest not found.
See 'docker run --help'.
```

### Setting Unix X11 window display

Followed [these instructions](https://github.com/edwinksl/pymol-docker) for setting up `$DISPLAY` and got this error:

```
(base)
 ✘  Mon 16 Jul - 12:44  ~/code/pymol-docker   origin ☊ master ✔ 1☀ 
  sudo docker run -it -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix czbiohub/pymol-docker
root@cedb43594b09:/# pymol
freeglut (pymol): failed to open display '/private/tmp/com.apple.launchd.ZCFUqOgHtG/org.macosforge.xquartz:0'
 PyMOL: abrupt program termination.
root@cedb43594b09:/# pymol --help
freeglut (pymol): failed to open display '/private/tmp/com.apple.launchd.ZCFUqOgHtG/org.macosforge.xquartz:0'
 PyMOL: abrupt program termination.
```

### Mac OS XQuartz display

May need to do something like this: https://medium.com/@mreichelt/how-to-show-x11-windows-within-docker-on-mac-50759f4b65cb
