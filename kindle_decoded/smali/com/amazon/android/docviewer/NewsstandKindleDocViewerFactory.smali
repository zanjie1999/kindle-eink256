.class public Lcom/amazon/android/docviewer/NewsstandKindleDocViewerFactory;
.super Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;
.source "NewsstandKindleDocViewerFactory.java"

# interfaces
.implements Lcom/amazon/android/docviewer/KindleDocViewerFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public openBook(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/system/security/Security;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 4

    .line 20
    invoke-static {}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->initialize()V

    .line 25
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isListableBookPeriodical(Lcom/amazon/kindle/model/content/IListableBook;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/amazon/nwstd/utils/BookItemUtils;->isYellowJerseyMagazine(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 27
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p1}, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;->createKRFDocument(Ljava/lang/String;Lcom/amazon/system/security/Security;Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    .line 33
    :cond_0
    new-instance v2, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    new-instance v3, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;

    invoke-direct {v3, p0, p1, p2}, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;-><init>(Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/system/security/Security;)V

    invoke-direct {v2, p1, v0, v3}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;)V

    .line 36
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object p1

    if-nez p1, :cond_1

    .line 37
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->closeDocument()V

    goto :goto_0

    :cond_1
    move-object v1, v2

    :cond_2
    :goto_0
    return-object v1
.end method
