from twython import Twython, TwythonError
import glob
from PIL import Image, ImageDraw, ImageFont

app_key = "replace by yours"
app_secret = "replace by yours"
oauth_token = "replace by yours"
oauth_token_secret = "replace by yours"

tweetpic = r"yourfolder\yourimage.jpg"

twitter = Twython(app_key, app_secret, oauth_token, oauth_token_secret)
new_status = input("Update Twitter Status: ")
new_image = open(tweetpic,"rb")
response = twitter.upload_media(media=new_image)
#twitter.update_status(status=new_status)
twitter.update_status(status=new_status, media_ids=[response['media_id']])