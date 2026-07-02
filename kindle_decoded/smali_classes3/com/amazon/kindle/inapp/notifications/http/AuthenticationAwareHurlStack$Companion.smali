.class public final Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack$Companion;
.super Ljava/lang/Object;
.source "AuthenticationAwareHurlStack.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthenticationAwareHurlStack.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthenticationAwareHurlStack.kt\ncom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack$Companion\n*L\n1#1,238:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$entityFromConnection(Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack$Companion;Ljava/net/HttpURLConnection;)Lorg/apache/http/HttpEntity;
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack$Companion;->entityFromConnection(Ljava/net/HttpURLConnection;)Lorg/apache/http/HttpEntity;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack$Companion;)Ljava/lang/String;
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack$Companion;->getTAG()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$hasResponseBody(Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack$Companion;II)Z
    .locals 0

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack$Companion;->hasResponseBody(II)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setConnectionParametersForRequest(Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack$Companion;Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack$Companion;->setConnectionParametersForRequest(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V

    return-void
.end method

.method private final addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/android/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .line 229
    invoke-virtual {p2}, Lcom/android/volley/Request;->getBody()[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 231
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 232
    invoke-virtual {p2}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Content-Type"

    invoke-virtual {p1, v1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    new-instance p2, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->write([B)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method private final entityFromConnection(Ljava/net/HttpURLConnection;)Lorg/apache/http/HttpEntity;
    .locals 4

    .line 194
    new-instance v0, Lorg/apache/http/entity/BasicHttpEntity;

    invoke-direct {v0}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    .line 195
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 197
    :goto_0
    new-instance v1, Lorg/apache/http/entity/BasicHttpEntity;

    invoke-direct {v1}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    .line 198
    invoke-virtual {v1, v0}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    .line 199
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 200
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/http/entity/BasicHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/http/entity/BasicHttpEntity;->setContentType(Ljava/lang/String;)V

    return-object v1
.end method

.method private final getTAG()Ljava/lang/String;
    .locals 1

    .line 137
    invoke-static {}, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final hasResponseBody(II)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 p1, 0x64

    if-gt p1, p2, :cond_0

    const/16 p1, 0xc8

    if-lt p2, p1, :cond_1

    :cond_0
    const/16 p1, 0xcc

    if-eq p2, p1, :cond_1

    const/16 p1, 0x130

    if-eq p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final setConnectionParametersForRequest(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/android/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .line 148
    invoke-virtual {p2}, Lcom/android/volley/Request;->getMethod()I

    move-result v0

    const-string v1, "POST"

    packed-switch v0, :pswitch_data_0

    .line 183
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown method type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const-string v0, "PATCH"

    .line 180
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 181
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack$Companion;->addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V

    goto :goto_0

    :pswitch_1
    const-string p2, "TRACE"

    .line 178
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p2, "OPTIONS"

    .line 177
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p2, "HEAD"

    .line 176
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p2, "DELETE"

    .line 167
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string v0, "PUT"

    .line 173
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack$Companion;->addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V

    goto :goto_0

    .line 169
    :pswitch_6
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack$Companion;->addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V

    goto :goto_0

    :pswitch_7
    const-string p2, "GET"

    .line 166
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :pswitch_8
    invoke-virtual {p2}, Lcom/android/volley/Request;->getPostBody()[B

    move-result-object v0

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack$Companion;->addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 159
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 160
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Lcom/android/volley/Request;->getPostBodyContentType()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Content-Type"

    .line 161
    invoke-virtual {p1, v1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance p2, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->write([B)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
