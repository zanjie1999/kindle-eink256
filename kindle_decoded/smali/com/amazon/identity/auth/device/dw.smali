.class Lcom/amazon/identity/auth/device/dw;
.super Lcom/amazon/identity/auth/device/eq;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final kU:I

.field private static final kV:I


# instance fields
.field private final bO:Lcom/amazon/identity/auth/device/ej;

.field private final kW:Lcom/amazon/identity/auth/device/do;

.field private final kX:Lcom/amazon/identity/auth/device/framework/RetryLogic;

.field private final kY:Lcom/amazon/identity/auth/device/lq;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 24
    const-class v0, Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/dw;->TAG:Ljava/lang/String;

    .line 26
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    long-to-int v1, v0

    sput v1, Lcom/amazon/identity/auth/device/dw;->kU:I

    .line 27
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    long-to-int v1, v0

    sput v1, Lcom/amazon/identity/auth/device/dw;->kV:I

    return-void
.end method

.method constructor <init>(Lcom/amazon/identity/auth/device/do;Lcom/amazon/identity/auth/device/framework/RetryLogic;Lcom/amazon/identity/auth/device/ej;Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/do;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/eq;-><init>(Ljava/net/URL;)V

    .line 55
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dw;->kW:Lcom/amazon/identity/auth/device/do;

    .line 56
    iput-object p2, p0, Lcom/amazon/identity/auth/device/dw;->kX:Lcom/amazon/identity/auth/device/framework/RetryLogic;

    .line 58
    new-instance p1, Lcom/amazon/identity/auth/device/lq;

    sget p2, Lcom/amazon/identity/auth/device/dw;->kU:I

    sget v0, Lcom/amazon/identity/auth/device/dw;->kV:I

    invoke-direct {p1, p2, v0}, Lcom/amazon/identity/auth/device/lq;-><init>(II)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/dw;->kY:Lcom/amazon/identity/auth/device/lq;

    .line 59
    iput-object p3, p0, Lcom/amazon/identity/auth/device/dw;->bO:Lcom/amazon/identity/auth/device/ej;

    .line 60
    iput-object p4, p0, Lcom/amazon/identity/auth/device/dw;->mContext:Landroid/content/Context;

    return-void
.end method

.method constructor <init>(Ljava/net/URL;Lcom/amazon/identity/auth/device/framework/RetryLogic;Lcom/amazon/identity/auth/device/ej;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/amazon/identity/auth/device/do;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/do;-><init>(Ljava/net/URL;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/amazon/identity/auth/device/dw;-><init>(Lcom/amazon/identity/auth/device/do;Lcom/amazon/identity/auth/device/framework/RetryLogic;Lcom/amazon/identity/auth/device/ej;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dw;->kW:Lcom/amazon/identity/auth/device/do;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/do;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dw;->kW:Lcom/amazon/identity/auth/device/do;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/do;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dw;->kW:Lcom/amazon/identity/auth/device/do;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/do;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dw;->kW:Lcom/amazon/identity/auth/device/do;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/do;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dw;->kW:Lcom/amazon/identity/auth/device/do;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/do;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dw;->kW:Lcom/amazon/identity/auth/device/do;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/do;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dw;->kW:Lcom/amazon/identity/auth/device/do;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/do;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dw;->kW:Lcom/amazon/identity/auth/device/do;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/do;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dw;->kW:Lcom/amazon/identity/auth/device/do;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/do;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dw;->kW:Lcom/amazon/identity/auth/device/do;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/do;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dw;->kW:Lcom/amazon/identity/auth/device/do;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/do;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dw;->kW:Lcom/amazon/identity/auth/device/do;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/do;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dw;->kW:Lcom/amazon/identity/auth/device/do;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/do;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dw;->kW:Lcom/amazon/identity/auth/device/do;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/do;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dw;->kW:Lcom/amazon/identity/auth/device/do;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/do;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method protected performOnConnectionRequested()Ljava/net/HttpURLConnection;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    :cond_0
    :try_start_0
    new-instance v0, Lcom/amazon/identity/auth/device/dv;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dw;->kW:Lcom/amazon/identity/auth/device/do;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/do;->cU()Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/dv;-><init>(Ljava/net/HttpURLConnection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dw;->kX:Lcom/amazon/identity/auth/device/framework/RetryLogic;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/dw;->kY:Lcom/amazon/identity/auth/device/lq;

    .line 90
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/lq;->iv()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/identity/auth/device/dw;->bO:Lcom/amazon/identity/auth/device/ej;

    .line 89
    invoke-virtual {v1, v0, v2, v3}, Lcom/amazon/identity/auth/device/framework/RetryLogic;->a(Ljava/net/HttpURLConnection;ILcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/framework/RetryLogic$a;

    move-result-object v1

    .line 1148
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/framework/RetryLogic$a;->isSuccess()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/framework/RetryLogic$a;->dO()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    return-object v0

    .line 100
    :cond_3
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dv;->disconnect()V

    .line 102
    iget-object v2, p0, Lcom/amazon/identity/auth/device/dw;->kY:Lcom/amazon/identity/auth/device/lq;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/lq;->iu()I

    move-result v2

    .line 103
    sget-object v5, Lcom/amazon/identity/auth/device/dw;->TAG:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/amazon/identity/auth/device/dw;->kY:Lcom/amazon/identity/auth/device/lq;

    .line 106
    invoke-virtual {v7}, Lcom/amazon/identity/auth/device/lq;->iv()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v3

    const-string v3, "Connection failed. We will attempt to the %d retry"

    .line 104
    invoke-static {v6, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-static {v5, v3}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v2, v2

    .line 110
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 114
    sget-object v3, Lcom/amazon/identity/auth/device/dw;->TAG:Ljava/lang/String;

    const-string v4, "Backoff wait interrupted"

    invoke-static {v3, v4, v2}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    :goto_2
    iget-object v2, p0, Lcom/amazon/identity/auth/device/dw;->kY:Lcom/amazon/identity/auth/device/lq;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/lq;->iv()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 119
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/framework/RetryLogic$a;->dN()Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;

    move-result-object v2

    .line 120
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/framework/RetryLogic$a;->dM()Ljava/io/IOException;

    move-result-object v1

    if-eqz v2, :cond_5

    .line 124
    sget-object v3, Lcom/amazon/identity/auth/device/dw;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Connection failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    sget-object v3, Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;->ServerInternalError:Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;->InvalidJSON:Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;

    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    return-object v0

    :cond_5
    if-nez v1, :cond_6

    return-object v0

    .line 136
    :cond_6
    sget-object v2, Lcom/amazon/identity/auth/device/dw;->TAG:Ljava/lang/String;

    const-string v3, "All retries failed. Aborting request"

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 1261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mm;->h(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":AllRetriesFailed"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    sget-object v2, Lcom/amazon/identity/auth/device/dw;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v0}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    throw v1

    :catch_1
    move-exception v0

    .line 82
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dw;->bO:Lcom/amazon/identity/auth/device/ej;

    iget-object v2, p0, Ljava/net/HttpURLConnection;->url:Ljava/net/URL;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/mm;->i(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dw;->bO:Lcom/amazon/identity/auth/device/ej;

    iget-object v2, p0, Ljava/net/HttpURLConnection;->url:Ljava/net/URL;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/dw;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v3}, Lcom/amazon/identity/auth/device/mm;->a(Ljava/net/URL;Ljava/io/IOException;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    .line 86
    throw v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dw;->kW:Lcom/amazon/identity/auth/device/do;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/do;->setAllowUserInteraction(Z)V

    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dw;->kW:Lcom/amazon/identity/auth/device/do;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/do;->setChunkedStreamingMode(I)V

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dw;->kW:Lcom/amazon/identity/auth/device/do;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/do;->setConnectTimeout(I)V

    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dw;->kW:Lcom/amazon/identity/auth/device/do;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/do;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public setDoInput(Z)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dw;->kW:Lcom/amazon/identity/auth/device/do;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/do;->setDoInput(Z)V

    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dw;->kW:Lcom/amazon/identity/auth/device/do;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/do;->setDoOutput(Z)V

    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dw;->kW:Lcom/amazon/identity/auth/device/do;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/auth/device/do;->setFixedLengthStreamingMode(J)V

    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dw;->kW:Lcom/amazon/identity/auth/device/do;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/do;->setFixedLengthStreamingMode(J)V

    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dw;->kW:Lcom/amazon/identity/auth/device/do;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/do;->setIfModifiedSince(J)V

    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dw;->kW:Lcom/amazon/identity/auth/device/do;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/do;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dw;->kW:Lcom/amazon/identity/auth/device/do;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/do;->setReadTimeout(I)V

    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dw;->kW:Lcom/amazon/identity/auth/device/do;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/do;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dw;->kW:Lcom/amazon/identity/auth/device/do;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/do;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dw;->kW:Lcom/amazon/identity/auth/device/do;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/do;->setUseCaches(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dw;->kW:Lcom/amazon/identity/auth/device/do;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/do;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dw;->kW:Lcom/amazon/identity/auth/device/do;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/do;->usingProxy()Z

    move-result v0

    return v0
.end method
