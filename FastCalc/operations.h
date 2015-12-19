#ifndef OPERATIONS_H
#define OPERATIONS_H
#include <QObject>
#include <QQuickItem>
#include <QDebug>
#include <QString>

class Operations : public QQuickItem
{
    Q_OBJECT
    Q_PROPERTY(QString number1 READ number1 WRITE setNumber1 NOTIFY number1Changed)
    Q_PROPERTY(QString number2 READ number2 WRITE setNumber2 NOTIFY number2Changed)
    Q_PROPERTY(QString result READ result WRITE setResult NOTIFY resultChanged)

    QString m_number1;

    QString m_number2;

    QString m_result;

public:

    Operations(QQuickItem*parent=0);

    QString number1() const;

    QString number2() const;

    QString result() const;

signals:

    void number1Changed(QString number1);

    void number2Changed(QString number2);

    void resultChanged(QString result);

public slots:

    void setNumber1(QString number1);

    void setNumber2(QString number2);

    void setResult(QString result);

    void sum();

    void subtraction();

    void multiplication();

    void division();
};

#endif // OPERATIONS_H
