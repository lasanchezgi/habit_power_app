from flask import Flask

app = Flask(__name__)  # Crear una instancia de Flask

@app.route("/")  # Definir la ruta de la página principal
def home():
    return "¡Hola, esta es mi primera app con Flask! Estoy feliz <3 <3 "

if __name__ == "__main__":
    app.run(debug=True)  # Ejecutar la app en modo depuración