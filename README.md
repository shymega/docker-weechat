Weechat in a container!
============

## Building

To build, run

```shell
docker build -t <image_name> .
```

## Running

To run the container in detached mode:

```
docker run -dti -v <path_to_weechat_dir>:/weechat/.weechat <image_name>
```

To run the container in interactive mode:

```
docker run -ti -v <path_to_weechat_dir>:/weechat/.weechat <image_name>
```

## License

`weechat-docker` is licensed under the MIT [license](/LICENSE).
