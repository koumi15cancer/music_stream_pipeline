import unittest
from unittest.mock import MagicMock, patch
import pandas as pd
from dotenv import dotenv_values
import os

# Import the class to be tested
from src.spotify_utils import SpotifyUtils

# Get the directory of the currently executing script (test_spotify_utils.py)
current_dir = os.path.dirname(__file__)
# Go up one level to access the project directory
project_dir = os.path.dirname(current_dir)
# Path to the .env file in the project directory
env_file_path = os.path.join(project_dir, ".env")
# Load variables from .env file
config = dotenv_values(env_file_path)

# Access variables
cliend_id = config["SPOTIFY_CLIENT_ID"]
client_secret = config["SPOTIFY_CLIENT_SECRET"]

class TestSpotifyUtils(unittest.TestCase):
    #@patch('spotify_utils.SpotifyClientCredentials')
    #@patch('spotify_utils.Spotify')
    def test_get_top_tracks_by_artists(self):
        # Mock Spotify API client
        # mock_spotify_instance = mock_spotify.return_value
        # mock_credentials_instance = mock_credentials.return_value

        # # Mock Spotify API response
        # mock_tracks_response = {
        #     "tracks": [
        #         {"id": "track_id_1", "duration_ms": 300000, "name": "Song 1",
        #          "album": {"release_date": "2022-01-01", "name": "Album 1"}},
        #         {"id": "track_id_2", "duration_ms": 240000, "name": "Song 2",
        #          "album": {"release_date": "2022-02-01", "name": "Album 2"}},
        #         {"id": "track_id_3", "duration_ms": 180000, "name": "Song 3",
        #          "album": {"release_date": "2022-03-01", "name": "Album 3"}}
        #     ]
        # }
        # mock_spotify_instance.artist_top_tracks.return_value = mock_tracks_response

        # Initialize SpotifyUtils with mocked client credentials
        spotify_utils = SpotifyUtils(client_id=cliend_id, client_secret=client_secret)

        # Call the method under test
        artist_id = "test_artist_id"
        artist_id = "6dTVAhB03h53w5MHSUXhtY"
        tracks_df = spotify_utils.get_top_tracks_by_artists(artist_id)

        # Define the expected DataFrame
        expected_df = pd.DataFrame({
            "song_id": ["track_id_1", "track_id_2", "track_id_3"],
            "duration_ms": [300000, 240000, 180000],
            "release_date": ["2022-01-01", "2022-02-01", "2022-03-01"],
            "song_title": ["Song 1", "Song 2", "Song 3"],
            "album_name": ["Album 1", "Album 2", "Album 3"],
            "artist_id": ["test_artist_id", "test_artist_id", "test_artist_id"]
        })

        # Assert that the result matches the expected DataFrame
        pd.testing.assert_frame_equal(tracks_df, expected_df)

if __name__ == '__main__':
    unittest.main()
