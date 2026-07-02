.class public Lcom/amazon/klo/todo/SidecarToDoHandler;
.super Ljava/lang/Object;
.source "SidecarToDoHandler.java"

# interfaces
.implements Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;


# static fields
.field private static final ACX_ID:Ljava/lang/String; = "KLO"

.field private static final ACX_NAME_ATTRIBUTE:Ljava/lang/String; = "acxName"

.field private static final ASIN_ATTRIBUTE:Ljava/lang/String; = "asin"

.field private static final FILENAME_ATTRIBUTE:Ljava/lang/String; = "filename"

.field private static final HEADER_SIDECAR_VERSION:Ljava/lang/String; = "x-amz-meta-asc-version"

.field private static final KLO_SIDECAR_FILE_FORMAT:Ljava/lang/String; = "KLO.%s.%s.asc"

.field private static final TAG:Ljava/lang/String; = "SidecarToDoHandler"

.field private static final TODO_ACTION_DOWNLOAD:Ljava/lang/String; = "DOWNLOAD"

.field private static final TODO_ACTION_GET:Ljava/lang/String; = "GET"

.field private static final TODO_TYPE_ASC:Ljava/lang/String; = "ASC"

.field private static final TODO_TYPE_ASCG:Ljava/lang/String; = "ASCG"


# instance fields
.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/amazon/klo/todo/SidecarToDoHandler;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/klo/todo/SidecarToDoHandler;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/klo/todo/SidecarToDoHandler;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/amazon/klo/todo/SidecarToDoHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public handle(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
    .locals 13

    .line 89
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/klo/todo/SidecarToDoHandler;->TAG:Ljava/lang/String;

    const-string v2, "Handling Todo..."

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getItemAttributes()Ljava/util/Map;

    move-result-object v0

    .line 93
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getURL()Ljava/lang/String;

    move-result-object v3

    .line 94
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getGuid()Ljava/lang/String;

    move-result-object v7

    const-string v1, "asin"

    .line 95
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    const-string v1, "filename"

    .line 96
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/amazon/klo/todo/SidecarToDoHandler;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 101
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object v0, Lcom/amazon/klo/todo/SidecarToDoHandler;->TAG:Ljava/lang/String;

    const-string v2, "Book is not on device, ignoring sidecar download request."

    invoke-interface {p1, v0, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v8, v2, v1

    const/4 v10, 0x1

    aput-object v6, v2, v10

    const-string v1, "KLO.%s.%s.asc"

    .line 106
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 109
    iget-object v1, p0, Lcom/amazon/klo/todo/SidecarToDoHandler;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    .line 110
    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDownloadManager()Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    move-result-object v1

    .line 111
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    new-instance v12, Lcom/amazon/klo/todo/SidecarToDoHandler$1;

    move-object v4, v12

    move-object v5, p0

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/amazon/klo/todo/SidecarToDoHandler$1;-><init>(Lcom/amazon/klo/todo/SidecarToDoHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/messaging/ITodoItem;)V

    move-object v4, v11

    move v5, v0

    move-object v6, v12

    invoke-interface/range {v1 .. v6}, Lcom/amazon/kindle/krx/download/IKRXDownloadManager;->downloadSidecar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/kindle/krx/download/IKRXResponseHandler;)Ljava/lang/String;

    return v10
.end method

.method public supports(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
    .locals 4

    .line 57
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/klo/todo/SidecarToDoHandler;->TAG:Ljava/lang/String;

    const-string v2, "Checking Todo..."

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET"

    .line 62
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v2, "DOWNLOAD"

    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object v0, Lcom/amazon/klo/todo/SidecarToDoHandler;->TAG:Ljava/lang/String;

    const-string v1, "Not supported, wrong action"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    const-string v0, "ASC"

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ASCG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object v0, Lcom/amazon/klo/todo/SidecarToDoHandler;->TAG:Ljava/lang/String;

    const-string v1, "Not supported, wrong type"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 75
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getItemAttributes()Ljava/util/Map;

    move-result-object p1

    const-string v0, "acxName"

    .line 76
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "KLO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 78
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object v0, Lcom/amazon/klo/todo/SidecarToDoHandler;->TAG:Ljava/lang/String;

    const-string v1, "Not supported, wrong ACX"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 82
    :cond_2
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object v0, Lcom/amazon/klo/todo/SidecarToDoHandler;->TAG:Ljava/lang/String;

    const-string v1, "Todo supported"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
