.class public final Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment$webViewCallback$1;
.super Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;
.source "WebViewFragments.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $fragmentId:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment;


# direct methods
.method constructor <init>(Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ")V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment$webViewCallback$1;->this$0:Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment;

    iput-object p2, p0, Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment$webViewCallback$1;->$fragmentId:Ljava/lang/String;

    invoke-direct {p0, p3, p4}, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-super {p0, p1, p2}, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 37
    sget-object p1, Lcom/amazon/falkor/utils/FalkorThreadUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorThreadUtils;

    sget-object p2, Lcom/amazon/falkor/KindleReaderSDKReference;->INSTANCE:Lcom/amazon/falkor/KindleReaderSDKReference;

    invoke-virtual {p2}, Lcom/amazon/falkor/KindleReaderSDKReference;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p2

    .line 38
    new-instance v0, Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment$webViewCallback$1$onPageFinished$1;

    invoke-direct {v0, p0}, Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment$webViewCallback$1$onPageFinished$1;-><init>(Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment$webViewCallback$1;)V

    const-wide/16 v1, 0x1f4

    .line 37
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/amazon/falkor/utils/FalkorThreadUtils;->scheduleOnMainThread(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/Runnable;J)V

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

    .line 47
    invoke-super {p0, p1, p2, p3, p4}, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 48
    sget-object p1, Lcom/amazon/falkor/KindleReaderSDKReference;->INSTANCE:Lcom/amazon/falkor/KindleReaderSDKReference;

    invoke-virtual {p1}, Lcom/amazon/falkor/KindleReaderSDKReference;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getNetworkService()Lcom/amazon/kindle/krx/network/INetworkService;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/network/INetworkService;->hasNetworkConnectivity()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment$webViewCallback$1;->$fragmentId:Ljava/lang/String;

    sget-object p2, Lcom/amazon/falkor/BottomSheetID;->STORE_BOTTOM_SHEET_ID:Lcom/amazon/falkor/BottomSheetID;

    invoke-virtual {p2}, Lcom/amazon/falkor/BottomSheetID;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment$webViewCallback$1;->this$0:Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment;

    invoke-static {p1}, Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment;->access$getMessageQueue$p(Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment;)Lkotlin/Lazy;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance p2, Lcom/amazon/falkor/event/DismissStoreBottomSheetEvent;

    invoke-direct {p2}, Lcom/amazon/falkor/event/DismissStoreBottomSheetEvent;-><init>()V

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 50
    sget-object p1, Lcom/amazon/falkor/KindleReaderSDKReference;->INSTANCE:Lcom/amazon/falkor/KindleReaderSDKReference;

    invoke-virtual {p1}, Lcom/amazon/falkor/KindleReaderSDKReference;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    const-string/jumbo p2, "sdk.applicationManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAlertDialogManager()Lcom/amazon/kindle/krx/application/IAlertDialogManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/application/IAlertDialogManager;->displayAlertDialog(Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;)V

    .line 52
    :cond_0
    sget-object p1, Lcom/amazon/falkor/KindleReaderSDKReference;->INSTANCE:Lcom/amazon/falkor/KindleReaderSDKReference;

    invoke-virtual {p1}, Lcom/amazon/falkor/KindleReaderSDKReference;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment$webViewCallback$1;->$fragmentId:Ljava/lang/String;

    const-string p3, "StoreWebViewWebResourceError"

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

    .line 42
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 43
    sget-object p1, Lcom/amazon/falkor/KindleReaderSDKReference;->INSTANCE:Lcom/amazon/falkor/KindleReaderSDKReference;

    invoke-virtual {p1}, Lcom/amazon/falkor/KindleReaderSDKReference;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/falkor/bottomsheet/WebViewWithSpinnerFragment$webViewCallback$1;->$fragmentId:Ljava/lang/String;

    const-string p3, "StoreWebViewHttpError"

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
