.class public Lcom/amazon/android/docviewer/yj/KRIFDictionaryDocViewerFactory;
.super Lcom/amazon/kindle/rendering/KRIFDocViewerFactory;
.source "KRIFDictionaryDocViewerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected createDocViewer(Lcom/amazon/kindle/rendering/KRIFBookItem;Lcom/amazon/krf/platform/KRFBook;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 1

    .line 34
    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFBookItem;->hasDictionaryLookups()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 38
    :cond_0
    new-instance v0, Lcom/amazon/android/docviewer/yj/KRIFDictionaryDocViewer;

    invoke-direct {v0, p1, p2}, Lcom/amazon/android/docviewer/yj/KRIFDictionaryDocViewer;-><init>(Lcom/amazon/kindle/rendering/KRIFBookItem;Lcom/amazon/krf/platform/KRFBook;)V

    return-object v0
.end method

.method public openBook(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/system/security/Security;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/KindleDocViewerGenerator$InvalidBookCompositionException;
        }
    .end annotation

    .line 24
    invoke-super {p0, p1, p2}, Lcom/amazon/kindle/rendering/KRIFDocViewerFactory;->openBook(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/system/security/Security;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    return-object p1
.end method
