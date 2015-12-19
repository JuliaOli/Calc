TEMPLATE = app

QT += qml quick
CONFIG += c++11

SOURCES += main.cpp \
    operations.cpp

RESOURCES += qml.qrc

RC_ICONS = mathsign.ico

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.

include(deployment.pri)

HEADERS += \
    operations.h

