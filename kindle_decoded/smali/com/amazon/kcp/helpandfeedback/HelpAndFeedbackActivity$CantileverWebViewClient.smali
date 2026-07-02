.class Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity$CantileverWebViewClient;
.super Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;
.source "HelpAndFeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CantileverWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;Landroid/app/Activity;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity$CantileverWebViewClient;->this$0:Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;

    .line 499
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method private logThankYouPageMetric(Landroid/net/Uri;)V
    .locals 3

    .line 580
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    .line 581
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "thankyouphone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "HelpAndFeedback"

    if-eqz v1, :cond_0

    const-string p1, "CantileverReachedPhoneThankYou"

    .line 582
    invoke-virtual {v0, v2, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 583
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "thankyoufeedback"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "CantileverReachedFeedbackThankYou"

    .line 584
    invoke-virtual {v0, v2, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "CantileverReachedThankYou"

    .line 586
    invoke-virtual {v0, v2, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 566
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 567
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 568
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "thankyou"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 569
    iget-object p2, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity$CantileverWebViewClient;->this$0:Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;

    invoke-static {p2}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->access$600(Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;)V

    .line 570
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/network/INetworkService;->hasNetworkConnectivity()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "dtsSessionId"

    .line 571
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 572
    iget-object v0, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity$CantileverWebViewClient;->this$0:Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;

    invoke-static {v0, p2}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->access$700(Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;Ljava/lang/String;)V

    .line 574
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity$CantileverWebViewClient;->logThankYouPageMetric(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 550
    iget-object v0, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity$CantileverWebViewClient;->this$0:Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;

    invoke-static {v0, p2}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->access$500(Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    invoke-static {}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Trying to load url which is not allowed: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string p2, "HelpAndFeedback"

    const-string p3, "CantileverUrlNotAllowed"

    invoke-virtual {p1, p2, p3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object p1, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity$CantileverWebViewClient;->this$0:Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/librarymodule/R$string;->help_and_feedback_error:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 554
    iget-object p1, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity$CantileverWebViewClient;->this$0:Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 558
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/helpandfeedback/CantileverUtils;->isForumsInTreatment()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/amazon/kcp/store/DomainPermissions;->fromUrl(Ljava/lang/String;)Lcom/amazon/kcp/store/DomainPermissions;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/store/DomainPermissions;->AMAZON:Lcom/amazon/kcp/store/DomainPermissions;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity$CantileverWebViewClient;->this$0:Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p2}, Lokhttp3/HttpUrl;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->setAmznAppInfoCookie(Landroid/content/Context;Lokhttp3/HttpUrl;Landroid/webkit/CookieManager;)V

    .line 561
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 516
    iget-object v0, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity$CantileverWebViewClient;->this$0:Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;

    invoke-static {v0}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->access$200(Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;)Lcom/amazon/kcp/helpandfeedback/HelpWebErrorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity$CantileverWebViewClient;->this$0:Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;

    invoke-static {v0}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->access$200(Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;)Lcom/amazon/kcp/helpandfeedback/HelpWebErrorHandler;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/helpandfeedback/WebViewState$NetworkError;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->access$300(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kcp/helpandfeedback/WebViewState$NetworkError;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lcom/amazon/kcp/helpandfeedback/HelpWebErrorHandler;->updateWebViewState(Landroid/webkit/WebView;Lcom/amazon/kcp/helpandfeedback/WebViewState;)V

    goto :goto_0

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity$CantileverWebViewClient;->this$0:Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;

    invoke-static {v0}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->access$400(Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 522
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 504
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 507
    invoke-static {p1}, Lcom/amazon/kcp/application/WebViewSSLErrorHelper;->isProblematicChromeVersion(Landroid/webkit/WebView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity$CantileverWebViewClient;->this$0:Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;

    invoke-static {p1}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->access$000(Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;)Lcom/amazon/kcp/application/WebViewSSLErrorHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/application/WebViewSSLErrorHandler;->handleWebViewSSLError()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 508
    invoke-static {}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SSLError: system webview version upgrade request has been handled"

    invoke-static {p1, p3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .line 527
    invoke-static {}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->access$100()Ljava/lang/String;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v2, "URL requested: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 529
    invoke-static {p2}, Lcom/amazon/kcp/util/FalkorUtils;->isFalkorURL(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    new-instance p1, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 531
    iget-object p2, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity$CantileverWebViewClient;->this$0:Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return v0

    .line 537
    :cond_0
    invoke-static {p2}, Lcom/amazon/kcp/helpandfeedback/CantileverUtils;->isExitChatUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p2}, Lcom/amazon/kcp/helpandfeedback/CantileverUtils;->isWebViewCompleteURL(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 541
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity$CantileverWebViewClient;->this$0:Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;

    invoke-static {v1, p2}, Lcom/amazon/kindle/KindleProtocolHandler;->handle(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 544
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 538
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity$CantileverWebViewClient;->this$0:Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return v0
.end method
