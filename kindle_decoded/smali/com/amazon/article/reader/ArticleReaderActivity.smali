.class public Lcom/amazon/article/reader/ArticleReaderActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ArticleReaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/article/reader/ArticleReaderActivity$StoreScreenletContext;,
        Lcom/amazon/article/reader/ArticleReaderActivity$GetMastheadTask;
    }
.end annotation


# static fields
.field private static final MAX_SCROLL:I = 0x3b9aca00

.field private static final TAG:Ljava/lang/String;

.field private static final WEBVIEW_TEXT_ZOOM:I = 0x64

.field private static final WEB_INTERFACE_NAME:Ljava/lang/String; = "android"


# instance fields
.field private appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private articleReader:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private articleToOpen:Lcom/amazon/article/reader/ArticleMetadata;

.field private backButton:Landroid/widget/Button;

.field private currentTheme:Lcom/amazon/kindle/krx/theme/Theme;

.field private domain:Ljava/lang/String;

.field endWithMinusHeight:Z

.field endWithZero:Z

.field inVoiceOverEnabled:Z

.field isAccessibilityEnabled:Z

.field isExploreByTouchEnabled:Z

.field isGoBack:Z

.field isPageLoaded:Z

.field isPageNotCompletelyLoadedBackPressed:Z

.field isScreenletShown:Z

.field isTapEvent:Z

.field private mastHeadImageView:Landroid/widget/ImageView;

.field previousOffset:I

.field private progressBar:Landroid/widget/ProgressBar;

.field private screenlet:Lcom/amazon/kindle/krx/ui/Screenlet;

.field private screenletContainer:Landroid/view/ViewGroup;

.field private screenletContext:Lcom/amazon/article/reader/ArticleReaderActivity$StoreScreenletContext;

.field private screenletLayout:Landroid/widget/LinearLayout;

.field private screenletView:Landroid/view/View;

.field private scrollView:Landroidx/core/widget/NestedScrollView;

.field shouldScrollToTop:Z

.field private storeBackButton:Landroid/widget/Button;

.field private storeCloseButton:Landroid/widget/Button;

.field private storeTitle:Landroid/widget/TextView;

.field private storeToolbar:Landroid/widget/Toolbar;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const-class v0, Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-static {v0}, Lcom/amazon/article/reader/GenericUtil;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/article/reader/ArticleReaderActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 68
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->isTapEvent:Z

    .line 107
    iput-boolean v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->endWithZero:Z

    .line 109
    iput-boolean v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->endWithMinusHeight:Z

    const/4 v1, 0x1

    .line 111
    iput-boolean v1, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->shouldScrollToTop:Z

    .line 113
    iput v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->previousOffset:I

    .line 121
    new-instance v1, Lcom/amazon/article/reader/ArticleReaderActivity$StoreScreenletContext;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/amazon/article/reader/ArticleReaderActivity$StoreScreenletContext;-><init>(Lcom/amazon/article/reader/ArticleReaderActivity;Lcom/amazon/article/reader/ArticleReaderActivity$1;)V

    iput-object v1, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->screenletContext:Lcom/amazon/article/reader/ArticleReaderActivity$StoreScreenletContext;

    .line 123
    iput-boolean v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->isExploreByTouchEnabled:Z

    .line 124
    iput-boolean v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->isAccessibilityEnabled:Z

    .line 125
    iput-boolean v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->inVoiceOverEnabled:Z

    .line 127
    iput-boolean v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->isGoBack:Z

    .line 128
    iput-boolean v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->isPageLoaded:Z

    .line 129
    iput-boolean v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->isScreenletShown:Z

    .line 130
    iput-boolean v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->isPageNotCompletelyLoadedBackPressed:Z

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/article/reader/ArticleReaderActivity;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/amazon/article/reader/ArticleReaderActivity;->changeViewBasedOnAccessibilityState()V

    return-void
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Lcom/amazon/article/reader/ArticleReaderActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/amazon/article/reader/ArticleReaderActivity;Lcom/amazon/kindle/krx/ui/ScreenletIntent;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/amazon/article/reader/ArticleReaderActivity;->activateScreenlet(Lcom/amazon/kindle/krx/ui/ScreenletIntent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/amazon/article/reader/ArticleReaderActivity;)Lcom/amazon/kindle/krx/theme/Theme;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->currentTheme:Lcom/amazon/kindle/krx/theme/Theme;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/amazon/article/reader/ArticleReaderActivity;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/amazon/article/reader/ArticleReaderActivity;->prepareForDarkTheme()V

    return-void
