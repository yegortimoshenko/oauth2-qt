QT += webkit webkitwidgets widgets

TARGET = qt-oauth-lib
TEMPLATE = lib

SOURCES += oauth2.cpp logindialog.cpp
HEADERS += oauth2.h logindialog.h
FORMS += logindialog.ui

headers.files = $$HEADERS

unix {
  headers.path = $$PREFIX/include
  target.path = $$PREFIX/lib

  INSTALLS += headers target
}
