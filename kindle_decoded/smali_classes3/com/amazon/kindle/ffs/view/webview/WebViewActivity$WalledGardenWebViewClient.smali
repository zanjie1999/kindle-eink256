.class final Lcom/amazon/kindle/ffs/view/webview/WebViewActivity$WalledGardenWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebViewActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/ffs/view/webview/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WalledGardenWebViewClient"
.end annotation


# instance fields
.field private activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/kindle/ffs/view/webview/WebViewActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/ffs/view/webview/WebViewActivity;)V
    .locals 1

    const-string v0, "webViewActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 153
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/webview/WebViewActivity$WalledGardenWebViewClient;->activity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final onPageTransition(Landroid/webkit/WebView;I)V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/webview/WebViewActivity$WalledGardenWebViewClient;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/ffs/view/webview/WebViewActivity;

    if-eqz v0, :cond_0

    .line 171
    invoke-static {v0}, Lcom/amazon/kindle/ffs/view/webview/WebViewActivity;->access$getMobileCssStyleWorkaroundJsSnippet$p(Lcom/amazon/kindle/ffs/view/webview/WebViewActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p1, v1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 174
    invoke-virtual {p1}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    sget v0, Lcom/amazon/kindle/ffs/R$id;->webViewProgressBar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 165
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    const/16 p2, 0x8

    .line 166
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/ffs/view/webview/WebViewActivity$WalledGardenWebViewClient;->onPageTransition(Landroid/webkit/WebView;I)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 160
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 p2, 0x0

    .line 161
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/ffs/view/webview/WebViewActivity$WalledGardenWebViewClient;->onPageTransition(Landroid/webkit/WebView;I)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 156
    sget-object p1, Lcom/amazon/kindle/ffs/view/webview/WebViewActivity;->Companion:Lcom/amazon/kindle/ffs/view/webview/WebViewActivity$Companion;

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/ffs/view/webview/WebViewActivity$Companion;->isAmazonHelpPage(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
