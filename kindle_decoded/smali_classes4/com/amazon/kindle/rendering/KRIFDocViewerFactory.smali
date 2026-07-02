.class public Lcom/amazon/kindle/rendering/KRIFDocViewerFactory;
.super Ljava/lang/Object;
.source "KRIFDocViewerFactory.java"

# interfaces
.implements Lcom/amazon/android/docviewer/KindleDocViewerFactory;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/kindle/rendering/KRIFDocViewerFactory;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFDocViewerFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected createDocViewer(Lcom/amazon/kindle/rendering/KRIFBookItem;Lcom/amazon/krf/platform/KRFBook;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 1

    .line 65
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kindle/rendering/KRIFDocViewer;-><init>(Lcom/amazon/kindle/rendering/KRIFBookItem;Lcom/amazon/krf/platform/KRFBook;)V

    return-object v0
.end method

.method public openBook(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/system/security/Security;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/KindleDocViewerGenerator$InvalidBookCompositionException;
        }
    .end annotation

    const-string p2, "KRIFDocViewerFactory.openBook()"

    const/4 v0, 0x1

    .line 24
    invoke-static {p2, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 25
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".kfx"

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/amazon/kindle/rendering/KRIFBookItem;

    if-nez v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontConfigInitializer()Lcom/amazon/kcp/font/FontConfigInitializer;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/font/FontConfigInitializer;->onBookOpen(Ljava/lang/String;)V

    .line 36
    check-cast p1, Lcom/amazon/kindle/rendering/KRIFBookItem;

    .line 37
    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFBookItem;->openBook()Lcom/amazon/krf/platform/KRFBook;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/rendering/KRIFDocViewerFactory;->createDocViewer(Lcom/amazon/kindle/rendering/KRIFBookItem;Lcom/amazon/krf/platform/KRFBook;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    invoke-static {p2, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-object p1

    :catch_0
    move-exception p1

    .line 55
    invoke-static {p2, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 56
    sget-object p2, Lcom/amazon/kindle/rendering/KRIFDocViewerFactory;->TAG:Ljava/lang/String;

    const-string v0, "Unable to load local book item"

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    .line 39
    :cond_1
    invoke-static {p2, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 46
    new-instance p1, Lcom/amazon/android/docviewer/KindleDocViewerGenerator$InvalidBookCompositionException;

    const-string p2, "Trying to create a KRIFDocViewer for a KRIFBookItem, however internal KRFBook is null(KRF failed to open file)!"

    invoke-direct {p1, p2}, Lcom/amazon/android/docviewer/KindleDocViewerGenerator$InvalidBookCompositionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_2
    :goto_0
    invoke-static {p2, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-object v1
.end method
