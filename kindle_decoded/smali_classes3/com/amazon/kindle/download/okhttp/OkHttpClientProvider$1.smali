.class final Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$1;
.super Ljava/lang/Object;
.source "OkHttpClientProvider.kt"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lcom/amazon/foundation/internal/IThreadPoolManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazon/kindle/webservices/X509CustomTrust;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/krx/metrics/IMetricsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$1;->$metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Lcom/amazon/kindle/webservices/X509CustomTrust;
    .locals 3

    .line 92
    sget-object v0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;->Companion:Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$Companion;

    iget-object v1, p0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$1;->$metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$Companion;->access$processCustomTrustStore(Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$Companion;Landroid/content/Context;Lcom/amazon/kindle/krx/metrics/IMetricsManager;)Lcom/amazon/kindle/webservices/X509CustomTrust;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$1;->call()Lcom/amazon/kindle/webservices/X509CustomTrust;

    move-result-object v0

    return-object v0
.end method
