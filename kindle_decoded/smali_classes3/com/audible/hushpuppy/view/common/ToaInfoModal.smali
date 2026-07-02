.class public Lcom/audible/hushpuppy/view/common/ToaInfoModal;
.super Landroidx/fragment/app/DialogFragment;
.source "ToaInfoModal.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/network/WebviewLoadingView;


# static fields
.field private static final ARG_ASIN:Ljava/lang/String; = "arg_asin"

.field private static final ARG_COLOR_MODE:Ljava/lang/String; = "arg_color_mode"

.field private static final ARG_IS_KINDLE_APP:Ljava/lang/String; = "arg_is_kindle_app"

.field private static final ARG_MFA_INTERSTITIA_URL:Ljava/lang/String; = "arg_mfa_interstitial_url"

.field private static final ARG_ORDER_ID_PARAM:Ljava/lang/String; = "arg_order_id_param"

.field private static final ARG_THEME:Ljava/lang/String; = "arg_theme"

.field private static final ARG_VIEW_PARAM:Ljava/lang/String; = "arg_view_param"

.field private static final INTEGER_NINE:I = 0x9

.field private static final INTEGER_TEN:I = 0xa

.field private static final JAVASCRIPT_BRIDGE_NAME:Ljava/lang/String; = "AndroidJavaScriptBridge"

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final TABLET_WIDTH_BOUND:I = 0x258

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private asin:Ljava/lang/String;

.field protected audibleTOAInfoModalJavaScriptBridge:Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge;

.field private background:Landroid/view/View;

.field private closeButton:Landroid/widget/ImageView;

.field private colorMode:Ljava/lang/String;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private isKindleApp:Ljava/lang/String;

.field private mfaInterstitialUrl:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private progressBar:Landroid/widget/ProgressBar;

.field private theme:Ljava/lang/String;

.field private upsellPopUpWebView:Landroid/webkit/WebView;

.field private uriBuilder:Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder;

.field private viewParam:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    const-class v0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->TAG:Ljava/lang/String;

    .line 66
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/common/ToaInfoModal;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/audible/hushpuppy/common/logging/ILogger;
    .locals 1

    .line 44
    sget-object v0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-object v0
.end method

