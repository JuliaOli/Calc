#include "operations.h"

Operations::Operations(QQuickItem *parent)
{

}

QString Operations::number1() const
{
    return m_number1;
}

QString Operations::number2() const
{
    return m_number2;
}

QString Operations::result() const
{
    return m_result;
}

void Operations::setNumber1(QString number1)
{
    if (m_number1 == number1)
        return;

    m_number1 = number1;
    emit number1Changed(number1);
}

void Operations::setNumber2(QString number2)
{
    if (m_number2 == number2)
        return;

    m_number2 = number2;
    emit number2Changed(number2);
}

void Operations::setResult(QString result)
{
    if (m_result == result)
        return;

    m_result = result;
    emit resultChanged(result);
}

void Operations::sum()
{
    int aux;

    aux = number1().toInt() + number2().toInt();

    setResult(QString::number(aux));

}

void Operations::subtraction()
{
    int aux;

    aux = number1().toInt() - number2().toInt();

    setResult(QString::number(aux));

}

void Operations::multiplication()
{
    int aux;

    aux = number1().toInt() * number2().toInt();

    setResult(QString::number(aux));
}

void Operations::division()
{
    int aux;

    aux = number1().toInt() / number2().toInt();

    setResult(QString::number(aux));
}

