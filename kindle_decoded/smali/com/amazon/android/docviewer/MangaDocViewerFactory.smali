.class public Lcom/amazon/android/docviewer/MangaDocViewerFactory;
.super Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;
.source "MangaDocViewerFactory.java"

# interfaces
.implements Lcom/amazon/android/docviewer/KindleDocViewerFactory;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/amazon/android/docviewer/MangaDocViewerFactory;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/MangaDocViewerFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public openBook(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/system/security/Security;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/KindleDocViewerGenerator$InvalidBookCompositionException;
        }
    .end annotation

    .line 32
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->hasMobiExtension(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/amazon/kindle/modules/MangaViewerModule;->isManga(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/amazon/kindle/modules/MangaViewerModule;->isComic(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 33
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;->createKRFDocumentForBookOpen(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/system/security/Security;)Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    move-result-object p2

    if-nez p2, :cond_1

    return-object v1

    .line 38
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->getDocumentInfo()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 40
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->isFixedLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getOriginalHeight()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getOriginalWidth()I

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    :cond_2
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    new-instance v1, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-direct {v1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;-><init>()V

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Lcom/amazon/android/docviewer/mobi/KRFExecutorService;)V

    .line 48
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->renderFirstPage()Z

    return-object v0

    .line 41
    :cond_3
    sget-object p2, Lcom/amazon/android/docviewer/MangaDocViewerFactory;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Want to open "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "as Manga, but it has a fixed layout, but a zero for originalHeight or originalWidth. If you see this, the content for this AISN is invalid, and you should raise a ticket for it."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance p1, Lcom/amazon/android/docviewer/KindleDocViewerGenerator$InvalidBookCompositionException;

    const-string p2, "InvalidHeightOrWidth"

    invoke-direct {p1, p2}, Lcom/amazon/android/docviewer/KindleDocViewerGenerator$InvalidBookCompositionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object v1
.end method
