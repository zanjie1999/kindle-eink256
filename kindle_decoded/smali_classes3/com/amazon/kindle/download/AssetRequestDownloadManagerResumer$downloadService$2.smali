.class final Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer$downloadService$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AssetRequestDownloadManagerResumer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;-><init>(Lcom/amazon/kindle/download/IDownloadSerializationHandler;Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/services/download/IDownloadService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer$downloadService$2;->this$0:Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/services/download/IDownloadService;
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer$downloadService$2;->this$0:Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;

    invoke-static {v0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;->access$getDownloadDiscoveryEntryPoints$p(Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;)Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;->getReaderDownloadModule()Lcom/amazon/kindle/download/IReaderDownloadModule;

    move-result-object v0

    const-string v1, "downloadDiscoveryEntryPoints.readerDownloadModule"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/download/IReaderDownloadModule;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object v0

    const-string v1, "downloadDiscoveryEntryPo\u2026oadModule.downloadService"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer$downloadService$2;->invoke()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object v0

    return-object v0
.end method
