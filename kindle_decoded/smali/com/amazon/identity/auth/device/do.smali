.class Lcom/amazon/identity/auth/device/do;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.do"


# instance fields
.field private final jP:Ljava/net/HttpURLConnection;

.field private final jQ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final jR:Ljava/io/ByteArrayOutputStream;

.field private jS:Ljava/lang/Integer;

.field private jT:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/do;->jQ:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/do;->jR:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/amazon/identity/auth/device/do;->jS:Ljava/lang/Integer;

    .line 33
    iput-object v0, p0, Lcom/amazon/identity/auth/device/do;->jT:Ljava/lang/Long;

    if-eqz p1, :cond_1

    .line 42
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ew;->c(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p1

    .line 44
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 49
    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    return-void

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "url must be at least http"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "url cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jQ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    iget-object v1, p0, Lcom/amazon/identity/auth/device/do;->jQ:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_1

    .line 203
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 206
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 173
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/do;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected c(Ljava/net/HttpURLConnection;)V
    .locals 5

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jS:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jT:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 90
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 92
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 100
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 102
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getAllowUserInteraction()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 103
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getConnectTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 104
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDefaultUseCaches()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 105
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoInput()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 106
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 107
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getIfModifiedSince()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 108
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getReadTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 109
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getUseCaches()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 111
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jQ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 113
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 115
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    return-void

    .line 80
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Connection has been already executed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected cT()Ljava/net/HttpURLConnection;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public final cU()Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/do;->cV()Ljava/net/HttpURLConnection;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 65
    :cond_0
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/do;->c(Ljava/net/HttpURLConnection;)V

    .line 1125
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/identity/auth/device/framework/RetryLogic;->a(Ljava/net/URL;)V

    .line 1127
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    .line 1128
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "PUT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1136
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 1137
    iget-object v2, p0, Lcom/amazon/identity/auth/device/do;->jR:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1149
    invoke-static {v1}, Lcom/amazon/identity/auth/device/ja;->a(Ljava/io/Closeable;)V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1141
    :try_start_1
    sget-object v2, Lcom/amazon/identity/auth/device/do;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got a security exception while trying to establish connection. Verify that your app has internet access permission android.permission.INTERNET."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1143
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1141
    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1149
    :goto_0
    invoke-static {v1}, Lcom/amazon/identity/auth/device/ja;->a(Ljava/io/Closeable;)V

    .line 1150
    throw v0
.end method

.method protected cV()Ljava/net/HttpURLConnection;
    .locals 3

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ew;->c(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 161
    sget-object v1, Lcom/amazon/identity/auth/device/do;->TAG:Ljava/lang/String;

    const-string v2, "IOException while cloning connection. Should not happen"

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jR:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

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

    .line 168
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jQ:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jQ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 184
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 189
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .locals 0

    .line 216
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/do;->jS:Ljava/lang/Integer;

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public setDoInput(Z)V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 0

    .line 221
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/do;->jT:Ljava/lang/Long;

    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 178
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/do;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/amazon/identity/auth/device/do;->jP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->usingProxy()Z

    move-result v0

    return v0
.end method
