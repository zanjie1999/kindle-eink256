.class public Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;
.super Ljava/net/HttpURLConnection;
.source "HttpsToHttpAdapter.java"


# instance fields
.field private httpURLConnection:Ljava/net/HttpURLConnection;

.field private urlConnection:Ljava/net/URLConnection;


# direct methods
.method public constructor <init>(Ljava/net/URLConnection;)V
    .locals 1

    .line 23
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 24
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    .line 25
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 26
    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->httpURLConnection:Ljava/net/HttpURLConnection;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->httpURLConnection:Ljava/net/HttpURLConnection;

    :goto_0
    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getExpiration()J
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderFields()Ljava/util/Map;
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

    .line 197
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLastModified()J
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 202
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    return v0

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    return-void

    .line 130
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setConnectTimeout(I)V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public setDoInput(Z)V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDoInput(Z)V

    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    return-void

    .line 122
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setIfModifiedSince(J)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->setIfModifiedSince(J)V

    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-void

    .line 109
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setReadTimeout(I)V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void

    .line 80
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->usingProxy()Z

    move-result v0

    return v0

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
