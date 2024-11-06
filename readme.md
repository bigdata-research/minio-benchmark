
# MinIO Warp Benchmark Documentation

This document provides a summary of commands to benchmark MinIO server using Warp. Each command is configured to 
benchmark specific operations on a MinIO S3 server. Replace `minio{1...4}:9000` with your MinIO server instances if they differ.

## Prerequisites
Ensure that Warp is installed and properly configured. For more details, refer to the [official documentation](https://github.com/minio/warp/blob/master/README.md).

## Benchmark Commands

1. **PUT Benchmark**  
   Benchmark to measure upload speed to the S3 server.
   ```bash
   warp put --host=minio{1...4}:9000 --access-key=minioadmin --secret-key=minioadmin --autoterm
   ```

2. **GET Benchmark**  
   Benchmark to measure download speed from the S3 server.
   ```bash
   warp get --host=minio{1...4}:9000 --access-key=minioadmin --secret-key=minioadmin --autoterm
   ```

3. **DELETE Benchmark**  
   Benchmark to measure object deletion speed.
   ```bash
   warp delete --host=minio{1...4}:9000 --access-key=minioadmin --secret-key=minioadmin --autoterm
   ```

4. **LIST Benchmark**  
   Benchmark to measure the speed of listing objects in a bucket.
   ```bash
   warp list --host=minio{1...4}:9000 --access-key=minioadmin --secret-key=minioadmin --autoterm
   ```

5. **MIXED Benchmark**  
   Benchmark to simulate a mixed workload (PUT, GET, DELETE, LIST).
   ```bash
   warp mixed --host=minio{1...4}:9000 --access-key=minioadmin --secret-key=minioadmin --autoterm
   ```

6. **STAT Benchmark**  
   Benchmark to measure the speed of stat metadata operations on objects.
   ```bash
   warp stat --host=minio{1...4}:9000 --access-key=minioadmin --secret-key=minioadmin --autoterm
   ```

7. **MULTIPART Benchmark**  
   Benchmark to measure upload speed for large objects using multipart upload.
   ```bash
   warp multipart --host=minio{1...4}:9000 --access-key=minioadmin --secret-key=minioadmin --autoterm --duration=3m
   ```

8. **VERSIONED Benchmark**  
   Benchmark to measure performance on buckets with versioning enabled.
   ```bash
   warp versioned --host=minio{1...4}:9000 --access-key=minioadmin --secret-key=minioadmin --autoterm
   ```

9. **ZIP Benchmark**  
   Benchmark to measure upload and extraction performance for ZIP archives.
   ```bash
   warp zip --host=minio{1...4}:9000 --access-key=minioadmin --secret-key=minioadmin --autoterm
   ```

## Notes
- `--host=minio{1...4}:9000` allows Warp to access MinIO servers in parallel across `minio1` to `minio4` instances.
- `--autoterm` automatically stops the benchmark upon stability.
- Replace `minioadmin` with your actual access and secret keys if they differ.

For additional options and advanced configurations, refer to the [Warp GitHub repository](https://github.com/minio/warp/blob/master/README.md).

by : @kevinwillcode