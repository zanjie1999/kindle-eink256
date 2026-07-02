.class public Lcom/amazon/android/docviewer/mobi/MobiDictionaryDocViewerFactory;
.super Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;
.source "MobiDictionaryDocViewerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic openBook(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/system/security/Security;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/KindleDocViewerGenerator$InvalidBookCompositionException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/amazon/android/docviewer/mobi/MobiDictionaryDocViewerFactory;->openBook(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/system/security/Security;)Lcom/amazon/android/docviewer/mobi/MobiDictionaryDocViewer;

    move-result-object p1

    return-object p1
.end method

.method public openBook(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/system/security/Security;)Lcom/amazon/android/docviewer/mobi/MobiDictionaryDocViewer;
    .locals 4

    .line 12
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasDictionaryLookups()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 15
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p2, p1}, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;->createKRFDocument(Ljava/lang/String;Lcom/amazon/system/security/Security;Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 21
    :cond_1
    new-instance v1, Lcom/amazon/android/docviewer/mobi/MobiDictionaryDocViewer;

    new-instance v2, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-direct {v2}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;-><init>()V

    new-instance v3, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;

    invoke-direct {v3, p0, p1, p2}, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;-><init>(Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/system/security/Security;)V

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/amazon/android/docviewer/mobi/MobiDictionaryDocViewer;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;)V

    return-object v1
.end method
