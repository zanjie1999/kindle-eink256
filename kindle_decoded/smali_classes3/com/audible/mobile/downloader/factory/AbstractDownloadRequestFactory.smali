.class public abstract Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;
.super Ljava/lang/Object;
.source "AbstractDownloadRequestFactory.java"

# interfaces
.implements Lcom/audible/mobile/downloader/factory/DownloadRequestFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/audible/mobile/downloader/interfaces/DownloadRequest<",
        "+",
        "Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;",
        ">;D::",
        "Lcom/audible/mobile/downloader/factory/DownloadRequestData<",
        "+",
        "Lcom/audible/mobile/downloader/factory/DownloadType;",
        ">;>",
        "Ljava/lang/Object;",
        "Lcom/audible/mobile/downloader/factory/DownloadRequestFactory<",
        "TT;TD;>;"
    }
.end annotation


# instance fields
.field private final contentTypeStorageLocationStrategy:Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;

.field private final context:Landroid/content/Context;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final lowStorageStrategy:Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;-><init>(Landroid/content/Context;Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;)V
    .locals 1

    .line 45
    new-instance v0, Lcom/audible/mobile/util/SynchronousExecutor;

    invoke-direct {v0}, Lcom/audible/mobile/util/SynchronousExecutor;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;-><init>(Landroid/content/Context;Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->context:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->contentTypeStorageLocationStrategy:Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;

    .line 52
    iput-object p3, p0, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->lowStorageStrategy:Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;

    .line 53
    iput-object p4, p0, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private getNetworkStatePolicy(Lcom/audible/mobile/downloader/factory/DownloadType;)Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;
    .locals 1

    .line 105
    invoke-interface {p1}, Lcom/audible/mobile/downloader/factory/DownloadType;->getType()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/audible/mobile/downloader/policy/NetworkPolicyController;->getPolicy(Ljava/lang/String;Landroid/content/Context;)Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;

    move-result-object p1

    return-object p1
.end method

.method private getRetryPolicy(Lcom/audible/mobile/downloader/factory/DownloadType;)Lcom/audible/mobile/downloader/policy/RetryPolicy;
    .locals 0

    .line 100
    invoke-interface {p1}, Lcom/audible/mobile/downloader/factory/DownloadType;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/mobile/downloader/policy/RetryPolicyController;->getPolicy(Ljava/lang/String;)Lcom/audible/mobile/downloader/policy/RetryPolicy;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected extractEbookAcrFromOptionalPayload([Ljava/lang/String;)Lcom/audible/mobile/domain/ACR;
    .locals 2

    if-eqz p1, :cond_0

    .line 140
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 141
    new-instance v0, Lcom/audible/mobile/domain/ImmutableACRImpl;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-direct {v0, p1}, Lcom/audible/mobile/domain/ImmutableACRImpl;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected extractFormatFromOptionalPayload([Ljava/lang/String;)Lcom/audible/mobile/domain/Format;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 128
    array-length v1, p1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 130
    :try_start_0
    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/audible/mobile/domain/Format;->valueOf(Ljava/lang/String;)Lcom/audible/mobile/domain/Format;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    return-object v0
.end method

.method protected extractGuidFromOptionalPayload([Ljava/lang/String;)Lcom/audible/mobile/domain/GUID;
    .locals 2

    if-eqz p1, :cond_0

    .line 148
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 149
    new-instance v0, Lcom/audible/mobile/domain/ImmutableGUIDImpl;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-direct {v0, p1}, Lcom/audible/mobile/domain/ImmutableGUIDImpl;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final getContentTypeStorageLocationStrategy()Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->contentTypeStorageLocationStrategy:Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;

    return-object v0
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected final getLowStorageStrategy()Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->lowStorageStrategy:Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;

    return-object v0
.end method

.method public newDownloadRequest(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/downloader/factory/DownloadRequestData;)Lcom/audible/mobile/downloader/interfaces/DownloadRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/downloader/interfaces/DownloadHandler;",
            "TD;)TT;"
        }
    .end annotation

    .line 66
    invoke-interface {p2}, Lcom/audible/mobile/downloader/factory/DownloadRequestData;->getType()Lcom/audible/mobile/downloader/factory/DownloadType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getRetryPolicy(Lcom/audible/mobile/downloader/factory/DownloadType;)Lcom/audible/mobile/downloader/policy/RetryPolicy;

    move-result-object v0

    .line 67
    invoke-interface {p2}, Lcom/audible/mobile/downloader/factory/DownloadRequestData;->getType()Lcom/audible/mobile/downloader/factory/DownloadType;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getNetworkStatePolicy(Lcom/audible/mobile/downloader/factory/DownloadType;)Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;

    move-result-object v1

    .line 68
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->newDownloadRequestInternal(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/downloader/factory/DownloadRequestData;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;)Lcom/audible/mobile/downloader/interfaces/DownloadRequest;

    move-result-object p1

    return-object p1
.end method

.method protected abstract newDownloadRequestInternal(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/downloader/factory/DownloadRequestData;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;)Lcom/audible/mobile/downloader/interfaces/DownloadRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/downloader/interfaces/DownloadHandler;",
            "TD;",
            "Lcom/audible/mobile/downloader/policy/RetryPolicy;",
            "Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;",
            ")TT;"
        }
    .end annotation
.end method

.method protected splitOnDelimeter(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 120
    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 124
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
