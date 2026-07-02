.class final Lcom/audible/mobile/networking/retrofit/okhttp/MarketplaceBasedUrlTranslatorOkHttpInterceptorFactory$UrlTranslatorInterceptor;
.super Ljava/lang/Object;
.source "MarketplaceBasedUrlTranslatorOkHttpInterceptorFactory.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/networking/retrofit/okhttp/MarketplaceBasedUrlTranslatorOkHttpInterceptorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UrlTranslatorInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/networking/retrofit/okhttp/MarketplaceBasedUrlTranslatorOkHttpInterceptorFactory;


# direct methods
.method private constructor <init>(Lcom/audible/mobile/networking/retrofit/okhttp/MarketplaceBasedUrlTranslatorOkHttpInterceptorFactory;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/audible/mobile/networking/retrofit/okhttp/MarketplaceBasedUrlTranslatorOkHttpInterceptorFactory$UrlTranslatorInterceptor;->this$0:Lcom/audible/mobile/networking/retrofit/okhttp/MarketplaceBasedUrlTranslatorOkHttpInterceptorFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/mobile/networking/retrofit/okhttp/MarketplaceBasedUrlTranslatorOkHttpInterceptorFactory;Lcom/audible/mobile/networking/retrofit/okhttp/MarketplaceBasedUrlTranslatorOkHttpInterceptorFactory$1;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/audible/mobile/networking/retrofit/okhttp/MarketplaceBasedUrlTranslatorOkHttpInterceptorFactory$UrlTranslatorInterceptor;-><init>(Lcom/audible/mobile/networking/retrofit/okhttp/MarketplaceBasedUrlTranslatorOkHttpInterceptorFactory;)V

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

    const-string v0, "Chain must not be null"

    .line 77
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 84
    iget-object v2, p0, Lcom/audible/mobile/networking/retrofit/okhttp/MarketplaceBasedUrlTranslatorOkHttpInterceptorFactory$UrlTranslatorInterceptor;->this$0:Lcom/audible/mobile/networking/retrofit/okhttp/MarketplaceBasedUrlTranslatorOkHttpInterceptorFactory;

    invoke-static {v2}, Lcom/audible/mobile/networking/retrofit/okhttp/MarketplaceBasedUrlTranslatorOkHttpInterceptorFactory;->access$100(Lcom/audible/mobile/networking/retrofit/okhttp/MarketplaceBasedUrlTranslatorOkHttpInterceptorFactory;)Lcom/audible/mobile/framework/UriTranslator;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/audible/mobile/framework/UriTranslator;->translate(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1

    .line 85
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 86
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
