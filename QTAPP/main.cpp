#include <QGuiApplication>
#include <QQmlApplicationEngine>

using namespace Qt::StringLiterals;

int main(int argc, char *argv[]) {
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    
    // Correct URL path registered by CMake's qt_add_qml_module
    const QUrl url(u"main.qml"_s);
    
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreated,
        &app,
        [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        },
        Qt::QueuedConnection);
    
    engine.load(url);

    return app.exec();
}