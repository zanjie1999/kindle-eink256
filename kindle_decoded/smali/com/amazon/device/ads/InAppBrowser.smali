.class Lcom/amazon/device/ads/InAppBrowser;
.super Ljava/lang/Object;
.source "InAppBrowser.java"

# interfaces
.implements Lcom/amazon/device/ads/AdActivity$AdActivityAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;,
        Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;
    }
.end annotation


# static fields
.field private static final CONTENT_DESCRIPTION_BACK_BUTTON:Ljava/lang/String; = "inAppBrowserBackButton"

.field private static final CONTENT_DESCRIPTION_BUTTON_LAYOUT:Ljava/lang/String; = "inAppBrowserButtonLayout"

.field private static final CONTENT_DESCRIPTION_CLOSE_BUTTON:Ljava/lang/String; = "inAppBrowserCloseButton"

.field private static final CONTENT_DESCRIPTION_FORWARD_BUTTON:Ljava/lang/String; = "inAppBrowserForwardButton"

.field private static final CONTENT_DESCRIPTION_HORZ_RULE:Ljava/lang/String; = "inAppBrowserHorizontalRule"

.field private static final CONTENT_DESCRIPTION_MAIN_LAYOUT:Ljava/lang/String; = "inAppBrowserMainLayout"

.field private static final CONTENT_DESCRIPTION_OPEN_EXT_BRWSR_BUTTON:Ljava/lang/String; = "inAppBrowserOpenExternalBrowserButton"

.field private static final CONTENT_DESCRIPTION_REFRESH_BUTTON:Ljava/lang/String; = "inAppBrowserRefreshButton"

.field private static final CONTENT_DESCRIPTION_RELATIVE_LAYOUT:Ljava/lang/String; = "inAppBrowserRelativeLayout"

.field private static final CONTENT_DESCRIPTION_WEB_VIEW:Ljava/lang/String; = "inAppBrowserWebView"

.field protected static final LOGTAG:Ljava/lang/String; = "InAppBrowser"


# instance fields
.field private activity:Landroid/app/Activity;

.field private final assets:Lcom/amazon/device/ads/Assets;

.field private browserBackButton:Landroid/widget/ImageButton;

.field private browserForwardButton:Landroid/widget/ImageButton;

.field private final buttonsCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private closeButton:Landroid/widget/ImageButton;

.field private final cookieManager:Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;

.field private final infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

.field private final layoutFactory:Lcom/amazon/device/ads/LayoutFactory;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private openExternalBrowserButton:Landroid/widget/ImageButton;

.field private refreshButton:Landroid/widget/ImageButton;

.field private final settings:Lcom/amazon/device/ads/Settings;

.field private showOpenExternalBrowserButton:Z

.field private final threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

.field private final webUtils:Lcom/amazon/device/ads/WebUtils2;

.field private webView:Landroid/webkit/WebView;

