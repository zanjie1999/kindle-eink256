.class public final Lcom/audible/hushpuppy/controller/audible/stats/http/StatsHttpClientManager;
.super Ljava/lang/Object;
.source "StatsHttpClientManager.java"

# interfaces
.implements Lcom/audible/application/stats/util/IHttpClientManager;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final NETWORK_TIMEOUT:Lcom/audible/mobile/domain/Time;


# instance fields
.field private final downloadCommandFactory:Lcom/audible/hushpuppy/service/network/common/IGenericDownloadCommandFactory;

.field private final downloadController:Lcom/audible/mobile/downloader/interfaces/DownloadController;

.field private final downloadRequestFactory:Lcom/audible/hushpuppy/service/network/common/IDownloadRequestFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/hushpuppy/service/network/common/IDownloadRequestFactory<",
            "Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequest;",
            "Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequest$Key;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 40
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsHttpClientManager;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsHttpClientManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 43
    new-instance v0, Lcom/audible/mobile/domain/ImmutableTimeImpl;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x4

    invoke-direct {v0, v2, v3, v1}, Lcom/audible/mobile/domain/ImmutableTimeImpl;-><init>(JLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsHttpClientManager;->NETWORK_TIMEOUT:Lcom/audible/mobile/domain/Time;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 57
    new-instance v0, Lcom/audible/mobile/downloader/BaseDownloadController;

    invoke-static {p1}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object v1

    const-class v2, Lcom/audible/mobile/downloader/factory/DownloaderFactory;

    invoke-virtual {v1, v2}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/downloader/factory/DownloaderFactory;

    invoke-direct {v0, p1, v1}, Lcom/audible/mobile/downloader/BaseDownloadController;-><init>(Landroid/content/Context;Lcom/audible/mobile/downloader/factory/DownloaderFactory;)V

    new-instance v1, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequestFactory;

    invoke-direct {v1, p1}, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequestFactory;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/audible/hushpuppy/service/network/common/GenericDownloadCommandFactory;

    invoke-direct {v2}, Lcom/audible/hushpuppy/service/network/common/GenericDownloadCommandFactory;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsHttpClientManager;-><init>(Landroid/content/Context;Lcom/audible/mobile/downloader/interfaces/DownloadController;Lcom/audible/hushpuppy/service/network/common/IDownloadRequestFactory;Lcom/audible/hushpuppy/service/network/common/IGenericDownloadCommandFactory;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/audible/mobile/downloader/interfaces/DownloadController;Lcom/audible/hushpuppy/service/network/common/IDownloadRequestFactory;Lcom/audible/hushpuppy/service/network/common/IGenericDownloadCommandFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/audible/mobile/downloader/interfaces/DownloadController;",
            "Lcom/audible/hushpuppy/service/network/common/IDownloadRequestFactory<",
            "Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequest;",
            "Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequest$Key;",
            ">;",
            "Lcom/audible/hushpuppy/service/network/common/IGenericDownloadCommandFactory;",
            ")V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "context can\'t be null."

    .line 74
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "downloadController can\'t be null."

    .line 75
    invoke-static {p2, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "downloadRequestFactory can\'t be null."

    .line 76
    invoke-static {p3, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "downloadCommandFactory can\'t be null."

    .line 77
    invoke-static {p4, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsHttpClientManager;->downloadController:Lcom/audible/mobile/downloader/interfaces/DownloadController;

    .line 80
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsHttpClientManager;->downloadRequestFactory:Lcom/audible/hushpuppy/service/network/common/IDownloadRequestFactory;

    .line 81
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsHttpClientManager;->downloadCommandFactory:Lcom/audible/hushpuppy/service/network/common/IGenericDownloadCommandFactory;

    return-void
.end method

.method private getDownloadCommand(Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;Ljava/lang/String;Ljava/lang/String;)Lcom/audible/mobile/downloader/interfaces/DownloadCommand;
    .locals 1

    .line 146
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsHttpClientManager$1;->$SwitchMap$com$audible$application$stats$util$IHttpClientManager$HttpMethod:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 157
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsHttpClientManager;->downloadCommandFactory:Lcom/audible/hushpuppy/service/network/common/IGenericDownloadCommandFactory;

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/service/network/common/IGenericDownloadCommandFactory;->newGetDownloadCommand(Ljava/lang/String;)Lcom/audible/mobile/downloader/interfaces/DownloadCommand;

    move-result-object p1

    goto :goto_0

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsHttpClientManager;->downloadCommandFactory:Lcom/audible/hushpuppy/service/network/common/IGenericDownloadCommandFactory;

    invoke-interface {p1, p2, p3}, Lcom/audible/hushpuppy/service/network/common/IGenericDownloadCommandFactory;->newPostDownloadCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/audible/mobile/downloader/interfaces/DownloadCommand;

    move-result-object p1

    .line 153
    invoke-interface {p1}, Lcom/audible/mobile/downloader/interfaces/DownloadCommand;->getHeaders()Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsHttpClientManager;->setPostOrPutHeaders(Ljava/util/Map;)V

    goto :goto_0

    .line 148
    :cond_1
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsHttpClientManager;->downloadCommandFactory:Lcom/audible/hushpuppy/service/network/common/IGenericDownloadCommandFactory;

    invoke-interface {p1, p2, p3}, Lcom/audible/hushpuppy/service/network/common/IGenericDownloadCommandFactory;->newPutDownloadCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/audible/mobile/downloader/interfaces/DownloadCommand;

    move-result-object p1

    .line 149
    invoke-interface {p1}, Lcom/audible/mobile/downloader/interfaces/DownloadCommand;->getHeaders()Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsHttpClientManager;->setPostOrPutHeaders(Ljava/util/Map;)V

    :goto_0
    return-object p1
.end method

.method private getEntity(Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;Ljava/lang/String;Ljava/lang/String;ZLcom/audible/hushpuppy/controller/audible/stats/http/IStatsResponseConverter;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/audible/hushpuppy/controller/audible/stats/http/IStatsResponseConverter<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 131
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsHttpClientManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    sget-object v1, Lcom/audible/hushpuppy/common/logging/HushpuppyNetworkCategory;->STATS_LIBRARY:Lcom/audible/hushpuppy/common/logging/HushpuppyNetworkCategory;

    const-string v2, "Download entity as Response."

    invoke-interface {v0, v1, p2, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->network(Lcom/audible/hushpuppy/common/logging/NetworkCategory;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsSynchronousDownloadHandler;

    invoke-direct {v0}, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsSynchronousDownloadHandler;-><init>()V

    .line 133
    invoke-direct {p0, p1, p2, p3}, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsHttpClientManager;->getDownloadCommand(Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;Ljava/lang/String;Ljava/lang/String;)Lcom/audible/mobile/downloader/interfaces/DownloadCommand;

    move-result-object v4

    .line 134
    new-instance v8, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequest$Key;

    invoke-direct {v8, v4}, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequest$Key;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadCommand;)V

    .line 135
    iget-object v3, p0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsHttpClientManager;->downloadRequestFactory:Lcom/audible/hushpuppy/service/network/common/IDownloadRequestFactory;

    sget-object v5, Lcom/audible/hushpuppy/service/network/common/HushpuppyDownloadType;->STATS:Lcom/audible/hushpuppy/service/network/common/HushpuppyDownloadType;

    move v6, p4

    move-object v7, v0

    invoke-interface/range {v3 .. v8}, Lcom/audible/hushpuppy/service/network/common/IDownloadRequestFactory;->newDownloadRequest(Lcom/audible/mobile/downloader/interfaces/DownloadCommand;Lcom/audible/mobile/downloader/factory/DownloadType;ZLcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;)Lcom/audible/mobile/downloader/interfaces/DownloadRequest;

    move-result-object v1

    .line 137
    sget-object v2, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsHttpClientManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p2, v3, p1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v3, p2

    const/4 p1, 0x3

    aput-object p3, v3, p1

    const-string p1, "Sending stats request: %s - %s (auth=%s) - [%s]"

    invoke-interface {v2, p1, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsHttpClientManager;->downloadController:Lcom/audible/mobile/downloader/interfaces/DownloadController;

    invoke-interface {p1, v1}, Lcom/audible/mobile/downloader/interfaces/DownloadController;->addRequest(Lcom/audible/mobile/downloader/interfaces/DownloadRequest;)V

    .line 139
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsHttpClientManager;->NETWORK_TIMEOUT:Lcom/audible/mobile/domain/Time;

    invoke-virtual {v0, p5, p1}, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsSynchronousDownloadHandler;->getResult(Lcom/audible/hushpuppy/controller/audible/stats/http/IStatsResponseConverter;Lcom/audible/mobile/domain/Time;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private setPostOrPutHeaders(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    .line 166
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "application/json"

    const-string v1, "Accept"

    .line 167
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Content-Type"

    .line 168
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getEntityAsBytesViaSharedInstance(Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;Ljava/lang/String;Ljava/lang/String;Z)[B
    .locals 9

    .line 105
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsHttpClientManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    sget-object v1, Lcom/audible/hushpuppy/common/logging/HushpuppyNetworkCategory;->STATS_LIBRARY:Lcom/audible/hushpuppy/common/logging/HushpuppyNetworkCategory;

    const-string v2, "Download entity as byte[]."

    invoke-interface {v0, v1, p2, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->network(Lcom/audible/hushpuppy/common/logging/NetworkCategory;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v8, Lcom/audible/hushpuppy/controller/audible/stats/http/ByteArrayResponseConverter;

    invoke-direct {v8}, Lcom/audible/hushpuppy/controller/audible/stats/http/ByteArrayResponseConverter;-><init>()V

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    .line 107
    invoke-direct/range {v3 .. v8}, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsHttpClientManager;->getEntity(Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;Ljava/lang/String;Ljava/lang/String;ZLcom/audible/hushpuppy/controller/audible/stats/http/IStatsResponseConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public getEntityAsResponseViaSharedInstance(Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;Ljava/lang/String;Ljava/lang/String;Z)Lcom/audible/application/stats/util/IHttpClientManager$Response;
    .locals 9

    .line 123
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsHttpClientManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    sget-object v1, Lcom/audible/hushpuppy/common/logging/HushpuppyNetworkCategory;->STATS_LIBRARY:Lcom/audible/hushpuppy/common/logging/HushpuppyNetworkCategory;

    const-string v2, "Download entity as Response."

    invoke-interface {v0, v1, p2, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->network(Lcom/audible/hushpuppy/common/logging/NetworkCategory;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v8, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsResponseConverter;

    invoke-direct {v8}, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsResponseConverter;-><init>()V

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    .line 125
    invoke-direct/range {v3 .. v8}, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsHttpClientManager;->getEntity(Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;Ljava/lang/String;Ljava/lang/String;ZLcom/audible/hushpuppy/controller/audible/stats/http/IStatsResponseConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/application/stats/util/IHttpClientManager$Response;

    return-object p1
.end method
