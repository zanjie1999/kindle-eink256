.class final Lcom/amazon/kindle/download/AssetRequestDownloadManager$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AssetRequestDownloadManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/AssetRequestDownloadManager;-><init>(Lcom/amazon/kindle/webservices/IWebRequestExecutor;Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/download/IDownloadResumptionTracker;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/download/AssetRequestDownloadManager$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/download/AssetRequestDownloadManager$1;

    invoke-direct {v0}, Lcom/amazon/kindle/download/AssetRequestDownloadManager$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/download/AssetRequestDownloadManager$1;->INSTANCE:Lcom/amazon/kindle/download/AssetRequestDownloadManager$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/download/IDownloadResumptionTracker;
    .locals 2

    .line 53
    new-instance v0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;

    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerKt;->access$getDownloadEntryPoints$p()Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;-><init>(Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/amazon/kindle/download/AssetRequestDownloadManager$1;->invoke()Lcom/amazon/kindle/download/IDownloadResumptionTracker;

    move-result-object v0

    return-object v0
.end method
