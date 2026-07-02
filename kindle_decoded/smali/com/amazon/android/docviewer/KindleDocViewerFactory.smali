.class public interface abstract Lcom/amazon/android/docviewer/KindleDocViewerFactory;
.super Ljava/lang/Object;
.source "KindleDocViewerFactory.java"


# virtual methods
.method public abstract openBook(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/system/security/Security;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/KindleDocViewerGenerator$InvalidBookCompositionException;
        }
    .end annotation
.end method
