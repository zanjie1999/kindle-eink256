.class public final Lcom/audible/hushpuppy/service/network/common/GenericDownloadCommandFactory;
.super Ljava/lang/Object;
.source "GenericDownloadCommandFactory.java"

# interfaces
.implements Lcom/audible/hushpuppy/service/network/common/IGenericDownloadCommandFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/hushpuppy/service/network/common/IGenericDownloadCommandFactory<",
        "Lcom/audible/mobile/downloader/interfaces/DownloadCommand;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private urlFromString(Ljava/lang/String;)Ljava/net/URL;
    .locals 2

    const-string v0, "url can\'t be null."

    .line 97
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url is incorrect"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public newGetDownloadCommand(Ljava/lang/String;)Lcom/audible/mobile/downloader/interfaces/DownloadCommand;
    .locals 1

    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0, p1, v0}, Lcom/audible/hushpuppy/service/network/common/GenericDownloadCommandFactory;->newGetDownloadCommand(Ljava/lang/String;Z)Lcom/audible/mobile/downloader/interfaces/DownloadCommand;

    move-result-object p1

    return-object p1
.end method

.method public newGetDownloadCommand(Ljava/lang/String;Z)Lcom/audible/mobile/downloader/interfaces/DownloadCommand;
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/service/network/common/GenericDownloadCommandFactory;->urlFromString(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    .line 35
    new-instance v0, Lcom/audible/mobile/downloader/BaseGETDownloadCommand;

    invoke-direct {v0, p1, p2}, Lcom/audible/mobile/downloader/BaseGETDownloadCommand;-><init>(Ljava/net/URL;Z)V

    return-object v0
.end method

.method public newPostDownloadCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/audible/mobile/downloader/interfaces/DownloadCommand;
    .locals 1

    const-string v0, "requestBody can\'t be null."

    .line 42
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/audible/hushpuppy/service/network/common/GenericDownloadCommandFactory;->newPostDownloadCommand(Ljava/lang/String;[B)Lcom/audible/mobile/downloader/interfaces/DownloadCommand;

    move-result-object p1

    return-object p1
.end method

.method public newPostDownloadCommand(Ljava/lang/String;[B)Lcom/audible/mobile/downloader/interfaces/DownloadCommand;
    .locals 1

    const-string v0, "requestBody can\'t be null."

    .line 50
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/service/network/common/GenericDownloadCommandFactory;->urlFromString(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    .line 52
    new-instance v0, Lcom/audible/mobile/downloader/BasePostDownloadCommand;

    invoke-direct {v0, p1, p2}, Lcom/audible/mobile/downloader/BasePostDownloadCommand;-><init>(Ljava/net/URL;[B)V

    return-object v0
.end method

.method public newPutDownloadCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/audible/mobile/downloader/interfaces/DownloadCommand;
    .locals 1

    const-string v0, "requestBody can\'t be null."

    .line 74
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/audible/hushpuppy/service/network/common/GenericDownloadCommandFactory;->newPutDownloadCommand(Ljava/lang/String;[B)Lcom/audible/mobile/downloader/interfaces/DownloadCommand;

    move-result-object p1

    return-object p1
.end method

.method public newPutDownloadCommand(Ljava/lang/String;[B)Lcom/audible/mobile/downloader/interfaces/DownloadCommand;
    .locals 1

    const-string v0, "requestBody can\'t be null."

    .line 82
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/service/network/common/GenericDownloadCommandFactory;->urlFromString(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    .line 84
    new-instance v0, Lcom/audible/mobile/downloader/BasePutDownloadCommand;

    invoke-direct {v0, p1, p2}, Lcom/audible/mobile/downloader/BasePutDownloadCommand;-><init>(Ljava/net/URL;[B)V

    return-object v0
.end method
