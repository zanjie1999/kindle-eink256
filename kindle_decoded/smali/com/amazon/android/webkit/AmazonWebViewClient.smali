.class public Lcom/amazon/android/webkit/AmazonWebViewClient;
.super Ljava/lang/Object;
.source "AmazonWebViewClient.java"


# static fields
.field public static final ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

.field public static final ERROR_AUTHENTICATION:I = -0x4

.field public static final ERROR_BAD_URL:I = -0xc

.field public static final ERROR_CONNECT:I = -0x6

.field public static final ERROR_FAILED_SSL_HANDSHAKE:I = -0xb

.field public static final ERROR_FILE:I = -0xd

.field public static final ERROR_FILE_NOT_FOUND:I = -0xe

.field public static final ERROR_HOST_LOOKUP:I = -0x2

.field public static final ERROR_IO:I = -0x7

.field public static final ERROR_OK:I = 0x0

.field public static final ERROR_PROXY_AUTHENTICATION:I = -0x5

.field public static final ERROR_REDIRECT_LOOP:I = -0x9

.field public static final ERROR_TIMEOUT:I = -0x8

.field public static final ERROR_TOO_MANY_REQUESTS:I = -0xf

.field public static final ERROR_UNKNOWN:I = -0x1

.field public static final ERROR_UNSUPPORTED_AUTH_SCHEME:I = -0x3

.field public static final ERROR_UNSUPPORTED_SCHEME:I = -0xa


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(?i)((?:http|https|file):\\/\\/|(?:inline|data|about|javascript):)(.*)"

    .line 57
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/webkit/AmazonWebViewClient;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultShouldOverrideUrlLoading(Lcom/amazon/android/webkit/AmazonWebView;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "AmazonWebViewClient"

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    sget-object v2, Lcom/amazon/android/webkit/AmazonWebViewClient;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 70
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    .line 76
    :try_start_0
    invoke-static {p1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string v3, "android.intent.category.BROWSABLE"

    .line 77
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    const-string p0, "Unable to Launch Application"

    .line 84
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_1
    const-string p0, "Unable to Launch Application, check URI"

    .line 81
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public doUpdateVisitedHistory(Lcom/amazon/android/webkit/AmazonWebView;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onBeforeUrlRequest(Lcom/amazon/android/webkit/AmazonUrlRequest;)V
    .locals 0

    return-void
.end method

.method public onCompletedUrlRequest(Lcom/amazon/android/webkit/AmazonUrlRequest;)V
    .locals 0

    return-void
.end method

.method public onDocumentLoadFinished(Lcom/amazon/android/webkit/AmazonWebView;)V
    .locals 0

    return-void
.end method

.method public onFormResubmission(Lcom/amazon/android/webkit/AmazonWebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public onLoadResource(Lcom/amazon/android/webkit/AmazonWebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPageFinished(Lcom/amazon/android/webkit/AmazonWebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPageStarted(Lcom/amazon/android/webkit/AmazonWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public onPrerenderingComplete(Lcom/amazon/android/webkit/AmazonWebView;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/android/webkit/PrerenderStatus;)V
    .locals 0

    return-void
.end method

.method public onPrerenderingPageLoadFinished(Lcom/amazon/android/webkit/AmazonWebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPrerenderingStarted(Lcom/amazon/android/webkit/AmazonWebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReceivedError(Lcom/amazon/android/webkit/AmazonWebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReceivedHttpAuthRequest(Lcom/amazon/android/webkit/AmazonWebView;Lcom/amazon/android/webkit/AmazonHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReceivedLoginRequest(Lcom/amazon/android/webkit/AmazonWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReceivedSslError(Lcom/amazon/android/webkit/AmazonWebView;Lcom/amazon/android/webkit/AmazonSslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    return-void
.end method

.method public onScaleChanged(Lcom/amazon/android/webkit/AmazonWebView;FF)V
    .locals 0

    return-void
.end method

.method public onTooManyRedirects(Lcom/amazon/android/webkit/AmazonWebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public onUnhandledKeyEvent(Lcom/amazon/android/webkit/AmazonWebView;Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public shouldAllowPrerender(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public shouldInterceptRequest(Lcom/amazon/android/webkit/AmazonWebView;Ljava/lang/String;)Lcom/amazon/android/webkit/AmazonWebResourceResponse;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public shouldOverrideKeyEvent(Lcom/amazon/android/webkit/AmazonWebView;Landroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public shouldOverrideUrlLoading(Lcom/amazon/android/webkit/AmazonWebView;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
