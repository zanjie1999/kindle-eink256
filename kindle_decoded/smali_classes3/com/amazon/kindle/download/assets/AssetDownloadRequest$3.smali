.class final synthetic Lcom/amazon/kindle/download/assets/AssetDownloadRequest$3;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "AssetDownloadRequest.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/assets/AssetDownloadRequest;-><init>(Ljava/lang/String;Lcom/amazon/kindle/services/download/IBookAsset;Ljava/util/List;Ljava/util/List;Lcom/amazon/kindle/metrics/IAssetDownloadRequestMetricsEmitter;Lcom/amazon/kindle/metrics/IAppInternalErrorGranularDetailMetricsEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kindle/download/assets/AssetDownloadRequest;)V
    .locals 7

    const-class v3, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;

    const/4 v1, 0x2

    const-string v4, "handleAPNXHintHeader"

    const-string v5, "handleAPNXHintHeader(Ljava/lang/String;Ljava/lang/String;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest$3;->invoke(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "p1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;

    .line 70
    invoke-static {v0, p1, p2}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->access$handleAPNXHintHeader(Lcom/amazon/kindle/download/assets/AssetDownloadRequest;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
