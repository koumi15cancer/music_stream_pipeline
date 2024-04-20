import yaml
from storage_factory.enums import StorageType
from storage_factory.storage.s3_storage import S3Storage
from storage_factory.storage.minio_storage import MinioStorage
from storage_factory.storage.google_storage import GoogleStorage

class StorageFactory:
    @staticmethod
    def create_storage(config_file):
        with open(config_file, 'r') as f:
            config = yaml.safe_load(f)

        storage_type = StorageType(config.get('storage_type'))
        if storage_type == StorageType.S3:
            return S3Storage(config['s3_credentials'])
        elif storage_type == StorageType.MINIO:
            return MinioStorage(config['minio_credentials'])
        elif storage_type == StorageType.GOOGLE_STORAGE:
            return GoogleStorage(config['google_storage_credentials'])
        else:
            raise ValueError("Invalid storage type specified in configuration")
