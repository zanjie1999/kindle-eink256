.class final Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor$connectionDetailsTrackingClient$2;
.super Lkotlin/jvm/internal/Lambda;
.source "OkHttpWebRequestExecutor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;-><init>(Lokhttp3/OkHttpClient;Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lcom/amazon/kindle/services/locale/ILocaleManager;Landroid/content/Context;Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lokhttp3/OkHttpClient;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOkHttpWebRequestExecutor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkHttpWebRequestExecutor.kt\ncom/amazon/kindle/webservices/OkHttpWebRequestExecutor$connectionDetailsTrackingClient$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,404:1\n734#2:405\n825#2,2:406\n*E\n*S KotlinDebug\n*F\n+ 1 OkHttpWebRequestExecutor.kt\ncom/amazon/kindle/webservices/OkHttpWebRequestExecutor$connectionDetailsTrackingClient$2\n*L\n83#1:405\n83#1,2:406\n*E\n"
.end annotation


# instance fields
.field final synthetic $blockedProtocols:Ljava/util/Collection;

.field final synthetic $okHttpClient:Lokhttp3/OkHttpClient;

.field final synthetic this$0:Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;Lokhttp3/OkHttpClient;Ljava/util/Collection;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor$connectionDetailsTrackingClient$2;->this$0:Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;

    iput-object p2, p0, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor$connectionDetailsTrackingClient$2;->$okHttpClient:Lokhttp3/OkHttpClient;

    iput-object p3, p0, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor$connectionDetailsTrackingClient$2;->$blockedProtocols:Ljava/util/Collection;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor$connectionDetailsTrackingClient$2;->invoke()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lokhttp3/OkHttpClient;
    .locals 5

    .line 83
    iget-object v0, p0, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor$connectionDetailsTrackingClient$2;->$okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object v0

    const-string v1, "okHttpClient.protocols()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 406
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lokhttp3/Protocol;

    .line 84
    iget-object v4, p0, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor$connectionDetailsTrackingClient$2;->$blockedProtocols:Ljava/util/Collection;

    invoke-interface {v4, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor$connectionDetailsTrackingClient$2;->$okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v2, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor$connectionDetailsTrackingClient$2$1;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor$connectionDetailsTrackingClient$2$1;-><init>(Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor$connectionDetailsTrackingClient$2;)V

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory(Lokhttp3/EventListener$Factory;)Lokhttp3/OkHttpClient$Builder;

    const-wide/16 v2, 0xf

    .line 91
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 92
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3c

    invoke-virtual {v0, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 93
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 94
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    .line 95
    new-instance v1, Lcom/amazon/kindle/webservices/okhttp/ADPSigningNetworkInterceptor;

    iget-object v2, p0, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor$connectionDetailsTrackingClient$2;->this$0:Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;

    invoke-static {v2}, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->access$getAuthManager$p(Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;)Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3, v4}, Lcom/amazon/kindle/webservices/okhttp/ADPSigningNetworkInterceptor;-><init>(Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/util/RetryConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 96
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
