.class public final Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController$webViewCallback$1;
.super Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;
.source "FaveBottomSheetController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;-><init>(Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field final synthetic this$0:Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;


# direct methods
.method constructor <init>(Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ")V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController$webViewCallback$1;->this$0:Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;

    iput-object p2, p0, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController$webViewCallback$1;->$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {p0, p3, p4}, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-super {p0, p1, p2}, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->getHasError()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController$webViewCallback$1;->this$0:Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->refreshBottomSheet(Z)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failingUrl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController$webViewCallback$1;->this$0:Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;

    new-instance p2, Lcom/amazon/falkor/event/FaveBottomSheetWebViewLoadFailureEvent;

    invoke-direct {p2}, Lcom/amazon/falkor/event/FaveBottomSheetWebViewLoadFailureEvent;-><init>()V

    invoke-virtual {p1, p2}, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;->onFaveBottomSheetWebViewLoadFailureEvent(Lcom/amazon/falkor/event/FaveBottomSheetWebViewLoadFailureEvent;)V

    .line 64
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController$webViewCallback$1;->$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController$webViewCallback$1;->this$0:Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;

    invoke-static {p2}, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;->access$getTAG$p(Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "ReaderFaveBottomSheetWebResourceError"

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorResponse"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 57
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController$webViewCallback$1;->this$0:Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;

    new-instance p2, Lcom/amazon/falkor/event/FaveBottomSheetWebViewLoadFailureEvent;

    invoke-direct {p2}, Lcom/amazon/falkor/event/FaveBottomSheetWebViewLoadFailureEvent;-><init>()V

    invoke-virtual {p1, p2}, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;->onFaveBottomSheetWebViewLoadFailureEvent(Lcom/amazon/falkor/event/FaveBottomSheetWebViewLoadFailureEvent;)V

    .line 58
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController$webViewCallback$1;->$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController$webViewCallback$1;->this$0:Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;

    invoke-static {p2}, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;->access$getTAG$p(Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "ReaderFaveBottomSheetHttpError"

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