.end method

.method static synthetic access$1500(Lcom/amazon/article/reader/ArticleReaderActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->screenletLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/amazon/article/reader/ArticleReaderActivity;)Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->articleReader:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/amazon/article/reader/ArticleReaderActivity;)Landroid/view/View;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->screenletView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/amazon/article/reader/ArticleReaderActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->screenletContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/amazon/article/reader/ArticleReaderActivity;)Lcom/amazon/kindle/krx/ui/Screenlet;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->screenlet:Lcom/amazon/kindle/krx/ui/Screenlet;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/article/reader/ArticleReaderActivity;)Landroidx/core/widget/NestedScrollView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->scrollView:Landroidx/core/widget/NestedScrollView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/amazon/article/reader/ArticleReaderActivity;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/amazon/article/reader/ArticleReaderActivity;->prepareForLightTheme()V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/article/reader/ArticleReaderActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/article/reader/ArticleReaderActivity;)Lcom/google/android/material/appbar/AppBarLayout;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/article/reader/ArticleReaderActivity;)Z
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/amazon/article/reader/ArticleReaderActivity;->isNetworkAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/amazon/article/reader/ArticleReaderActivity;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/amazon/article/reader/ArticleReaderActivity;->showNetworkUnavailableAlert()V

    return-void
.end method

