.class public final Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController$webViewCallback$1;
.super Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;
.source "EndOfEpisodeController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;Lcom/amazon/falkor/download/NextEpisodeInfoDownloadManager;Lcom/amazon/falkor/utils/BookGroupUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field final synthetic this$0:Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;


# direct methods
.method constructor <init>(Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
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

    .line 78
    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController$webViewCallback$1;->this$0:Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;

    iput-object p2, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController$webViewCallback$1;->$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

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

    .line 101
    invoke-super {p0, p1, p2}, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->getHasError()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController$webViewCallback$1;->this$0:Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;

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

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController$webViewCallback$1;->this$0:Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;

    new-instance p2, Lcom/amazon/falkor/event/EOEWebViewLoadFailureEvent;

    invoke-direct {p2}, Lcom/amazon/falkor/event/EOEWebViewLoadFailureEvent;-><init>()V

    invoke-virtual {p1, p2}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;->onEOEWebViewLoadFailure(Lcom/amazon/falkor/event/EOEWebViewLoadFailureEvent;)V

    .line 97
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController$webViewCallback$1;->$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceConstants;

    invoke-virtual {p2}, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->getNEXT_EPISODE_CALLING_CLASS()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ReaderNextEpisodeWebResourceError"

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorResponse"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 81
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController$webViewCallback$1;->this$0:Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;

    new-instance p2, Lcom/amazon/falkor/event/EOEWebViewLoadFailureEvent;

    invoke-direct {p2}, Lcom/amazon/falkor/event/EOEWebViewLoadFailureEvent;-><init>()V

    invoke-virtual {p1, p2}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;->onEOEWebViewLoadFailure(Lcom/amazon/falkor/event/EOEWebViewLoadFailureEvent;)V

    .line 84
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController$webViewCallback$1;->$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController$webViewCallback$1;->this$0:Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;

    invoke-static {p2}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;->access$getTAG$p(Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received webView HttpError with statusCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController$webViewCallback$1;->$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    .line 88
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object p2

    const-string p3, "NextEpisodeReceivedWebViewHttpError"

    .line 87
    invoke-interface {p1, p3, p2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController$webViewCallback$1;->$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceConstants;

    invoke-virtual {p2}, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->getNEXT_EPISODE_CALLING_CLASS()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ReaderNextEpisodeHttpError"

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
