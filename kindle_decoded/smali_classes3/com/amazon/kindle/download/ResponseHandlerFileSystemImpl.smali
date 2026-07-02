.class public Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;
.super Lcom/amazon/kindle/webservices/BaseResponseHandler;
.source "ResponseHandlerFileSystemImpl.kt"

# interfaces
.implements Lcom/amazon/kindle/webservices/HasConnectionDetails;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl$Companion;

.field public static final DEFAULT_FREE_SPACE_NEEDED:J = 0x500000L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;

.field private filepath:Ljava/lang/String;

.field private isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final networkService:Lcom/amazon/kindle/network/INetworkService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;->Companion:Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl$Companion;

    .line 142
    const-class v0, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;

    invoke-static {v0}, Lcom/amazon/kindle/services/download/DownloadUtils;->getDownloadModuleTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;-><init>(Lcom/amazon/kindle/network/INetworkService;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/network/INetworkService;)V
    .locals 1

    const-string v0, "networkService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Lcom/amazon/kindle/webservices/BaseResponseHandler;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;->networkService:Lcom/amazon/kindle/network/INetworkService;

    .line 32
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kindle/network/INetworkService;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 26
    invoke-static {}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPoints;->getInstance()Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;

    move-result-object p1

    const-string p2, "DownloadDiscoveryEntryPoints.getInstance()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;->getKrlForDownloadFacade()Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    move-result-object p1

    const-string p2, "DownloadDiscoveryEntryPo\u2026ce().krlForDownloadFacade"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object p1

    const-string p2, "DownloadDiscoveryEntryPo\u2026loadFacade.networkService"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;-><init>(Lcom/amazon/kindle/network/INetworkService;)V

    return-void
.end method

.method private final availableSizeForPath(Ljava/lang/String;)J
    .locals 5

    .line 133
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    mul-long v1, v1, v3

    goto :goto_0

    :catch_0
    move-exception v0

    .line 136
    sget-object v1, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to determine available space at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v1, -0x1

    :goto_0
    return-wide v1
.end method

.method private final shouldAppendToExistingFile(Ljava/io/File;)Z
    .locals 6

    .line 86
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 87
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseResponseHandler;->getHttpStatusCode()I

    move-result v2

    const/16 v3, 0xce

    if-eq v2, v3, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    .line 97
    sget-object v0, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting existing file with non-zero length and an HTTP code of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Filepath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 92
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Allowing the download to append to the existing file due to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " response"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 p1, 0x1

    :goto_0
    return p1
.end method


# virtual methods
.method protected final checkFileSystemFull(Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/webservices/ResponseHandlerException;
        }
    .end annotation

    const-string v0, "downloadFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 118
    invoke-direct {p0, p1}, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;->availableSizeForPath(Ljava/lang/String;)J

    move-result-wide v0

    .line 119
    iget-object v2, p0, Lcom/amazon/kindle/webservices/BaseResponseHandler;->responseProperties:Lcom/amazon/kindle/webservices/HttpResponseProperties;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/amazon/kindle/webservices/HttpResponseProperties;->getContentLength()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0x500000

    :goto_0
    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    goto :goto_1

    .line 121
    :cond_1
    sget-object v4, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Needed at least "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes for the download at "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but only have "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance p1, Lcom/amazon/kindle/webservices/ResponseHandlerException;

    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FILE_SYSTEM_FULL:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-direct {p1, v0}, Lcom/amazon/kindle/webservices/ResponseHandlerException;-><init>(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public getConnectionDetails()Lcom/amazon/kindle/webservices/ConnectionDetails;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;->connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;

    return-object v0
.end method

.method public final getFilepath()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;->filepath:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "filepath"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getNetworkService()Lcom/amazon/kindle/network/INetworkService;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;->networkService:Lcom/amazon/kindle/network/INetworkService;

    return-object v0
.end method

.method public onInputStream(Ljava/io/InputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/webservices/ResponseHandlerException;
        }
    .end annotation

    const-string v0, "istream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;->filepath:Ljava/lang/String;

    const-string v2, "filepath"

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;->checkFileSystemFull(Ljava/io/File;)V

    .line 44
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received input stream for file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;->filepath:Ljava/lang/String;

    if-eqz v5, :cond_3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Existing file length: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", HTTP properties: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/webservices/BaseResponseHandler;->responseProperties:Lcom/amazon/kindle/webservices/HttpResponseProperties;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/amazon/kindle/webservices/HttpResponseProperties;->getLogSensitiveString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;->shouldAppendToExistingFile(Ljava/io/File;)Z

    move-result v2

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v0, 0x10000

    :try_start_1
    new-array v0, v0, [B

    .line 47
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    :goto_1
    if-ltz v2, :cond_2

    const/4 v4, 0x0

    .line 50
    invoke-virtual {v1, v0, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 51
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 52
    iget-object v2, p0, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 55
    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_1

    .line 57
    :cond_2
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :try_start_2
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 44
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    throw v3

    :catch_0
    move-exception p1

    .line 74
    sget-object v0, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;->TAG:Ljava/lang/String;

    const-string v1, "Non-IOException while streaming content to disk"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    new-instance p1, Lcom/amazon/kindle/webservices/ResponseHandlerException;

    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FILE_SYSTEM_WRITE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-direct {p1, v0}, Lcom/amazon/kindle/webservices/ResponseHandlerException;-><init>(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    throw p1

    :catch_1
    move-exception p1

    .line 70
    iget-object v0, p0, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;->networkService:Lcom/amazon/kindle/network/INetworkService;

    invoke-interface {v0}, Lcom/amazon/kindle/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v0

    .line 71
    sget-object v1, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error streaming content to disk. Has network connectivity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    new-instance p1, Lcom/amazon/kindle/webservices/ResponseHandlerException;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FILE_SYSTEM_WRITE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->NO_CONNECTION:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    :goto_3
    invoke-direct {p1, v0}, Lcom/amazon/kindle/webservices/ResponseHandlerException;-><init>(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    throw p1

    :catch_2
    move-exception p1

    .line 67
    sget-object v0, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;->TAG:Ljava/lang/String;

    const-string v1, "Socket timeout while streaming content to disk"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    new-instance p1, Lcom/amazon/kindle/webservices/ResponseHandlerException;

    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-direct {p1, v0}, Lcom/amazon/kindle/webservices/ResponseHandlerException;-><init>(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    throw p1

    :catch_3
    move-exception p1

    .line 64
    sget-object v0, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;->TAG:Ljava/lang/String;

    const-string v1, "SSLException while downloading the file"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    new-instance p1, Lcom/amazon/kindle/webservices/ResponseHandlerException;

    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->NO_CONNECTION:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-direct {p1, v0}, Lcom/amazon/kindle/webservices/ResponseHandlerException;-><init>(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    throw p1

    .line 41
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method public onRequestCanceled()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setConnectionDetails(Lcom/amazon/kindle/webservices/ConnectionDetails;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;->connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;

    return-void
.end method

.method public final setDownloadFile(Ljava/lang/String;)V
    .locals 1

    const-string v0, "filename"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;->filepath:Ljava/lang/String;

    return-void
.end method