.method private initViews()V
    .locals 3

    .line 257
    sget-object v0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Initializing Webview..."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 258
    new-instance v0, Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->uriBuilder:Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder;

    .line 259
    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->upsellPopUpWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/audible/hushpuppy/common/network/AudibleMAPWebviewClient;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/audible/hushpuppy/common/network/AudibleMAPWebviewClient;-><init>(Landroid/app/Activity;Lcom/audible/hushpuppy/common/network/WebviewLoadingView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 260
    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->upsellPopUpWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 261
    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->upsellPopUpWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->audibleTOAInfoModalJavaScriptBridge:Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge;

    const-string v2, "AndroidJavaScriptBridge"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    new-instance v0, Lcom/audible/hushpuppy/view/common/BrowserHostJavaScriptBridge;

    invoke-direct {v0}, Lcom/audible/hushpuppy/view/common/BrowserHostJavaScriptBridge;-><init>()V

    .line 264
    iget-object v1, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->upsellPopUpWebView:Landroid/webkit/WebView;

    const-string v2, "BrowserHost"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->upsellPopUpWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    return-void
.end method

.method public static newInstance(Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/theme/Theme;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/audible/hushpuppy/view/common/ToaInfoModal;
    .locals 2

    .line 104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    sget-object p0, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    const-string v1, "arg_color_mode"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "arg_theme"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "arg_asin"

    .line 107
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "arg_view_param"

    .line 108
    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "arg_order_id_param"

    .line 109
    invoke-virtual {v0, p0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "arg_mfa_interstitial_url"

    .line 110
    invoke-virtual {v0, p0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "arg_is_kindle_app"

    .line 111
    invoke-virtual {v0, p0, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;

    invoke-direct {p0}, Lcom/audible/hushpuppy/view/common/ToaInfoModal;-><init>()V

    .line 113
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private refresh()V
    .locals 10

    .line 271
    sget-object v0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Refreshing views - loading url..."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 273
    iget-object v2, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->uriBuilder:Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder;

    if-eqz v2, :cond_0

    .line 274
    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->upsellPopUpWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->asin:Ljava/lang/String;

    iget-object v4, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->theme:Ljava/lang/String;

    iget-object v5, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->viewParam:Ljava/lang/String;

    iget-object v6, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->colorMode:Ljava/lang/String;

    iget-object v7, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->orderId:Ljava/lang/String;

    iget-object v8, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->mfaInterstitialUrl:Ljava/lang/String;

    iget-object v9, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->isKindleApp:Ljava/lang/String;

    invoke-virtual/range {v2 .. v9}, Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder;->getUpsellUriWithOrderIdAndMfaInterstitialUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 275
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/theme/Theme;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 196
    sget-object p1, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/view/common/ToaInfoModal;

    if-nez p1, :cond_0

    .line 198
    invoke-static/range {p2 .. p8}, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->newInstance(Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/theme/Theme;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/audible/hushpuppy/view/common/ToaInfoModal;

    move-result-object p1

    .line 200
    :cond_0
    sget-object p2, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method

.method private updateLayoutSize()V
    .locals 3

    .line 281
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 282
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 284
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 285
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 286
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, v1

    div-float/2addr v1, v0

    int-to-float v2, v2

    div-float/2addr v2, v0

    .line 289
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x44160000    # 600.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 294
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$dimen;->upsell_popup_modal_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 295
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$dimen;->upsell_popup_modal_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 298
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0xa

    .line 299
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v1, v1, 0x9

    div-int/lit8 v1, v1, 0xa

    .line 302
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 303
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method


# virtual methods
.method public dismissLoadingState()V
    .locals 2

    .line 248
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    sget-object v0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "dismissLoadingState"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->upsellPopUpWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 120
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 121
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->inject(Lcom/audible/hushpuppy/view/common/ToaInfoModal;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 172
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 174
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->updateLayoutSize()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 127
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "arg_color_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->colorMode:Ljava/lang/String;

    .line 129
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->eventBus()Lde/greenrobot/event/EventBus;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->eventBus:Lde/greenrobot/event/EventBus;

    .line 130
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "arg_theme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->theme:Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "arg_asin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->asin:Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "arg_view_param"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->viewParam:Ljava/lang/String;

    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "arg_order_id_param"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->orderId:Ljava/lang/String;

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "arg_mfa_interstitial_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->mfaInterstitialUrl:Ljava/lang/String;

    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "arg_is_kindle_app"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->isKindleApp:Ljava/lang/String;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 142
    sget-object p1, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "onCreateDialog"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 143
    new-instance p1, Lcom/audible/hushpuppy/common/dialog/ThemedAlertDialogBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->colorMode:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/kindle/krx/ui/ColorMode;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/audible/hushpuppy/common/dialog/ThemedAlertDialogBuilder;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$layout;->upsell_popup_modal:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 146
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 147
    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->webview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->upsellPopUpWebView:Landroid/webkit/WebView;

    .line 148
    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->background:Landroid/view/View;

    .line 149
    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->close_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->closeButton:Landroid/widget/ImageView;

    .line 150
    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->progressBar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->progressBar:Landroid/widget/ProgressBar;

    .line 153
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->colorMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->NIGHT:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->colorMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->closeButton:Landroid/widget/ImageView;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->modal_cancel_button_white_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->closeButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/audible/hushpuppy/view/common/ToaInfoModal$1;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/common/ToaInfoModal$1;-><init>(Lcom/audible/hushpuppy/view/common/ToaInfoModal;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->initViews()V

    .line 165
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->refresh()V

    .line 166
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/upsell/ToaInfoModalDismissEvent;)V
    .locals 1

    .line 229
    sget-object v0, Lcom/audible/hushpuppy/common/event/upsell/ToaInfoModalDismissEvent;->SHOULD_DISMISS:Lcom/audible/hushpuppy/common/event/upsell/ToaInfoModalDismissEvent;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 230
    sget-object p1, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Received ToaInfoModalDismissEvent.SHOULD DISMISS, dismiss toaInfoModal"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 217
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 218
    sget-object v0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "unregister ToaInfoModal to eventbus."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 207
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 209
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->updateLayoutSize()V

    .line 210
    sget-object v0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "register ToaInfoModal to eventbus."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public showLoadingState()V
    .locals 2

    .line 238
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    sget-object v0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "showLoadingState"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->upsellPopUpWebView:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_0
    return-void
.end method
