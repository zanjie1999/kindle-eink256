.class final Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$cachedClient$2;
.super Lkotlin/jvm/internal/Lambda;
.source "OkHttpClientProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/util/concurrent/Future;)V
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


# instance fields
.field final synthetic $certFuture:Ljava/util/concurrent/Future;

.field final synthetic this$0:Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;Ljava/util/concurrent/Future;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$cachedClient$2;->this$0:Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;

    iput-object p2, p0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$cachedClient$2;->$certFuture:Ljava/util/concurrent/Future;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$cachedClient$2;->invoke()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lokhttp3/OkHttpClient;
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$cachedClient$2;->this$0:Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;

    iget-object v1, p0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$cachedClient$2;->$certFuture:Ljava/util/concurrent/Future;

    invoke-static {v0, v1}, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;->access$buildClient(Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;Ljava/util/concurrent/Future;)Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
