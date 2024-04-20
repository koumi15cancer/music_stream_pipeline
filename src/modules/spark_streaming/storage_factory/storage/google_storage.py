from google.cloud import storage

class GoogleStorage:
    def __init__(self, credentials):
        # Initialize Google Cloud Storage client using credentials
        self.client = storage.Client.from_service_account_json(credentials)

    def read_data(self, bucket_name, file_path):
        # Read data from Google Cloud Storage
        bucket = self.client.get_bucket(bucket_name)
        blob = bucket.blob(file_path)
        data = blob.download_as_string()
        return data

    def write_data(self, data, bucket_name, file_path):
        # Write data to Google Cloud Storage
        bucket = self.client.get_bucket(bucket_name)
        blob = bucket.blob(file_path)
        blob.upload_from_string(data)
