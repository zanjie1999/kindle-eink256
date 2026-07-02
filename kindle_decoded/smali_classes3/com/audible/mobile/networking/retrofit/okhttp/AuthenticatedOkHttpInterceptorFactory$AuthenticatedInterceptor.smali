.class final Lcom/audible/mobile/networking/retrofit/okhttp/AuthenticatedOkHttpInterceptorFactory$AuthenticatedInterceptor;
.super Ljava/lang/Object;
.source "AuthenticatedOkHttpInterceptorFactory.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/networking/retrofit/okhttp/AuthenticatedOkHttpInterceptorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AuthenticatedInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/networking/retrofit/okhttp/AuthenticatedOkHttpInterceptorFactory;


# direct methods
.method private constructor <init>(Lcom/audible/mobile/networking/retrofit/okhttp/AuthenticatedOkHttpInterceptorFactory;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/audible/mobile/networking/retrofit/okhttp/AuthenticatedOkHttpInterceptorFactory$AuthenticatedInterceptor;->this$0:Lcom/audible/mobile/networking/retrofit/okhttp/AuthenticatedOkHttpInterceptorFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/mobile/networking/retrofit/okhttp/AuthenticatedOkHttpInterceptorFactory;Lcom/audible/mobile/networking/retrofit/okhttp/AuthenticatedOkHttpInterceptorFactory$1;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/audible/mobile/networking/retrofit/okhttp/AuthenticatedOkHttpInterceptorFactory$AuthenticatedInterceptor;-><init>(Lcom/audible/mobile/networking/retrofit/okhttp/AuthenticatedOkHttpInterceptorFactory;)V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object v1

    .line 53
    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-virtual {v0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v3

    .line 56
    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 57
    invoke-virtual {v4}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_0

    .line 58
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    .line 59
    invoke-virtual {v4, v5}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 60
    invoke-virtual {v5}, Lokio/Buffer;->readByteArray()[B

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    new-array v4, v4, [B

    .line 65
    :goto_0
    iget-object v5, p0, Lcom/audible/mobile/networking/retrofit/okhttp/AuthenticatedOkHttpInterceptorFactory$AuthenticatedInterceptor;->this$0:Lcom/audible/mobile/networking/retrofit/okhttp/AuthenticatedOkHttpInterceptorFactory;

    invoke-static {v5}, Lcom/audible/mobile/networking/retrofit/okhttp/AuthenticatedOkHttpInterceptorFactory;->access$100(Lcom/audible/mobile/networking/retrofit/okhttp/AuthenticatedOkHttpInterceptorFactory;)Lcom/audible/mobile/identity/IdentityManager;

    move-result-object v5

    invoke-interface {v5, v1, v2, v3, v4}, Lcom/audible/mobile/identity/IdentityManager;->newAuthenticatedHttpUrlConnectionHeaders(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;[B)Ljava/util/Map;

    move-result-object v1

    .line 67
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 68
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 69
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