.field private final webViewFactory:Lcom/amazon/device/ads/WebViewFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 10

    .line 80
    new-instance v1, Lcom/amazon/device/ads/WebUtils2;

    invoke-direct {v1}, Lcom/amazon/device/ads/WebUtils2;-><init>()V

    .line 81
    invoke-static {}, Lcom/amazon/device/ads/WebViewFactory;->getInstance()Lcom/amazon/device/ads/WebViewFactory;

    move-result-object v2

    new-instance v3, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v3}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    .line 83
    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v4

    .line 84
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v5

    .line 85
    invoke-static {}, Lcom/amazon/device/ads/Assets;->getInstance()Lcom/amazon/device/ads/Assets;

    move-result-object v6

    new-instance v7, Lcom/amazon/device/ads/LayoutFactory;

    invoke-direct {v7}, Lcom/amazon/device/ads/LayoutFactory;-><init>()V

    new-instance v8, Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;

    invoke-direct {v8}, Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;-><init>()V

    .line 88
    invoke-static {}, Lcom/amazon/device/ads/ThreadUtils;->getThreadRunner()Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    move-result-object v9

    move-object v0, p0

    .line 80
    invoke-direct/range {v0 .. v9}, Lcom/amazon/device/ads/InAppBrowser;-><init>(Lcom/amazon/device/ads/WebUtils2;Lcom/amazon/device/ads/WebViewFactory;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/Assets;Lcom/amazon/device/ads/LayoutFactory;Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/WebUtils2;Lcom/amazon/device/ads/WebViewFactory;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/Assets;Lcom/amazon/device/ads/LayoutFactory;Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;)V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->buttonsCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 100
    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser;->webUtils:Lcom/amazon/device/ads/WebUtils2;

    .line 101
    iput-object p2, p0, Lcom/amazon/device/ads/InAppBrowser;->webViewFactory:Lcom/amazon/device/ads/WebViewFactory;

    .line 102
    sget-object p1, Lcom/amazon/device/ads/InAppBrowser;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 103
    iput-object p4, p0, Lcom/amazon/device/ads/InAppBrowser;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    .line 104
    iput-object p5, p0, Lcom/amazon/device/ads/InAppBrowser;->settings:Lcom/amazon/device/ads/Settings;

    .line 105
    iput-object p6, p0, Lcom/amazon/device/ads/InAppBrowser;->assets:Lcom/amazon/device/ads/Assets;

    .line 106
    iput-object p7, p0, Lcom/amazon/device/ads/InAppBrowser;->layoutFactory:Lcom/amazon/device/ads/LayoutFactory;

    .line 107
    iput-object p8, p0, Lcom/amazon/device/ads/InAppBrowser;->cookieManager:Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;

    .line 108
    iput-object p9, p0, Lcom/amazon/device/ads/InAppBrowser;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/InAppBrowser;)Lcom/amazon/device/ads/MobileAdsLogger;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/amazon/device/ads/InAppBrowser;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/device/ads/InAppBrowser;)Lcom/amazon/device/ads/WebUtils2;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/amazon/device/ads/InAppBrowser;->webUtils:Lcom/amazon/device/ads/WebUtils2;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/amazon/device/ads/InAppBrowser;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/amazon/device/ads/InAppBrowser;->showOpenExternalBrowserButton:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/amazon/device/ads/InAppBrowser;)Landroid/widget/ImageButton;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/amazon/device/ads/InAppBrowser;->openExternalBrowserButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/amazon/device/ads/InAppBrowser;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser;->openExternalBrowserButton:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/amazon/device/ads/InAppBrowser;)Landroid/widget/ImageButton;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/amazon/device/ads/InAppBrowser;->refreshButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/amazon/device/ads/InAppBrowser;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser;->refreshButton:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/amazon/device/ads/InAppBrowser;Landroid/content/Intent;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/InAppBrowser;->initializeButtons(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/amazon/device/ads/InAppBrowser;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/amazon/device/ads/InAppBrowser;->buttonsCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/device/ads/InAppBrowser;)Landroid/app/Activity;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/device/ads/InAppBrowser;Landroid/webkit/WebView;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/InAppBrowser;->updateNavigationButtons(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/device/ads/InAppBrowser;)Landroid/webkit/WebView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/device/ads/InAppBrowser;)Landroid/widget/ImageButton;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/amazon/device/ads/InAppBrowser;->browserBackButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$502(Lcom/amazon/device/ads/InAppBrowser;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser;->browserBackButton:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic access$600(Lcom/amazon/device/ads/InAppBrowser;)Lcom/amazon/device/ads/Assets;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/amazon/device/ads/InAppBrowser;->assets:Lcom/amazon/device/ads/Assets;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/device/ads/InAppBrowser;Ljava/lang/String;IIII)Landroid/widget/ImageButton;
    .locals 0

    .line 37
    invoke-direct/range {p0 .. p5}, Lcom/amazon/device/ads/InAppBrowser;->createButton(Ljava/lang/String;IIII)Landroid/widget/ImageButton;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/device/ads/InAppBrowser;)Landroid/widget/ImageButton;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/amazon/device/ads/InAppBrowser;->browserForwardButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$802(Lcom/amazon/device/ads/InAppBrowser;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser;->browserForwardButton:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic access$900(Lcom/amazon/device/ads/InAppBrowser;)Landroid/widget/ImageButton;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/amazon/device/ads/InAppBrowser;->closeButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$902(Lcom/amazon/device/ads/InAppBrowser;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser;->closeButton:Landroid/widget/ImageButton;

    return-object p1
.end method

.method private createButton(Ljava/lang/String;IIII)Landroid/widget/ImageButton;
    .locals 2

    .line 182
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 183
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 184
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 185
    invoke-virtual {p1, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 p2, 0xc

    .line 186
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 187
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 188
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 189
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method private enableCookies()V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->cookieManager:Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;

    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;->createCookieSyncManager(Landroid/content/Context;)V

    .line 328
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->cookieManager:Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;

    invoke-virtual {v0}, Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;->startSync()V

    return-void
.end method

.method private initialize(Landroid/content/Intent;)V
    .locals 11

    .line 134
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 135
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/InAppBrowser;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 136
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42480000    # 50.0f

    mul-float v2, v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v9, v2

    const/high16 v2, 0x40400000    # 3.0f

    mul-float v1, v1, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 139
    iget-boolean v2, p0, Lcom/amazon/device/ads/InAppBrowser;->showOpenExternalBrowserButton:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    .line 140
    :goto_0
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v0, v2

    mul-int/lit8 v2, v9, 0x2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 142
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->layoutFactory:Lcom/amazon/device/ads/LayoutFactory;

    iget-object v2, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    sget-object v3, Lcom/amazon/device/ads/LayoutFactory$LayoutType;->RELATIVE_LAYOUT:Lcom/amazon/device/ads/LayoutFactory$LayoutType;

    const-string v4, "inAppBrowserButtonLayout"

    invoke-virtual {v0, v2, v3, v4}, Lcom/amazon/device/ads/LayoutFactory;->createLayout(Landroid/content/Context;Lcom/amazon/device/ads/LayoutFactory$LayoutType;Ljava/lang/String;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v2, 0x2828

    .line 143
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setId(I)V

    .line 144
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    add-int v3, v9, v1

    const/4 v10, -0x1

    invoke-direct {v2, v10, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    .line 145
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 146
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, -0xf0f10

    .line 147
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 149
    iget-object v2, p0, Lcom/amazon/device/ads/InAppBrowser;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    new-instance v3, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;

    move-object v4, v3

    move-object v5, p0

    move-object v6, p1

    move-object v7, v0

    invoke-direct/range {v4 .. v9}, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;-><init>(Lcom/amazon/device/ads/InAppBrowser;Landroid/content/Intent;Landroid/view/ViewGroup;II)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v2, v3, p1}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->executeAsyncTask(Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;[Ljava/lang/Object;)V

    .line 152
    new-instance p1, Landroid/view/View;

    iget-object v2, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    invoke-direct {p1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v2, "inAppBrowserHorizontalRule"

    .line 153
    invoke-virtual {p1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v2, -0x333334

    .line 154
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 155
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    .line 156
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 157
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 160
    iget-object p1, p0, Lcom/amazon/device/ads/InAppBrowser;->webViewFactory:Lcom/amazon/device/ads/WebViewFactory;

    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Lcom/amazon/device/ads/WebViewFactory;->createWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    .line 161
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/device/ads/InAppBrowser;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v2}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/DeviceInfo;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-inAppBrowser"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 162
    iget-object p1, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    const-string v1, "inAppBrowserWebView"

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 163
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 164
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 165
    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget-object p1, p0, Lcom/amazon/device/ads/InAppBrowser;->layoutFactory:Lcom/amazon/device/ads/LayoutFactory;

    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    sget-object v2, Lcom/amazon/device/ads/LayoutFactory$LayoutType;->RELATIVE_LAYOUT:Lcom/amazon/device/ads/LayoutFactory$LayoutType;

    const-string v3, "inAppBrowserRelativeLayout"

    invoke-virtual {p1, v1, v2, v3}, Lcom/amazon/device/ads/LayoutFactory;->createLayout(Landroid/content/Context;Lcom/amazon/device/ads/LayoutFactory$LayoutType;Ljava/lang/String;)Landroid/view/ViewGroup;

    move-result-object p1

    .line 168
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v10, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 170
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 172
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->layoutFactory:Lcom/amazon/device/ads/LayoutFactory;

    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    sget-object v2, Lcom/amazon/device/ads/LayoutFactory$LayoutType;->LINEAR_LAYOUT:Lcom/amazon/device/ads/LayoutFactory$LayoutType;

    const-string v3, "inAppBrowserMainLayout"

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/ads/LayoutFactory;->createLayout(Landroid/content/Context;Lcom/amazon/device/ads/LayoutFactory$LayoutType;Ljava/lang/String;)Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    .line 173
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 174
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 177
    iget-object p1, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private initializeButtons(Landroid/content/Intent;)V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->browserBackButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/amazon/device/ads/InAppBrowser$3;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/InAppBrowser$3;-><init>(Lcom/amazon/device/ads/InAppBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->browserForwardButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/amazon/device/ads/InAppBrowser$4;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/InAppBrowser$4;-><init>(Lcom/amazon/device/ads/InAppBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->refreshButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/amazon/device/ads/InAppBrowser$5;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/InAppBrowser$5;-><init>(Lcom/amazon/device/ads/InAppBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->closeButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/amazon/device/ads/InAppBrowser$6;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/InAppBrowser$6;-><init>(Lcom/amazon/device/ads/InAppBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-boolean v0, p0, Lcom/amazon/device/ads/InAppBrowser;->showOpenExternalBrowserButton:Z

    if-eqz v0, :cond_0

    const-string v0, "extra_url"

    .line 281
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 282
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->openExternalBrowserButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/amazon/device/ads/InAppBrowser$7;

    invoke-direct {v1, p0, p1}, Lcom/amazon/device/ads/InAppBrowser$7;-><init>(Lcom/amazon/device/ads/InAppBrowser;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private initializeWebView(Landroid/content/Intent;)V
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->webViewFactory:Lcom/amazon/device/ads/WebViewFactory;

    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    sget-object v2, Lcom/amazon/device/ads/InAppBrowser;->LOGTAG:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/device/ads/WebViewFactory;->setJavaScriptEnabledForWebView(ZLandroid/webkit/WebView;Ljava/lang/String;)Z

    .line 198
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    const-string v1, "extra_url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 199
    iget-object p1, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    new-instance v0, Lcom/amazon/device/ads/InAppBrowser$1;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/InAppBrowser$1;-><init>(Lcom/amazon/device/ads/InAppBrowser;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 224
    iget-object p1, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    new-instance v0, Lcom/amazon/device/ads/InAppBrowser$2;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/InAppBrowser$2;-><init>(Lcom/amazon/device/ads/InAppBrowser;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method private updateNavigationButtons(Landroid/webkit/WebView;)V
    .locals 3

    .line 304
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->browserBackButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->browserForwardButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 306
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    const/16 v1, 0xff

    const/16 v2, 0x66

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->browserBackButton:Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lcom/amazon/device/ads/AndroidTargetUtils;->setImageButtonAlpha(Landroid/widget/ImageButton;I)V

    goto :goto_0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->browserBackButton:Landroid/widget/ImageButton;

    invoke-static {v0, v2}, Lcom/amazon/device/ads/AndroidTargetUtils;->setImageButtonAlpha(Landroid/widget/ImageButton;I)V

    .line 315
    :goto_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 317
    iget-object p1, p0, Lcom/amazon/device/ads/InAppBrowser;->browserForwardButton:Landroid/widget/ImageButton;

    invoke-static {p1, v1}, Lcom/amazon/device/ads/AndroidTargetUtils;->setImageButtonAlpha(Landroid/widget/ImageButton;I)V

    goto :goto_1

    .line 321
    :cond_1
    iget-object p1, p0, Lcom/amazon/device/ads/InAppBrowser;->browserForwardButton:Landroid/widget/ImageButton;

    invoke-static {p1, v2}, Lcom/amazon/device/ads/AndroidTargetUtils;->setImageButtonAlpha(Landroid/widget/ImageButton;I)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method getMetrics(Landroid/util/DisplayMetrics;)V
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 531
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 538
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 539
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/InAppBrowser;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 540
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42480000    # 50.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 542
    iget-boolean v1, p0, Lcom/amazon/device/ads/InAppBrowser;->showOpenExternalBrowserButton:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 543
    :goto_0
    iget v2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v2, v1

    mul-int/lit8 v1, v0, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 544
    iget-object v2, p0, Lcom/amazon/device/ads/InAppBrowser;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ButtonWidth: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 546
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 547
    iget-object v2, p0, Lcom/amazon/device/ads/InAppBrowser;->browserBackButton:Landroid/widget/ImageButton;

    const/16 v3, 0xc

    if-eqz v2, :cond_1

    const/16 v2, 0x9

    .line 549
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 550
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 551
    iget-object v2, p0, Lcom/amazon/device/ads/InAppBrowser;->browserBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 554
    :cond_1
    iget-object p1, p0, Lcom/amazon/device/ads/InAppBrowser;->browserForwardButton:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 556
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 557
    iget-object v4, p0, Lcom/amazon/device/ads/InAppBrowser;->browserBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getId()I

    move-result v4

    invoke-virtual {p1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 558
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 559
    iget-object v4, p0, Lcom/amazon/device/ads/InAppBrowser;->browserForwardButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, p1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 562
    :cond_2
    iget-object p1, p0, Lcom/amazon/device/ads/InAppBrowser;->closeButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_3

    .line 564
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xb

    .line 565
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 566
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 567
    iget-object v4, p0, Lcom/amazon/device/ads/InAppBrowser;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, p1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 570
    :cond_3
    iget-object p1, p0, Lcom/amazon/device/ads/InAppBrowser;->openExternalBrowserButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_4

    .line 572
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 573
    iget-object v4, p0, Lcom/amazon/device/ads/InAppBrowser;->browserForwardButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getId()I

    move-result v4

    invoke-virtual {p1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 574
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 575
    iget-object v4, p0, Lcom/amazon/device/ads/InAppBrowser;->openExternalBrowserButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, p1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 577
    iget-object p1, p0, Lcom/amazon/device/ads/InAppBrowser;->refreshButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_5

    .line 579
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 580
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->openExternalBrowserButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getId()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 581
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 582
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->refreshButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 585
    :cond_4
    iget-object p1, p0, Lcom/amazon/device/ads/InAppBrowser;->refreshButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_5

    .line 587
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 588
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->browserForwardButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getId()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 589
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 590
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->refreshButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 121
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 123
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_open_btn"

    const/4 v2, 0x0

    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazon/device/ads/InAppBrowser;->showOpenExternalBrowserButton:Z

    .line 125
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/InAppBrowser;->initialize(Landroid/content/Intent;)V

    .line 126
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/InAppBrowser;->initializeWebView(Landroid/content/Intent;)V

    .line 127
    invoke-direct {p0}, Lcom/amazon/device/ads/InAppBrowser;->enableCookies()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 377
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 338
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string/jumbo v1, "onPause"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 341
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->settings:Lcom/amazon/device/ads/Settings;

    const-string/jumbo v1, "shouldPauseWebViewTimersInWebViewRelatedActivities"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->cookieManager:Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;

    invoke-virtual {v0}, Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;->stopSync()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 356
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string/jumbo v1, "onResume"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 359
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->settings:Lcom/amazon/device/ads/Settings;

    const-string/jumbo v1, "shouldPauseWebViewTimersInWebViewRelatedActivities"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->cookieManager:Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;

    invoke-virtual {v0}, Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;->startSync()V

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged()V
    .locals 0

    return-void
.end method

.method public preOnCreate()V
    .locals 0

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    return-void
.end method
