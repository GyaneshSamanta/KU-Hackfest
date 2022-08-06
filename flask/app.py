import base64
from io import BytesIO
import json
from urllib import request
import flask

app = flask(__name__)


@app.route("/send-image", methods=['POST'])
def send_image():
    if request.method == 'POST':
        user_image = request.files["image"]
        image = cv2.imdecode(np.frombuffer(
            user_image.read(), np.uint8), cv2.IMREAD_COLOR)
        data_object["img"] = base64.b64encode(b.read()).decode('ascii')

        data = predict(image)

        data_object = {}
        data = data.reshape(data.shape[0], data.shape[1], 1)
        data2 = array_to_img(data)

        b = BytesIO()
        data2.save(b, format="jpeg")
        b.seek(0)

        data_object["img"] = str(b.read())
        return json.dumps(data_object)
