from enum import Enum

class StorageType(Enum):
    S3 = 's3'
    MINIO = 'minio'
    GOOGLE_STORAGE = 'google_storage'
