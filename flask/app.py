from flask import Flask, request, jsonify
import werkzeug
import tensorflow as tf
import numpy as np
import keras
from joblib import load

app = Flask(__name__)

pipeline = load("model.pkl")


@app.route("/upload", methods=["POST"])
def upload():
    if request.method == "POST":
        imagefile = request.files['image']
        filename = werkzeug.utils.secure_filename(imagefile.filename)
        imagefile.save(" ./uploaded-image/" + filename)
        return jsonify({
            "message": "Image upload success"
        })


def conversion(image):
    img = tf.keras.utils.load_image(image, target_size=(256, 256))
    img = tf.keras.preprocessing.image.img_to_array(test_img)
    img = np.expand_dims(img, axis=0)
    return img


def predict(image):
    to_predict = conversion(image)
    prediction = pipeline.predict(to_predict)
    dis = np.argmax(prediction)
    return dis


result = pipeline.predict(imagefile)

if result == 0:
    prediction = 'Apple Scab'
elif result == 1:
    prediction = 'Apple Black Rot'
elif result == 2:
    prediction = 'Cedar Apple rust'
elif result == 3:
    prediction = 'healthy'
elif result == 4:
    prediction = 'healthy'
elif result == 5:
    prediction = 'Powdery mildew'
elif result == 6:
    prediction = 'healthy'
elif result == 7:
    prediction = 'Cercospora'
elif result == 8:
    prediction = 'Common rust'
elif result == 9 :
    prediction = 'northern leaf blight'
elif result == 10:
    prediction = 'healthy'
elif result == 11:
    prediction = 'black rot'
elif result == 12:
    prediction = 'black measles'
elif result == 13:
    prediction = 'lsariopsis leaf spot'
elif result == 14:
    prediction = 'healthy'
elif result == 15:
    prediction = 'haunglongbing'
elif result == 16:
    prediction = 'bacterial spot'
elif result == 17:
    prediction = 'healthy'
elif result == 18:
    prediction = 'bacterial spot'
elif result == 19:
    prediction = 'healthy'
elif result == 20:
    prediction = 'early blight'
elif result == 21:
    prediction = 'late blight'
elif result == 22:
    prediction = 'healthy'
elif result == 23:
    prediction = 'healthy'
elif result == 24:
    prediction = 'healthy'
elif result == 25:
    prediction = 'powdery mildew'
elif result == 26:
    prediction = 'leaf scorch'
elif result == 27:
    prediction = 'healthy'
elif result == 28:
    prediction = 'bacterial spot'
elif result == 29:
    prediction = 'early blight'
elif result == 30:
    prediction = 'late blight'
elif result == 31:
    prediction = 'leaf mold'
elif result == 32:
    prediction = 'septoria leaf spot'
elif result == 33:
    prediction = 'two spotted spider mite'
elif result == 34:
    prediction = 'target spot'
elif result == 35:
    prediction = 'yellow leaf curl virus'
elif result == 36:
    prediction = 'mosaic virus'
elif result == 37:
    prediction = 'healthy'

if __name__ == "__main__":
    app.run(debug=True, port=4000)
