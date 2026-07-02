.class public final Lcom/amazon/kindle/download/AssetRequestDownloadManagerKt;
.super Ljava/lang/Object;
.source "AssetRequestDownloadManager.kt"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/amazon/kindle/download/AssetRequestDownloadManager;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getDownloadEntryPoints$p()Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;
    .locals 1

    .line 1
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerKt;->getDownloadEntryPoints()Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerKt;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static final getDownloadEntryPoints()Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;
    .locals 2

    .line 29
    invoke-static {}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPoints;->getInstance()Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;

    move-result-object v0

    const-string v1, "DownloadDiscoveryEntryPoints.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getRequestGroup(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;
    .locals 2

    if-nez p0, :cond_0

    .line 266
    sget-object p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerKt;->TAG:Ljava/lang/String;

    const-string v0, "Received a null bookId in getRequestGroup, returning null"

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 269
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerKt;->getDownloadEntryPoints()Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;->getReaderDownloadModule()Lcom/amazon/kindle/download/IReaderDownloadModule;

    move-result-object v0

    const-string v1, "downloadEntryPoints.readerDownloadModule"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/download/IReaderDownloadModule;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/services/download/IDownloadService;->getDownloadGroup(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    move-result-object p0

    return-object p0
.end method

.method public static final getRequestGroup(Ljava/lang/String;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;
    .locals 0

    .line 273
    invoke-static {p0}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerKt;->getRequestGroup(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    move-result-object p0

    return-object p0
.end method
