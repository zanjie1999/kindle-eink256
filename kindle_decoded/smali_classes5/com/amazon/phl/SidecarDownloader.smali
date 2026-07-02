.class public Lcom/amazon/phl/SidecarDownloader;
.super Ljava/lang/Object;
.source "SidecarDownloader.java"

# interfaces
.implements Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;


# static fields
.field private static final PHL_SIDECAR_ACTION:Ljava/lang/String; = "DOWNLOAD"

.field private static final PHL_SIDECAR_TYPE:Ljava/lang/String; = "PHL"

.field private static final TAG:Ljava/lang/String; = "com.amazon.phl.SidecarDownloader"

.field private static final TODO_ITEM_ATTRIBUTE_EMBEDDED_ID:Ljava/lang/String; = "guid"


# instance fields
.field private final downloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

.field private final libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

.field private final popularHighlightsManager:Lcom/amazon/phl/PopularHighlightsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/phl/PopularHighlightsManager;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "sdk cannot be null"

    .line 36
    invoke-static {p1, v0}, Lcom/amazon/phl/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    const-string v1, "applicationManager cannot be null"

    .line 38
    invoke-static {v0, v1}, Lcom/amazon/phl/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDownloadManager()Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/phl/SidecarDownloader;->downloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    const-string v1, "downloadManager cannot be null"

    .line 40
    invoke-static {v0, v1}, Lcom/amazon/phl/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/phl/SidecarDownloader;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    const-string v0, "libraryManager cannot be null"

    .line 42
    invoke-static {p1, v0}, Lcom/amazon/phl/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p2, p0, Lcom/amazon/phl/SidecarDownloader;->popularHighlightsManager:Lcom/amazon/phl/PopularHighlightsManager;

    const-string/jumbo p1, "popularHighlightsManager cannot be null"

    .line 44
    invoke-static {p2, p1}, Lcom/amazon/phl/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/amazon/phl/SidecarDownloader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/phl/SidecarDownloader;)Lcom/amazon/phl/PopularHighlightsManager;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/phl/SidecarDownloader;->popularHighlightsManager:Lcom/amazon/phl/PopularHighlightsManager;

    return-object p0
.end method


# virtual methods
.method public handle(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
    .locals 7

    .line 49
    invoke-static {}, Lcom/amazon/phl/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/amazon/phl/SidecarDownloader;->TAG:Ljava/lang/String;

    const-string v1, "Handling TodoItem"

    invoke-static {v0, v1}, Lcom/amazon/phl/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getURL()Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getItemAttributes()Ljava/util/Map;

    move-result-object p1

    const-string v1, "guid"

    .line 55
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/amazon/phl/logging/Log;->isDebugEnabled()Z

    move-result v1

    const-string v2, ", url: "

    if-eqz v1, :cond_1

    .line 57
    sget-object v1, Lcom/amazon/phl/SidecarDownloader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TODO contains asin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", guid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/phl/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_1
    iget-object p1, p0, Lcom/amazon/phl/SidecarDownloader;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    if-nez p1, :cond_2

    .line 63
    sget-object p1, Lcom/amazon/phl/SidecarDownloader;->TAG:Ljava/lang/String;

    const-string v0, "Received sidecar TODO for book not on device. Ignoring."

    invoke-static {p1, v0}, Lcom/amazon/phl/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 68
    :cond_2
    invoke-static {}, Lcom/amazon/phl/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    sget-object v1, Lcom/amazon/phl/SidecarDownloader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting sidecar download for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/phl/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_3
    invoke-static {p1}, Lcom/amazon/phl/util/SidecarFileUtil;->getFilenameForBook(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v4

    .line 72
    iget-object v1, p0, Lcom/amazon/phl/SidecarDownloader;->downloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    new-instance v6, Lcom/amazon/phl/SidecarDownloader$1;

    invoke-direct {v6, p0, p1}, Lcom/amazon/phl/SidecarDownloader$1;-><init>(Lcom/amazon/phl/SidecarDownloader;Lcom/amazon/kindle/krx/content/IBook;)V

    invoke-interface/range {v1 .. v6}, Lcom/amazon/kindle/krx/download/IKRXDownloadManager;->downloadSidecar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/kindle/krx/download/IKRXResponseHandler;)Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public supports(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
    .locals 4

    .line 99
    invoke-static {}, Lcom/amazon/phl/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lcom/amazon/phl/SidecarDownloader;->TAG:Ljava/lang/String;

    const-string v1, "Checking Todo"

    invoke-static {v0, v1}, Lcom/amazon/phl/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PHL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 103
    invoke-static {}, Lcom/amazon/phl/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    sget-object v0, Lcom/amazon/phl/SidecarDownloader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Passing, not our type. Our type: PHL, provided type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-static {v0, p1}, Lcom/amazon/phl/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v1

    .line 110
    :cond_2
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DOWNLOAD"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 111
    sget-object v0, Lcom/amazon/phl/SidecarDownloader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported action for PHL TodoItem. Expected action: DOWNLOAD, provided action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-static {v0, p1}, Lcom/amazon/phl/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 115
    :cond_3
    invoke-static {}, Lcom/amazon/phl/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 116
    sget-object p1, Lcom/amazon/phl/SidecarDownloader;->TAG:Ljava/lang/String;

    const-string v0, "Todo supported, accepting..."

    invoke-static {p1, v0}, Lcom/amazon/phl/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 p1, 0x1

    return p1
.end method
