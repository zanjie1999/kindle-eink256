.class public Lcom/audible/android/kcp/store/AudibleStoreFragment;
.super Landroidx/fragment/app/Fragment;
.source "AudibleStoreFragment.java"


# instance fields
.field private audibleStoreJavaScriptBridge:Lcom/audible/android/kcp/store/AudibleStoreJavaScriptBridge;

.field private javascriptFunctionCaller:Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller;

.field private mIsStoreWebViewInitialized:Z

.field private mStoreWebView:Landroid/webkit/WebView;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;

.field private themeArea:Lcom/amazon/kindle/krx/theme/ThemeArea;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 40
    sget-object v0, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    iput-object v0, p0, Lcom/audible/android/kcp/store/AudibleStoreFragment;->themeArea:Lcom/amazon/kindle/krx/theme/ThemeArea;

    return-void
.end method


# virtual methods
.method public getWebView()Landroid/webkit/WebView;
    .locals 5

    .line 121
    iget-boolean v0, p0, Lcom/audible/android/kcp/store/AudibleStoreFragment;->mIsStoreWebViewInitialized:Z

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/audible/android/kcp/store/AudibleStoreFragment;->mStoreWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/audible/android/kcp/store/AudibleStoreWebViewClient;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    invoke-direct {v1, v2}, Lcom/audible/android/kcp/store/AudibleStoreWebViewClient;-><init>(Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 123
    iget-object v0, p0, Lcom/audible/android/kcp/store/AudibleStoreFragment;->mStoreWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 124
    iget-object v0, p0, Lcom/audible/android/kcp/store/AudibleStoreFragment;->mStoreWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 125
    new-instance v0, Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller;

    iget-object v2, p0, Lcom/audible/android/kcp/store/AudibleStoreFragment;->mStoreWebView:Landroid/webkit/WebView;

    invoke-direct {v0, v2}, Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/audible/android/kcp/store/AudibleStoreFragment;->javascriptFunctionCaller:Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller;

    .line 126
    new-instance v0, Lcom/audible/android/kcp/store/AudibleStoreJavaScriptBridge;

    iget-object v2, p0, Lcom/audible/android/kcp/store/AudibleStoreFragment;->javascriptFunctionCaller:Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller;

    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-string v4, "AndroidJavaScriptBridge"

    invoke-direct {v0, v4, v2, v3}, Lcom/audible/android/kcp/store/AudibleStoreJavaScriptBridge;-><init>(Ljava/lang/String;Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/audible/android/kcp/store/AudibleStoreFragment;->audibleStoreJavaScriptBridge:Lcom/audible/android/kcp/store/AudibleStoreJavaScriptBridge;

    .line 128
    iget-object v2, p0, Lcom/audible/android/kcp/store/AudibleStoreFragment;->mStoreWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    new-instance v0, Lcom/audible/hushpuppy/view/common/BrowserHostJavaScriptBridge;

    invoke-direct {v0}, Lcom/audible/hushpuppy/view/common/BrowserHostJavaScriptBridge;-><init>()V

    .line 131
    iget-object v2, p0, Lcom/audible/android/kcp/store/AudibleStoreFragment;->mStoreWebView:Landroid/webkit/WebView;

    const-string v3, "BrowserHost"

    invoke-virtual {v2, v0, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iput-boolean v1, p0, Lcom/audible/android/kcp/store/AudibleStoreFragment;->mIsStoreWebViewInitialized:Z

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/audible/android/kcp/store/AudibleStoreFragment;->mStoreWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 83
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 85
    instance-of v0, p1, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    if-eqz v0, :cond_0

    .line 86
    check-cast p1, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    .line 87
    iget-object v0, p0, Lcom/audible/android/kcp/store/AudibleStoreFragment;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 88
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p1}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->getStoreType()Lcom/audible/android/kcp/store/StoreType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/audible/android/kcp/store/StoreType;->getTitle()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    const/4 p1, 0x1

    .line 91
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 51
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 53
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 57
    invoke-static {}, Lcom/amazon/kindle/krx/theme/ThemeArea;->values()[Lcom/amazon/kindle/krx/theme/ThemeArea;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "StoreFragmentThemeArea"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/audible/android/kcp/store/AudibleStoreFragment;->themeArea:Lcom/amazon/kindle/krx/theme/ThemeArea;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 64
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object p3

    invoke-interface {p3}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->kindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p3

    .line 66
    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object p3

    iget-object v0, p0, Lcom/audible/android/kcp/store/AudibleStoreFragment;->themeArea:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {p3, v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object p3

    sget-object v0, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    .line 67
    sget p3, Lcom/amazon/kindle/hushpuppy/plugin/R$layout;->screen_amazon_webview_dark:I

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 69
    :cond_0
    sget p3, Lcom/amazon/kindle/hushpuppy/plugin/R$layout;->screen_amazon_webview_light:I

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 72
    :goto_0
    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->webview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/audible/android/kcp/store/AudibleStoreFragment;->mStoreWebView:Landroid/webkit/WebView;

    .line 73
    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->webview_toolbar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    iput-object p2, p0, Lcom/audible/android/kcp/store/AudibleStoreFragment;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 75
    iput-boolean v1, p0, Lcom/audible/android/kcp/store/AudibleStoreFragment;->mIsStoreWebViewInitialized:Z

    return-object p1
.end method

.method public onStart()V
    .locals 2

    .line 99
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 102
    invoke-virtual {p0}, Lcom/audible/android/kcp/store/AudibleStoreFragment;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    invoke-virtual {v1}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/audible/android/kcp/store/AudibleStoreFragment;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 111
    invoke-virtual {p0}, Lcom/audible/android/kcp/store/AudibleStoreFragment;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 112
    invoke-virtual {p0}, Lcom/audible/android/kcp/store/AudibleStoreFragment;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/audible/android/kcp/store/AudibleStoreFragment;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 115
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method
