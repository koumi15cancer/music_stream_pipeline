from storage_factory.storage.storage_base import Storage
import boto3

class S3Storage(Storage):
    def __init__(self, credentials):
        super().__init__(credentials)
        # Initialize S3 client using credentials
        self.client = boto3.client(
            's3',
            aws_access_key_id=credentials['access_key'],
            aws_secret_access_key=credentials['secret_key']
        )

    def read_data(self, bucket, file_path):
        # Read data from S3
        response = self.client.get_object(Bucket=bucket, Key=file_path)
        data = response['Body'].read()
        return data

    def write_data(self, data, bucket, file_path):
        # Write data to S3
        self.client.put_object(Bucket=bucket, Key=file_path, Body=data)
