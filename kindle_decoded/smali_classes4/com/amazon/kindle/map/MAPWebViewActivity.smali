.class public Lcom/amazon/kindle/map/MAPWebViewActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "MAPWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/map/MAPWebViewActivity$StandaloneMAPWebViewClient;
    }
.end annotation


# static fields
.field private static final MY_COUPON_URL:Ljava/lang/String; = "https://www.amazon.cn/gp/aw/mycoupon"

.field public static final PARAM_START_URL:Ljava/lang/String; = "startUrl"

.field public static final PARAM_TITILE:Ljava/lang/String; = "title"

.field private static final SIGN_IN_URL:Ljava/lang/String; = "https://www.amazon.cn/ap/signin"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private loadingSpinner:Landroid/widget/ProgressBar;

.field private mStartURL:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/amazon/kindle/map/MAPWebViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/map/MAPWebViewActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/amazon/kindle/map/MAPWebViewActivity;->mWebView:Landroid/webkit/WebView;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/map/MAPWebViewActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/kindle/map/MAPWebViewActivity;->loadingSpinner:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private createWebView()V
    .locals 3

    .line 81
    sget v0, Lcom/amazon/kcp/more/R$layout;->map_webview:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 82
    sget v0, Lcom/amazon/kcp/more/R$id;->webview:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/amazon/kindle/map/MAPWebViewActivity;->mWebView:Landroid/webkit/WebView;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebView Created "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/map/MAPWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/amazon/kindle/map/MAPWebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/amazon/kindle/map/MAPWebViewActivity$StandaloneMAPWebViewClient;

    invoke-direct {v1, p0, p0}, Lcom/amazon/kindle/map/MAPWebViewActivity$StandaloneMAPWebViewClient;-><init>(Lcom/amazon/kindle/map/MAPWebViewActivity;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 89
    iget-object v0, p0, Lcom/amazon/kindle/map/MAPWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 91
    iget-object v0, p0, Lcom/amazon/kindle/map/MAPWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 94
    iget-object v0, p0, Lcom/amazon/kindle/map/MAPWebViewActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    const/16 v1, 0xc

    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 52
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "startUrl"

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 56
    iput-object v0, p0, Lcom/amazon/kindle/map/MAPWebViewActivity;->mStartURL:Ljava/lang/String;

    :cond_1
    const-string v0, "title"

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 63
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kindle/map/MAPWebViewActivity;->createWebView()V

    .line 73
    iget-object p1, p0, Lcom/amazon/kindle/map/MAPWebViewActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/amazon/kindle/map/MAPWebViewActivity;->mStartURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 74
    sget p1, Lcom/amazon/kcp/more/R$id;->map_webview_loading_spinner:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/amazon/kindle/map/MAPWebViewActivity;->loadingSpinner:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Loading URL "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/map/MAPWebViewActivity;->mStartURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyDown code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/amazon/kindle/map/MAPWebViewActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const/4 p1, 0x1

    return p1

    .line 112
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 117
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 119
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/amazon/kcp/more/R$id;->store_menu_home:I

    if-ne v0, v1, :cond_1

    .line 120
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->HOME:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/library/ILibraryController;->showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V

    goto :goto_0

    .line 121
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/amazon/kcp/more/R$id;->store_menu_store:I

    if-ne v0, v1, :cond_2

    .line 122
    sget-object p1, Lcom/amazon/kindle/store/StoreType;->BOOKSTORE:Lcom/amazon/kindle/store/StoreType;

    invoke-static {p0, p1}, Lcom/amazon/kindle/utils/StoreOpeners;->createStorefrontOpener(Landroid/content/Context;Lcom/amazon/kindle/store/StoreType;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    const-string v0, "kin_red_lib_0"

    .line 123
    invoke-interface {p1, v0}, Lcom/amazon/kindle/store/StoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 124
    invoke-interface {p1}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 126
    :cond_2
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
