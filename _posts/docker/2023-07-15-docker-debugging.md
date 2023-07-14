---
title: Keeping a Docker Container Running for Debugging
tags: [docker, debugging, containers]
---

## Introduction

When working with Docker containers, it can be helpful to keep a container running in the background while performing debugging or troubleshooting tasks. This guide will show you how to run a Docker container and keep it running using a specific command.

## The Command

The following Docker command allows you to start a container and keep it running:

```shell
docker run -it -d --name my_container <image_name> /usr/bin/env bash -c "yes"
```

Let's break down the command:

* `-it`: This option enables an interactive terminal session within the container.
* `-d`: This option runs the container in the background (detached mode).
* `--name my_container`: This option sets a custom name for the container, in this case, "my_container". You can choose any name you prefer.
* `<image_name>`: Replace this with the name of the Docker image you want to use for the container.
* `/usr/bin/env bash -c "yes"`: This command runs the "yes" command continuously inside the container. The "yes" command outputs "y" (yes) until interrupted. Letting us keep the container alive.

Using the Container

Once you run the command, the container will be started and kept running in the background. You can then perform various debugging tasks or check the container's behavior as needed.

To access the container's shell and interact with it, you can use the following command:

```
docker exec -it my_container bash
```

This will open an interactive shell session inside the running container, allowing you to execute commands and perform debugging tasks.
Conclusion

By using the provided Docker command, you can easily start a container and keep it running for debugging purposes. This allows you to investigate the container's behavior, check logs, and execute commands inside the container while it remains active in the background.

Remember to replace <image_name> with the actual Docker image you want to use for your container. With this approach, you have more flexibility and control over the container, enabling efficient debugging and troubleshooting.

Happy debugging 😀 !
