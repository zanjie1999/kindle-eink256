.class public Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;
.super Ljavax/net/ssl/HttpsURLConnection;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException;,
        Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AuthenticationFailureIOException;,
        Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$NoCredentialsException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 180
    const-class v0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 191
    invoke-direct {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    .line 194
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->openConnection(Ljava/net/URL;Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)Ljava/net/HttpURLConnection;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    return-void
.end method

.method public static openConnection(Ljava/net/HttpURLConnection;Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)Ljava/net/HttpURLConnection;
    .locals 4
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_6

    if-eqz p1, :cond_5

    .line 264
    iget-object v0, p1, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->fH:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/AuthenticationType;->parse(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/AuthenticationType;

    move-result-object v0

    .line 265
    instance-of v1, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_1

    .line 271
    sget-object v1, Lcom/amazon/identity/auth/device/api/AuthenticationType;->OAuth:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/amazon/identity/auth/device/jf;->gR()Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$1;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$1;-><init>(Ljava/net/HttpURLConnection;)V

    .line 281
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->a(Lcom/amazon/identity/auth/device/jp;)V

    return-object p0

    .line 285
    :cond_0
    new-instance v0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v0, p0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;-><init>(Ljavax/net/ssl/HttpsURLConnection;Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)V

    return-object v0

    :cond_1
    if-eqz v0, :cond_3

    .line 289
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticationType;->requireHttps()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 291
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object p1, p1, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->fH:Ljava/lang/String;

    aput-object p1, v0, v1

    const-string p1, "The authentication type %s can only be used over HTTPS. "

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 296
    :cond_3
    :goto_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 297
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 298
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Using http for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with auth type "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/identity/auth/device/il;->gF()V

    .line 300
    new-instance v0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-direct {v0, p0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;-><init>(Ljava/net/HttpURLConnection;Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)V

    return-object v0

    .line 261
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must Specify an Authentication Method"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 256
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must Specify a URL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static openConnection(Ljava/net/URL;Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    .line 230
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ew;->c(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p0

    .line 231
    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 236
    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->openConnection(Ljava/net/HttpURLConnection;Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0

    .line 233
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Url must be an Https or Http Url"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 227
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must Specify an Authentication Method"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 222
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must Specify a URL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 591
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public connect()V
    .locals 3
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 475
    instance-of v1, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_0

    .line 477
    sget-object v1, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->TAG:Ljava/lang/String;

    const-string v2, "SSL Handshake fail when establishing connect"

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 479
    :cond_0
    throw v0
.end method

.method public disconnect()V
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->disconnect()V

    return-void
.end method

.method public getAllowUserInteraction()Z
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 488
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 743
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 495
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 510
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 517
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 524
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 2
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 532
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 540
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 547
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 554
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()J
    .locals 2
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 561
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 568
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 598
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 605
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 613
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 620
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

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

    .line 577
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 627
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 636
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 640
    instance-of v1, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_0

    .line 642
    sget-object v1, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->TAG:Ljava/lang/String;

    const-string v2, "SSL Handshake fail when getInputStream"

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 644
    :cond_0
    throw v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 455
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .locals 2
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 652
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 314
    instance-of v1, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_0

    .line 316
    sget-object v1, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->TAG:Ljava/lang/String;

    const-string v2, "SSL HandShake fail when getOutputStream"

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 318
    :cond_0
    throw v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 659
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 757
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 409
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

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

    .line 584
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 666
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResponseCode()I
    .locals 3
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getResponseCode()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 422
    instance-of v1, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_0

    .line 424
    sget-object v1, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->TAG:Ljava/lang/String;

    const-string v2, "SSL Handshake fail when getResponseCode"

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 426
    :cond_0
    throw v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 673
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 680
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 687
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->setAllowUserInteraction(Z)V

    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 764
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->setChunkedStreamingMode(I)V

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 736
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->setConnectTimeout(I)V

    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 694
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public setDoInput(Z)V
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 701
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->setDoInput(Z)V

    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 708
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->setDoOutput(Z)V

    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 771
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->setFixedLengthStreamingMode(I)V

    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 715
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->setIfModifiedSince(J)V

    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 462
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 750
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->setReadTimeout(I)V

    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 722
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 729
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->setUseCaches(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 778
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->fG:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->usingProxy()Z

    move-result v0

    return v0
.end method
