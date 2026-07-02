.class public final Lcom/amazon/kindle/ffs/view/webview/WebViewActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "WebViewActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/ffs/view/webview/WebViewActivity$WalledGardenWebViewClient;,
        Lcom/amazon/kindle/ffs/view/webview/WebViewActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/ffs/view/webview/WebViewActivity$Companion;


# instance fields
.field private final mobileCssStyleWorkaroundJsSnippet:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/ffs/view/webview/WebViewActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/ffs/view/webview/WebViewActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/ffs/view/webview/WebViewActivity;->Companion:Lcom/amazon/kindle/ffs/view/webview/WebViewActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "document.head.insertAdjacentHTML(\'beforeend\', \'<style>.cs-help-content { padding:7px !important; }</style>\');"

    .line 25
    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/webview/WebViewActivity;->mobileCssStyleWorkaroundJsSnippet:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getMobileCssStyleWorkaroundJsSnippet$p(Lcom/amazon/kindle/ffs/view/webview/WebViewActivity;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/kindle/ffs/view/webview/WebViewActivity;->mobileCssStyleWorkaroundJsSnippet:Ljava/lang/String;

    return-object p0
.end method

.method private final buildAmazonHelpPageUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 146
    sget-object v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getCustomerDomain()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "amazon.com"

    .line 147
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/gp/help/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "customer/display.html/?nodeId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&pop-up=1"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getWebView()Landroid/webkit/WebView;
    .locals 2

    .line 135
    sget v0, Lcom/amazon/kindle/ffs/R$id;->ffs_webview:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "this.findViewById(R.id.ffs_webview)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method private final loadUrl(Ljava/lang/String;)V
    .locals 1

    .line 127
    sget-object v0, Lcom/amazon/kindle/ffs/view/webview/WebViewActivity;->Companion:Lcom/amazon/kindle/ffs/view/webview/WebViewActivity$Companion;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/ffs/view/webview/WebViewActivity$Companion;->isAmazonHelpPage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/webview/WebViewActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 130
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final setupWebView()V
    .locals 3

    .line 140
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/webview/WebViewActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-string v2, "webView.settings"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 142
    new-instance v1, Lcom/amazon/kindle/ffs/view/webview/WebViewActivity$WalledGardenWebViewClient;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/ffs/view/webview/WebViewActivity$WalledGardenWebViewClient;-><init>(Lcom/amazon/kindle/ffs/view/webview/WebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 118
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/webview/WebViewActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 119
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 120
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "url"

    .line 121
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 122
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 123
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 109
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/webview/WebViewActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/view/webview/WebViewActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 41
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget v0, Lcom/amazon/kindle/ffs/R$layout;->ffs_webview:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 43
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/webview/WebViewActivity;->setupWebView()V

    .line 45
    sget v0, Lcom/amazon/kindle/ffs/R$id;->ffs_webview_navigation_toolbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 52
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/webview/WebViewActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "webViewState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    goto :goto_1

    .line 55
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 57
    invoke-direct {p0, p1}, Lcom/amazon/kindle/ffs/view/webview/WebViewActivity;->buildAmazonHelpPageUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-direct {p0, p1}, Lcom/amazon/kindle/ffs/view/webview/WebViewActivity;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 60
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 62
    invoke-direct {p0, p1}, Lcom/amazon/kindle/ffs/view/webview/WebViewActivity;->loadUrl(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ffs/R$menu;->ffs_webview_actions:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 70
    sget v0, Lcom/amazon/kindle/ffs/R$id;->ffs_webview_action_back:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const-string v0, "menu.findItem(R.id.ffs_webview_action_back)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 80
    sget v1, Lcom/amazon/kindle/ffs/R$id;->ffs_webview_action_back:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/webview/WebViewActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    .line 84
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 89
    :cond_0
    sget v1, Lcom/amazon/kindle/ffs/R$id;->ffs_webview_action_close:I

    if-ne v0, v1, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/view/webview/WebViewActivity;->finish()V

    goto :goto_0

    .line 97
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :cond_2
    :goto_0
    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 75
    sget v0, Lcom/amazon/kindle/ffs/R$id;->ffs_webview_action_back:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/webview/WebViewActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 103
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 104
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/webview/WebViewActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    const-string v1, "webViewState"

    .line 105
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
