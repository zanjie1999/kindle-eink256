.class final Lcom/amazon/readingactions/ui/widget/webview/WebViewController$WebViewWidgetJavascriptInterface;
.super Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;
.source "WebViewController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/webview/WebViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WebViewWidgetJavascriptInterface"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final webViewWidget:Lcom/amazon/readingactions/ui/widget/webview/WebViewController;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/readingactions/ui/widget/webview/WebViewController;)V
    .locals 2

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "webViewWidget"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$PLUGIN;

    const-string v1, "EndActionsAndroidModule"

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$PLUGIN;-><init>(Ljava/lang/String;)V

    const-string v1, "com.amazon.readingactions.ui.widget.webview"

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController$WebViewWidgetJavascriptInterface;->webViewWidget:Lcom/amazon/readingactions/ui/widget/webview/WebViewController;

    const-string p1, "com.amazon.readingactions.ui.widget.webview.WebViewController"

    .line 151
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController$WebViewWidgetJavascriptInterface;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public reportActionMetric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 162
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Reporting Reading Actions Webview action metric "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController$WebViewWidgetJavascriptInterface;->webViewWidget:Lcom/amazon/readingactions/ui/widget/webview/WebViewController;

    invoke-static {p2}, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->access$getModel$p(Lcom/amazon/readingactions/ui/widget/webview/WebViewController;)Lcom/amazon/ea/model/widget/webview/WebViewModel;

    move-result-object p2

    iget-object p2, p2, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
