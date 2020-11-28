from flask import Flask
import db
import auth
import todo


def create_app():
    app = Flask(__name__)

    # Para definir variables de configuracion para usar en aplicacion
    app.config.from_mapping(
        # Para seciones en la aplicación
        SECRET_KEY= "febre",
        DATABASE_HOST= 'localhost',
        DATABASE_PASSWORD= '12345',
        DATABASE_USER= 'root',
        DATABASE= 'todo',
    )

    db.init_app(app)

    app.register_blueprint(auth.bp)
    app.register_blueprint(todo.bp)

    # Crear ruta de pruebas
    @app.route("/hola")
    def hola():
        return "Hola Mijines"


    if __name__ == '__main__':
        app.run(port=5000, debug=True)

    return app

create_app()
