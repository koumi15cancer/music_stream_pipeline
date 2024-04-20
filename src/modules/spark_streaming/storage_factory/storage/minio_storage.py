from storage_factory.storage.storage_base import Storage
from minio import Minio

class MinioStorage(Storage):
    def __init__(self, credentials):
        super().__init__(credentials)
        # Initialize MinIO client using credentials
        self.client = Minio(
            credentials['endpoint'],
            access_key=credentials['access_key'],
            secret_key=credentials['secret_key']
        )

    def read_data(self, bucket, file_path):
        # Read data from MinIO
        data = self.client.get_object(bucket, file_path).read()
        return data

    def write_data(self, data, bucket, file_path):
        # Write data to MinIO
        self.client.put_object(bucket, file_path, data, len(data))
