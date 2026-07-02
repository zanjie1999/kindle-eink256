.class public Lcom/amazon/kcp/redding/WebViewActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "WebViewActivity.java"


# static fields
.field public static final EXTRA_FINISH_MENUITEM_GOES_HOME:Ljava/lang/String; = "finishMenuItemGoesHome"

.field public static final EXTRA_FINISH_MENUITEM_ICON_ID:Ljava/lang/String; = "finishMenuItemIconId"

.field public static final EXTRA_FINISH_MENUITEM_TEXT:Ljava/lang/String; = "finishMenuItemText"

.field public static final EXTRA_SCALE:Ljava/lang/String; = "scale"

.field public static final EXTRA_URL:Ljava/lang/String; = "url"

.field public static final EXTRA_ZOOM_CONTROLS:Ljava/lang/String; = "zoomControls"

.field private static final FINISH_MENUITEM_ID:I = -0x1

.field private static final INVALID_HOST:Ljava/lang/String; = "Invalid Host"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private goHomeOnFinishMenuItem:Z

.field private hasLoaded:Z

.field private host:Ljava/lang/String;

.field private loadingSpinner:Landroid/widget/ProgressBar;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/amazon/kcp/redding/WebViewActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/redding/WebViewActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/amazon/kcp/redding/WebViewActivity;->host:Ljava/lang/String;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/amazon/kcp/redding/WebViewActivity;->goHomeOnFinishMenuItem:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/redding/WebViewActivity;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/amazon/kcp/redding/WebViewActivity;->host:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/amazon/kcp/redding/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/amazon/kcp/redding/WebViewActivity;->host:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/amazon/kcp/redding/WebViewActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/redding/WebViewActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/amazon/kcp/redding/WebViewActivity;->loadingSpinner:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/redding/WebViewActivity;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/amazon/kcp/redding/WebViewActivity;->hasLoaded:Z

    return p0
.end method

.method static synthetic access$302(Lcom/amazon/kcp/redding/WebViewActivity;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/amazon/kcp/redding/WebViewActivity;->hasLoaded:Z

    return p1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 199
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/amazon/kcp/redding/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object p1, p0, Lcom/amazon/kcp/redding/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    const/4 p1, 0x1

    return p1

    .line 205
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 190
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configuration changed, orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string p1, "portrait"

    goto :goto_0

    :cond_0
    const-string p1, "landscape"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 80
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    sget p1, Lcom/amazon/kindle/krl/R$layout;->web_view_screen:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 83
    sget p1, Lcom/amazon/kindle/krl/R$id;->loading_spinner:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/amazon/kcp/redding/WebViewActivity;->loadingSpinner:Landroid/widget/ProgressBar;

    .line 85
    sget p1, Lcom/amazon/kindle/krl/R$id;->webview:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/amazon/kcp/redding/WebViewActivity;->webView:Landroid/webkit/WebView;

    .line 86
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 87
    iget-object p1, p0, Lcom/amazon/kcp/redding/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 88
    iget-object p1, p0, Lcom/amazon/kcp/redding/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 90
    iget-object p1, p0, Lcom/amazon/kcp/redding/WebViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/amazon/kcp/redding/WebViewActivity$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/redding/WebViewActivity$1;-><init>(Lcom/amazon/kcp/redding/WebViewActivity;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 119
    iget-object p1, p0, Lcom/amazon/kcp/redding/WebViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/amazon/kcp/redding/WebViewActivity$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/redding/WebViewActivity$2;-><init>(Lcom/amazon/kcp/redding/WebViewActivity;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 145
    iget-object p1, p0, Lcom/amazon/kcp/redding/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "scale"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 146
    iget-object p1, p0, Lcom/amazon/kcp/redding/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "zoomControls"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 148
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/amazon/kcp/redding/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 157
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "finishMenuItemText"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, -0x1

    .line 159
    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    .line 160
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "finishMenuItemIconId"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 162
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 164
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "finishMenuItemGoesHome"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kcp/redding/WebViewActivity;->goHomeOnFinishMenuItem:Z

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 172
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 184
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 174
    :cond_0
    iget-boolean p1, p0, Lcom/amazon/kcp/redding/WebViewActivity;->goHomeOnFinishMenuItem:Z

    if-eqz p1, :cond_1

    .line 175
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryController;->showLandingPage()V

    .line 177
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1
.end method
