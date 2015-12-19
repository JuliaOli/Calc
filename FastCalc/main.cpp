#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "operations.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<Operations>("Operation",1,0,"Integration");

    QQmlApplicationEngine engine;

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));


    return app.exec();
}

