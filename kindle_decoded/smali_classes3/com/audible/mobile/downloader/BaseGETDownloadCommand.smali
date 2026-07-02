.class public Lcom/audible/mobile/downloader/BaseGETDownloadCommand;
.super Ljava/lang/Object;
.source "BaseGETDownloadCommand.java"

# interfaces
.implements Lcom/audible/mobile/downloader/interfaces/DownloadCommand;
.implements Ljava/io/Serializable;


# static fields
.field private static final HEADER_RANGE:Ljava/lang/String; = "Range"

.field private static final HEADER_RANGE_FORMAT:Ljava/lang/String; = "bytes=%d-"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final connectionTimeoutMillis:I

.field private contentLengthOffset:J

.field private final forceRefresh:Z

.field protected mUrl:Ljava/net/URL;

.field private final readTimeoutMillis:I


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/audible/mobile/downloader/BaseGETDownloadCommand;-><init>(Ljava/net/URL;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;J)V
    .locals 1

    const/4 v0, 0x1

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/audible/mobile/downloader/BaseGETDownloadCommand;-><init>(Ljava/net/URL;Z)V

    .line 63
    iput-wide p2, p0, Lcom/audible/mobile/downloader/BaseGETDownloadCommand;->contentLengthOffset:J

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Z)V
    .locals 1

    .line 41
    sget v0, Lcom/audible/mobile/downloader/interfaces/DownloadCommand;->DEFAULT_TIMEOUT_MS:I

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/audible/mobile/downloader/BaseGETDownloadCommand;-><init>(Ljava/net/URL;ZII)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;ZII)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/net/URL;

    iput-object p1, p0, Lcom/audible/mobile/downloader/BaseGETDownloadCommand;->mUrl:Ljava/net/URL;

    .line 55
    iput-boolean p2, p0, Lcom/audible/mobile/downloader/BaseGETDownloadCommand;->forceRefresh:Z

    .line 56
    iput p3, p0, Lcom/audible/mobile/downloader/BaseGETDownloadCommand;->connectionTimeoutMillis:I

    .line 57
    iput p4, p0, Lcom/audible/mobile/downloader/BaseGETDownloadCommand;->readTimeoutMillis:I

    return-void
.end method


# virtual methods
.method public getConnectionTimeout()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/audible/mobile/downloader/BaseGETDownloadCommand;->connectionTimeoutMillis:I

    return v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    iget-wide v0, p0, Lcom/audible/mobile/downloader/BaseGETDownloadCommand;->contentLengthOffset:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 82
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 85
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 86
    iget-wide v3, p0, Lcom/audible/mobile/downloader/BaseGETDownloadCommand;->contentLengthOffset:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "bytes=%d-"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Range"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "GET"

    return-object v0
.end method

.method public getPayload()Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/audible/mobile/downloader/BaseGETDownloadCommand;->readTimeoutMillis:I

    return v0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/audible/mobile/downloader/BaseGETDownloadCommand;->mUrl:Ljava/net/URL;

    return-object v0
.end method

.method public isForceRefresh()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/audible/mobile/downloader/BaseGETDownloadCommand;->forceRefresh:Z

    return v0
.end method
