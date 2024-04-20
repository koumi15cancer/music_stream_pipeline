from abc import ABC, abstractmethod

class Storage(ABC):
    def __init__(self, credentials):
        self.credentials = credentials

    @abstractmethod
    def read_data(self, bucket, file_path):
        pass

    @abstractmethod
    def write_data(self, data, bucket, file_path):
        pass