.method static synthetic access$700(Lcom/amazon/article/reader/ArticleReaderActivity;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/amazon/article/reader/ArticleReaderActivity;->hasStartedLoading()V

    return-void
.end method

.method static synthetic access$800(Lcom/amazon/article/reader/ArticleReaderActivity;)Landroid/widget/Button;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->backButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/article/reader/ArticleReaderActivity;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/amazon/article/reader/ArticleReaderActivity;->hasCompletedLoading()V

    return-void
.end method

.method private activateScreenlet(Lcom/amazon/kindle/krx/ui/ScreenletIntent;)V
    .locals 3

    .line 697
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/ui/ScreenletIntent;->getScreenletType()Lcom/amazon/kindle/krx/ui/ScreenletType;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->screenletContext:Lcom/amazon/article/reader/ArticleReaderActivity$StoreScreenletContext;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/ScreenletType;->createInstance(Lcom/amazon/kindle/krx/ui/ScreenletContext;)Lcom/amazon/kindle/krx/ui/Screenlet;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->screenlet:Lcom/amazon/kindle/krx/ui/Screenlet;

    .line 698
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->screenletContainer:Landroid/view/ViewGroup;

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/ui/Screenlet;->onCreate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->screenletView:Landroid/view/View;

    const/4 v0, 0x1

    .line 699
    iput-boolean v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->isScreenletShown:Z

    .line 701
    new-instance v0, Lcom/amazon/article/reader/ArticleReaderActivity$12;

    invoke-direct {v0, p0, p1}, Lcom/amazon/article/reader/ArticleReaderActivity$12;-><init>(Lcom/amazon/article/reader/ArticleReaderActivity;Lcom/amazon/kindle/krx/ui/ScreenletIntent;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private applyDarkThemeStylesForScreenletViews()V
    .locals 4

    .line 762
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/article/reader/R$drawable;->ic_back_dark_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 763
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/article/reader/R$drawable;->ic_close_dark_button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 764
    iget-object v2, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->storeBackButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 765
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->storeCloseButton:Landroid/widget/Button;

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 766
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->storeTitle:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 767
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->storeToolbar:Landroid/widget/Toolbar;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setBackgroundColor(I)V

    return-void
.end method

.method private changeViewBasedOnAccessibilityState()V
    .locals 2

    const-string v0, "accessibility"

    .line 258
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 259
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->isAccessibilityEnabled:Z

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->scrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v1, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 262
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->articleReader:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v1, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 266
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->scrollView:Landroidx/core/widget/NestedScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 267
    iput-boolean v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->inVoiceOverEnabled:Z

    goto :goto_0

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->articleReader:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v1, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 270
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->scrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v1, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;)V

    .line 274
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->scrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 275
    iput-boolean v1, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->inVoiceOverEnabled:Z

    :goto_0
    return-void
.end method

.method private deactivateScreenlet()V
    .locals 1

    const/4 v0, 0x0

    .line 721
    iput-boolean v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->isScreenletShown:Z

    .line 722
    new-instance v0, Lcom/amazon/article/reader/ArticleReaderActivity$13;

    invoke-direct {v0, p0}, Lcom/amazon/article/reader/ArticleReaderActivity$13;-><init>(Lcom/amazon/article/reader/ArticleReaderActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getThemeLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "theme_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private hasCompletedLoading()V
    .locals 2

    .line 547
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private hasStartedLoading()V
    .locals 3

    .line 542
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    .line 543
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private initNavigationBarScrollSettings()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    new-instance v1, Lcom/amazon/article/reader/ArticleReaderActivity$6;

    invoke-direct {v1, p0}, Lcom/amazon/article/reader/ArticleReaderActivity$6;-><init>(Lcom/amazon/article/reader/ArticleReaderActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    return-void
.end method

.method private initWebView()V
    .locals 4

    .line 344
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 345
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/16 v2, 0x64

    .line 346
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 347
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/amazon/article/reader/interfaces/ArticleWebAppInterface;

    invoke-direct {v2, p0}, Lcom/amazon/article/reader/interfaces/ArticleWebAppInterface;-><init>(Lcom/amazon/article/reader/ArticleReaderActivity;)V

    const-string v3, "android"

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/article/reader/R$color;->white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 349
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/amazon/article/reader/ArticleReaderActivity$7;

    invoke-direct {v2, p0}, Lcom/amazon/article/reader/ArticleReaderActivity$7;-><init>(Lcom/amazon/article/reader/ArticleReaderActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 401
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 403
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/amazon/article/reader/ArticleReaderActivity$8;

    invoke-direct {v1, p0}, Lcom/amazon/article/reader/ArticleReaderActivity$8;-><init>(Lcom/amazon/article/reader/ArticleReaderActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 463
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/amazon/article/reader/ArticleReaderActivity$9;

    invoke-direct {v1, p0}, Lcom/amazon/article/reader/ArticleReaderActivity$9;-><init>(Lcom/amazon/article/reader/ArticleReaderActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private isNetworkAvailable()Z
    .locals 1

    const-string v0, "connectivity"

    .line 239
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 240
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadReadingPage(Lcom/amazon/article/reader/ArticleMetadata;)V
    .locals 4

    .line 538
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->domain:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/amazon/article/reader/ArticleMetadata;->getArticleDetailPageLink()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "%s%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private prepareForDarkTheme()V
    .locals 3

    const/4 v0, 0x0

    .line 752
    invoke-direct {p0, v0}, Lcom/amazon/article/reader/ArticleReaderActivity;->updateThemeUI(Z)V

    .line 753
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, -0x1000000

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    .line 754
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 756
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    .line 757
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_1
    return-void
.end method

.method private prepareForLightTheme()V
    .locals 3

    const/4 v0, 0x1

    .line 742
    invoke-direct {p0, v0}, Lcom/amazon/article/reader/ArticleReaderActivity;->updateThemeUI(Z)V

    .line 743
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, -0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    .line 744
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 746
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    .line 747
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_1
    return-void
.end method

.method private setMIUIStatusBarMode(Landroid/view/Window;Z)V
    .locals 8

    .line 823
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    const-string v1, "android.view.MiuiWindowManager$LayoutParams"

    .line 825
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    .line 826
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 827
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    const-string/jumbo v2, "setExtraFlags"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 828
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 829
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v7

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 831
    :catch_0
    sget-object p1, Lcom/amazon/article/reader/ArticleReaderActivity;->TAG:Ljava/lang/String;

    const-string p2, "Set MIUI status bar failed. Maybe current device is not running MIUI"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private setupTheme()V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "UserSettings"

    .line 774
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "THEME"

    const-string v3, "LIGHT"

    .line 775
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 778
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 779
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/amazon/article/reader/ArticleReaderActivity;->getThemeLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 784
    :catch_0
    sget-object v0, Lcom/amazon/article/reader/ArticleReaderActivity;->TAG:Ljava/lang/String;

    const-string v1, "Theme metadata not present in the manifest"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private showNetworkUnavailableAlert()V
    .locals 4

    .line 514
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    sget v2, Lcom/amazon/article/reader/R$style;->ArticlesAlertDialogCustom:I

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 516
    sget v1, Lcom/amazon/article/reader/R$string;->no_network_dialog_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/amazon/article/reader/R$string;->no_network_dialog_message:I

    .line 517
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/amazon/article/reader/R$string;->settings:I

    new-instance v2, Lcom/amazon/article/reader/ArticleReaderActivity$11;

    invoke-direct {v2, p0}, Lcom/amazon/article/reader/ArticleReaderActivity$11;-><init>(Lcom/amazon/article/reader/ArticleReaderActivity;)V

    .line 518
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/amazon/article/reader/R$string;->cancel:I

    new-instance v2, Lcom/amazon/article/reader/ArticleReaderActivity$10;

    invoke-direct {v2, p0}, Lcom/amazon/article/reader/ArticleReaderActivity$10;-><init>(Lcom/amazon/article/reader/ArticleReaderActivity;)V

    .line 523
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/amazon/article/reader/R$drawable;->ic_dialog_alert_light:I

    .line 527
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 528
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x2

    .line 530
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 531
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/article/reader/R$color;->progress_bar_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v1, -0x1

    .line 533
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 534
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/article/reader/R$color;->progress_bar_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private updateThemeUI(Z)V
    .locals 4

    .line 795
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 800
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    const/high16 v2, -0x80000000

    .line 801
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 803
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    if-eqz p1, :cond_1

    or-int/lit16 v1, v1, 0x2000

    goto :goto_0

    :cond_1
    and-int/lit16 v1, v1, -0x2001

    .line 811
    :cond_2
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_4

    if-eqz p1, :cond_3

    or-int/lit8 v1, v1, 0x10

    goto :goto_1

    :cond_3
    and-int/lit8 v1, v1, -0x11

    .line 818
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 819
    invoke-direct {p0, v0, p1}, Lcom/amazon/article/reader/ArticleReaderActivity;->setMIUIStatusBarMode(Landroid/view/Window;Z)V

    return-void
.end method


# virtual methods
.method public closeArticle()V
    .locals 0

    .line 664
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method public goBack()V
    .locals 3

    .line 556
    iget-boolean v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->isScreenletShown:Z

    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->screenlet:Lcom/amazon/kindle/krx/ui/Screenlet;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/Screenlet;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->screenlet:Lcom/amazon/kindle/krx/ui/Screenlet;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/Screenlet;->onGoBack()V

    goto :goto_0

    .line 560
    :cond_0
    invoke-direct {p0}, Lcom/amazon/article/reader/ArticleReaderActivity;->deactivateScreenlet()V

    :goto_0
    return-void

    .line 565
    :cond_1
    iget-boolean v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->isPageLoaded:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 566
    iput-boolean v2, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->isPageNotCompletelyLoadedBackPressed:Z

    goto :goto_1

    .line 568
    :cond_2
    iput-boolean v1, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->isPageNotCompletelyLoadedBackPressed:Z

    .line 570
    :goto_1
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 571
    invoke-direct {p0}, Lcom/amazon/article/reader/ArticleReaderActivity;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 572
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    .line 573
    iput-boolean v2, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->isGoBack:Z

    .line 574
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 575
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_5

    .line 576
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->backButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 579
    :cond_3
    invoke-direct {p0}, Lcom/amazon/article/reader/ArticleReaderActivity;->showNetworkUnavailableAlert()V

    goto :goto_2

    .line 582
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/article/reader/ArticleReaderActivity;->closeArticle()V

    :cond_5
    :goto_2
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 657
    invoke-virtual {p0}, Lcom/amazon/article/reader/ArticleReaderActivity;->goBack()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 139
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/article/reader/R$bool;->isTablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 142
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    const/4 v0, 0x0

    const-string v2, "UserSettings"

    .line 145
    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "THEME"

    const-string v3, "LIGHT"

    .line 146
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {v0}, Lcom/amazon/kindle/krx/theme/Theme;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->currentTheme:Lcom/amazon/kindle/krx/theme/Theme;

    .line 148
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    sget v0, Lcom/amazon/article/reader/R$layout;->activity_article_reader:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 151
    sget v0, Lcom/amazon/article/reader/R$id;->masthead_image:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->mastHeadImageView:Landroid/widget/ImageView;

    .line 152
    sget v0, Lcom/amazon/article/reader/R$id;->article_webview:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->webView:Landroid/webkit/WebView;

    .line 153
    sget v0, Lcom/amazon/article/reader/R$id;->progress_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 154
    sget v0, Lcom/amazon/article/reader/R$id;->appbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 155
    sget v0, Lcom/amazon/article/reader/R$id;->nested_scroll_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->scrollView:Landroidx/core/widget/NestedScrollView;

    .line 156
    sget v0, Lcom/amazon/article/reader/R$id;->store_screenlet:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->screenletContainer:Landroid/view/ViewGroup;

    .line 157
    sget v0, Lcom/amazon/article/reader/R$id;->article_reader:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->articleReader:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 158
    sget v0, Lcom/amazon/article/reader/R$id;->store_toolbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    iput-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->storeToolbar:Landroid/widget/Toolbar;

    .line 159
    sget v0, Lcom/amazon/article/reader/R$id;->store_back_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->storeBackButton:Landroid/widget/Button;

    .line 160
    sget v0, Lcom/amazon/article/reader/R$id;->store_close_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->storeCloseButton:Landroid/widget/Button;

    .line 161
    sget v0, Lcom/amazon/article/reader/R$id;->store_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->screenletLayout:Landroid/widget/LinearLayout;

    .line 162
    sget v0, Lcom/amazon/article/reader/R$id;->store_title:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->storeTitle:Landroid/widget/TextView;

    .line 164
    invoke-direct {p0}, Lcom/amazon/article/reader/ArticleReaderActivity;->setupTheme()V

    .line 165
    invoke-direct {p0}, Lcom/amazon/article/reader/ArticleReaderActivity;->prepareForLightTheme()V

    .line 166
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->currentTheme:Lcom/amazon/kindle/krx/theme/Theme;

    sget-object v2, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    invoke-direct {p0}, Lcom/amazon/article/reader/ArticleReaderActivity;->applyDarkThemeStylesForScreenletViews()V

    :cond_1
    const-string v0, "accessibility"

    .line 170
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 171
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->isAccessibilityEnabled:Z

    .line 172
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->isExploreByTouchEnabled:Z

    .line 173
    new-instance v2, Lcom/amazon/article/reader/ArticleReaderActivity$1;

    invoke-direct {v2, p0}, Lcom/amazon/article/reader/ArticleReaderActivity$1;-><init>(Lcom/amazon/article/reader/ArticleReaderActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 181
    sget v0, Lcom/amazon/article/reader/R$id;->back_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->backButton:Landroid/widget/Button;

    .line 182
    new-instance v2, Lcom/amazon/article/reader/ArticleReaderActivity$2;

    invoke-direct {v2, p0}, Lcom/amazon/article/reader/ArticleReaderActivity$2;-><init>(Lcom/amazon/article/reader/ArticleReaderActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->storeBackButton:Landroid/widget/Button;

    new-instance v2, Lcom/amazon/article/reader/ArticleReaderActivity$3;

    invoke-direct {v2, p0}, Lcom/amazon/article/reader/ArticleReaderActivity$3;-><init>(Lcom/amazon/article/reader/ArticleReaderActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->storeCloseButton:Landroid/widget/Button;

    new-instance v2, Lcom/amazon/article/reader/ArticleReaderActivity$4;

    invoke-direct {v2, p0}, Lcom/amazon/article/reader/ArticleReaderActivity$4;-><init>(Lcom/amazon/article/reader/ArticleReaderActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    sget v0, Lcom/amazon/article/reader/R$id;->close_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 200
    new-instance v2, Lcom/amazon/article/reader/ArticleReaderActivity$5;

    invoke-direct {v2, p0}, Lcom/amazon/article/reader/ArticleReaderActivity$5;-><init>(Lcom/amazon/article/reader/ArticleReaderActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "article.activeArticle"

    .line 208
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-static {v2}, Lcom/amazon/article/reader/ArticleParserUtil;->getArticleToOpenFromIntentPayload(Ljava/lang/String;)Lcom/amazon/article/reader/ArticleMetadata;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->articleToOpen:Lcom/amazon/article/reader/ArticleMetadata;

    const-string/jumbo v2, "store.domain"

    .line 210
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->domain:Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->articleToOpen:Lcom/amazon/article/reader/ArticleMetadata;

    if-nez v0, :cond_2

    .line 213
    invoke-virtual {p0}, Lcom/amazon/article/reader/ArticleReaderActivity;->closeArticle()V

    .line 216
    :cond_2
    invoke-direct {p0}, Lcom/amazon/article/reader/ArticleReaderActivity;->initWebView()V

    .line 217
    invoke-direct {p0}, Lcom/amazon/article/reader/ArticleReaderActivity;->initNavigationBarScrollSettings()V

    .line 218
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->articleToOpen:Lcom/amazon/article/reader/ArticleMetadata;

    invoke-virtual {v0}, Lcom/amazon/article/reader/ArticleMetadata;->getArticleLogoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/article/reader/ArticleReaderActivity;->updateMastheadImage(Ljava/lang/String;)V

    if-nez p1, :cond_3

    .line 221
    iget-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->articleToOpen:Lcom/amazon/article/reader/ArticleMetadata;

    invoke-direct {p0, p1}, Lcom/amazon/article/reader/ArticleReaderActivity;->loadReadingPage(Lcom/amazon/article/reader/ArticleMetadata;)V

    .line 224
    :cond_3
    iget-boolean p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->isAccessibilityEnabled:Z

    const/16 v0, 0x8

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->isExploreByTouchEnabled:Z

    if-eqz p1, :cond_5

    .line 225
    iget-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->scrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v2, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 226
    iget-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 227
    iget-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 229
    :cond_4
    iget-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->articleReader:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v2, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 230
    iget-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 231
    iput-boolean v1, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->inVoiceOverEnabled:Z

    .line 233
    :cond_5
    iget-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->backButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 234
    iget-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->screenletLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 252
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 253
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 246
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 247
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    return-void
.end method

.method public openDetailPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 601
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    const-string v1, "MAGZ"

    .line 602
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 603
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->MAGAZINE:Lcom/amazon/kindle/krx/content/ContentType;

    goto :goto_0

    :cond_0
    const-string v1, "NWPR"

    .line 604
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 605
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->NEWSPAPER:Lcom/amazon/kindle/krx/content/ContentType;

    goto :goto_0

    :cond_1
    const-string v1, "AUDIBLE"

    .line 606
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 607
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->AUDIBLE:Lcom/amazon/kindle/krx/content/ContentType;

    .line 609
    :cond_2
    :goto_0
    const-class p2, Lcom/amazon/kindle/store/StoreOpenerFactory;

    invoke-static {p2}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/store/StoreOpenerFactory;

    .line 610
    invoke-interface {p2, p0, p1, v0}, Lcom/amazon/kindle/store/StoreOpenerFactory;->createBookDetailsOpener(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->screenletContext:Lcom/amazon/article/reader/ArticleReaderActivity$StoreScreenletContext;

    .line 611
    invoke-interface {p1, p2}, Lcom/amazon/kindle/store/StoreOpener;->setScreenletContext(Lcom/amazon/kindle/krx/ui/ScreenletContext;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 612
    invoke-interface {p1, p3}, Lcom/amazon/kindle/store/StoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    return-void
.end method

.method public updateMastheadImage(Ljava/lang/String;)V
    .locals 3

    .line 593
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 594
    new-instance p1, Lcom/amazon/article/reader/ArticleReaderActivity$GetMastheadTask;

    iget-object v1, p0, Lcom/amazon/article/reader/ArticleReaderActivity;->mastHeadImageView:Landroid/widget/ImageView;

    invoke-direct {p1, p0, v1}, Lcom/amazon/article/reader/ArticleReaderActivity$GetMastheadTask;-><init>(Lcom/amazon/article/reader/ArticleReaderActivity;Landroid/widget/ImageView;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/net/URL;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 596
    sget-object v0, Lcom/amazon/article/reader/ArticleReaderActivity;->TAG:Ljava/lang/String;

    const-string v1, "Invalid Masthead Image URL"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
