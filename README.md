# Cloud-Native IoT Telemetry & Alerting Platform

A cloud-native, distributed telemetry system that simulates, ingests, processes, and visualizes real-time IoT sensor data at scale. The platform demonstrates modern Cloud Engineering patterns using Kubernetes, streaming data pipelines, and managed AWS services.
## System Architecture (WIP)
<img width="1200" height="1400" alt="image" src="https://github.com/user-attachments/assets/532d5e7f-9533-4763-bda9-7e8dd123e897" />

## Overview

- Simulates ~500 IoT sensors publishing telemetry over MQTT

- Ingests and streams data via VerneMQ, AWS Kinesis Data Streams, and Spring Boot services

- Persists time-series data in Amazon Timestream with Redis-based read-through caching

- Exposes REST APIs for real-time and historical analytics (averages, rate of change, max, standard deviation)

- Pushes real-time alerts to a web dashboard using WebSockets

- Deployed and orchestrated on Kubernetes (EKS) with Dockerized microservices

## Alerts & Analytics

- Threshold-based and aggregated alerts (flood warnings, high turbidity, battery alerts)

- Per-device and per-site alert evaluation with clear conditions

- Live dashboard showing current metrics and alert notifications

## Status

Currently in progress!
