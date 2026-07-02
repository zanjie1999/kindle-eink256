.class Lcom/audible/mobile/downloader/RedirectDownloadCommandWrapper;
.super Ljava/lang/Object;
.source "RedirectDownloadCommandWrapper.java"

# interfaces
.implements Lcom/audible/mobile/downloader/interfaces/DownloadCommand;


# instance fields
.field private final mNewUrl:Ljava/net/URL;

.field private final mOldCommand:Lcom/audible/mobile/downloader/interfaces/DownloadCommand;


# direct methods
.method public constructor <init>(Ljava/net/URL;Lcom/audible/mobile/downloader/interfaces/DownloadCommand;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/audible/mobile/downloader/RedirectDownloadCommandWrapper;->mNewUrl:Ljava/net/URL;

    .line 20
    iput-object p2, p0, Lcom/audible/mobile/downloader/RedirectDownloadCommandWrapper;->mOldCommand:Lcom/audible/mobile/downloader/interfaces/DownloadCommand;

    return-void
.end method


# virtual methods
.method public getConnectionTimeout()I
    .locals 1

    .line 56
    sget v0, Lcom/audible/mobile/downloader/interfaces/DownloadCommand;->DEFAULT_TIMEOUT_MS:I

    return v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/audible/mobile/downloader/RedirectDownloadCommandWrapper;->mOldCommand:Lcom/audible/mobile/downloader/interfaces/DownloadCommand;

    invoke-interface {v0}, Lcom/audible/mobile/downloader/interfaces/DownloadCommand;->getHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/audible/mobile/downloader/RedirectDownloadCommandWrapper;->mOldCommand:Lcom/audible/mobile/downloader/interfaces/DownloadCommand;

    invoke-interface {v0}, Lcom/audible/mobile/downloader/interfaces/DownloadCommand;->getMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Ljava/io/InputStream;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/audible/mobile/downloader/RedirectDownloadCommandWrapper;->mOldCommand:Lcom/audible/mobile/downloader/interfaces/DownloadCommand;

    invoke-interface {v0}, Lcom/audible/mobile/downloader/interfaces/DownloadCommand;->getPayload()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .line 62
    sget v0, Lcom/audible/mobile/downloader/interfaces/DownloadCommand;->DEFAULT_TIMEOUT_MS:I

    return v0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/audible/mobile/downloader/RedirectDownloadCommandWrapper;->mNewUrl:Ljava/net/URL;

    return-object v0
.end method

.method public isForceRefresh()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/audible/mobile/downloader/RedirectDownloadCommandWrapper;->mOldCommand:Lcom/audible/mobile/downloader/interfaces/DownloadCommand;

    invoke-interface {v0}, Lcom/audible/mobile/downloader/interfaces/DownloadCommand;->isForceRefresh()Z

    move-result v0

    return v0
.end method
