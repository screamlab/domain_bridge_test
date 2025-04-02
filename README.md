# Domain Bridge Test

This repository demonstrates how to bridge different ROS 2 Domain IDs using Docker.

## Structure
- **config.yaml**: Domain bridge configuration for topics.
- **publisher.sh**: Publishes an integer message (Domain ID = 1).
- **subscriber.sh**: Subscribes to the same topic (Domain ID = 2) and echoes received messages.

## Usage

1. Open a terminal and run:
   ```bash
   ./publisher.sh
   ```
   This publishes an integer message to `/test` under Domain ID = 1.

2. In another terminal, run:
   ```bash
   ./subscriber.sh
   ```
   This starts a container with domain bridge and subscribes to `/test`.
