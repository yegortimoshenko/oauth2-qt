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

  CONFIG += create_pc create_prl

  QMAKE_PKGCONFIG_NAME = $$TARGET
  QMAKE_PKGCONFIG_DESCRIPTION = Cleaned up Qt5 OAuth 2.0 library
  QMAKE_PKGCONFIG_PREFIX = $$PREFIX
  QMAKE_PKGCONFIG_LIBDIR = $$target.path
  QMAKE_PKGCONFIG_INCDIR = $$headers.path
  QMAKE_PKGCONFIG_VERSION = 20180521.233208
  QMAKE_PKGCONFIG_DESTDIR = pkgconfig

  INSTALLS += headers target
}
