.class final Lcom/audible/mobile/networking/retrofit/okhttp/NetworkingDefaultsUserAgentOkHttpInterceptorFactory$UserAgentInterceptor;
.super Ljava/lang/Object;
.source "NetworkingDefaultsUserAgentOkHttpInterceptorFactory.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/networking/retrofit/okhttp/NetworkingDefaultsUserAgentOkHttpInterceptorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserAgentInterceptor"
.end annotation


# direct methods
.method private constructor <init>(Lcom/audible/mobile/networking/retrofit/okhttp/NetworkingDefaultsUserAgentOkHttpInterceptorFactory;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/mobile/networking/retrofit/okhttp/NetworkingDefaultsUserAgentOkHttpInterceptorFactory;Lcom/audible/mobile/networking/retrofit/okhttp/NetworkingDefaultsUserAgentOkHttpInterceptorFactory$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/audible/mobile/networking/retrofit/okhttp/NetworkingDefaultsUserAgentOkHttpInterceptorFactory$UserAgentInterceptor;-><init>(Lcom/audible/mobile/networking/retrofit/okhttp/NetworkingDefaultsUserAgentOkHttpInterceptorFactory;)V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-static {}, Lcom/audible/mobile/downloader/NetworkingDefaults;->getInstance()Lcom/audible/mobile/downloader/NetworkingDefaults;

    move-result-object v1

    invoke-virtual {v1}, Lcom/audible/mobile/downloader/NetworkingDefaults;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
