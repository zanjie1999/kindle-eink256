.class public Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;
.super Lcom/amazon/kindle/krx/ui/InfoCardView;
.source "WikipediaInfoCardView.java"


# static fields
.field private static final AMAZON_EMBER_REGULAR_FONT_FILE_NAME:Ljava/lang/String; = "Amazon-Ember-Regular.ttf"

.field private static X_SCROLL_LOCK_DISTANCE:I = 0x28

.field private static Y_SCROLL_LOCK_DISTANCE:I = 0x14


# instance fields
.field protected cardLabel:Landroid/widget/TextView;

.field protected colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

.field private contentView:Lcom/amazon/kcp/reader/ui/ObservableWebView;

.field protected contentWrapper:Landroid/view/View;

.field private errorMessage:Landroid/widget/TextView;

.field private hasParentScrollingLocked:Z

.field protected javascriptBodyClass:Ljava/lang/String;

.field private openLink:Landroid/widget/TextView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private queryLabel:Landroid/widget/TextView;

.field private scrollStartingPoint:Landroid/graphics/Point;

.field private volatile shouldEmitScrollMetric:Z

.field private url:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/krx/ui/InfoCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->shouldEmitScrollMetric:Z

    .line 61
    sget-object p1, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    const-string/jumbo p1, "white"

    .line 63
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->javascriptBodyClass:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->hasParentScrollingLocked:Z

    return p0
.end method

.method static synthetic access$002(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->hasParentScrollingLocked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;)Landroid/graphics/Point;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->scrollStartingPoint:Landroid/graphics/Point;

    return-object p0
.end method

.method static synthetic access$102(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->scrollStartingPoint:Landroid/graphics/Point;

    return-object p1
.end method

.method static synthetic access$200()I
    .locals 1

    .line 40
    sget v0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->X_SCROLL_LOCK_DISTANCE:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 40
    sget v0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->Y_SCROLL_LOCK_DISTANCE:I

    return v0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;)Lcom/amazon/kcp/reader/ui/ObservableWebView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->contentView:Lcom/amazon/kcp/reader/ui/ObservableWebView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->shouldEmitScrollMetric:Z

    return p0
.end method

.method static synthetic access$502(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->shouldEmitScrollMetric:Z

    return p1
.end method

.method static synthetic access$600(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;)Landroid/widget/TextView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->queryLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method private initializeWebView()V
    .locals 2

    .line 122
    sget v0, Lcom/amazon/kindle/krl/R$id;->info_card_wikipedia_content:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/ObservableWebView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->contentView:Lcom/amazon/kcp/reader/ui/ObservableWebView;

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 127
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$integer;->info_card_wikipedia_webview_font_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 128
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->contentView:Lcom/amazon/kcp/reader/ui/ObservableWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 129
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->contentView:Lcom/amazon/kcp/reader/ui/ObservableWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    return-void
.end method

.method private setButtonClickEvent()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->openLink:Landroid/widget/TextView;

    new-instance v1, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView$2;-><init>(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setGestureListeners()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->contentView:Lcom/amazon/kcp/reader/ui/ObservableWebView;

    new-instance v1, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView$3;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView$3;-><init>(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/ObservableWebView;->setOnScrollChangedCallback(Lcom/amazon/kcp/reader/ui/ObservableWebView$OnScrollChangedCallback;)V

    .line 197
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->contentView:Lcom/amazon/kcp/reader/ui/ObservableWebView;

    new-instance v1, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView$4;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView$4;-><init>(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private setTypeface()V
    .locals 3

    .line 111
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "Amazon-Ember-Regular.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x1

    .line 114
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->cardLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 116
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->errorMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 117
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->openLink:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected colorMapView()V
    .locals 5

    .line 240
    sget-object v0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView$6;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 260
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$color;->info_card_v2_title_text_color_white_mode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 261
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$color;->info_card_v2_link_button_text_color_white_mode:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 262
    sget v2, Lcom/amazon/kindle/krl/R$drawable;->bg_info_card_light:I

    .line 263
    sget v3, Lcom/amazon/kindle/krl/R$drawable;->bg_info_card_text_view_light:I

    const-string/jumbo v4, "white"

    goto :goto_0

    .line 243
    :cond_0
    sget v2, Lcom/amazon/kindle/krl/R$drawable;->bg_info_card_dark:I

    .line 244
    sget v3, Lcom/amazon/kindle/krl/R$drawable;->bg_info_card_text_view_dark:I

    .line 245
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$color;->info_card_v2_dark_mode_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 246
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/amazon/kindle/krl/R$color;->info_card_v2_link_button_text_color_white_mode:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const-string v4, "black"

    .line 267
    :goto_0
    iput-object v4, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->javascriptBodyClass:Ljava/lang/String;

    .line 268
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 269
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->cardLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->errorMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 271
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->openLink:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 272
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->contentWrapper:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public getBodyClassName()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->javascriptBodyClass:Ljava/lang/String;

    return-object v0
.end method

.method public getContentView()Lcom/amazon/kcp/reader/ui/ObservableWebView;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->contentView:Lcom/amazon/kcp/reader/ui/ObservableWebView;

    return-object v0
.end method

.method public getNameForMetrics()Ljava/lang/String;
    .locals 1

    const-string v0, "WikipediaInfoCard"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 290
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->info_card_wikipedia_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 2

    .line 71
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 73
    sget v0, Lcom/amazon/kindle/krl/R$id;->info_card_wikipedia_content:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/ObservableWebView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->contentView:Lcom/amazon/kcp/reader/ui/ObservableWebView;

    .line 74
    sget v0, Lcom/amazon/kindle/krl/R$id;->info_card_wikipedia_error_message:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->errorMessage:Landroid/widget/TextView;

    .line 75
    sget v0, Lcom/amazon/kindle/krl/R$id;->info_card_wikipedia_progress_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->progressBar:Landroid/widget/ProgressBar;

    .line 76
    sget v0, Lcom/amazon/kindle/krl/R$id;->info_card_wikipedia_title:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->cardLabel:Landroid/widget/TextView;

    .line 77
    sget v0, Lcom/amazon/kindle/krl/R$id;->info_card_wikipedia_open_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->openLink:Landroid/widget/TextView;

    .line 78
    sget v0, Lcom/amazon/kindle/krl/R$id;->info_card_wikipedia_content_wrapper:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->contentWrapper:Landroid/view/View;

    .line 80
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->colorMapView()V

    .line 81
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->initializeWebView()V

    .line 82
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->setGestureListeners()V

    .line 83
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->setButtonClickEvent()V

    .line 84
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->setTypeface()V

    .line 86
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->wikipedia_info_card_supports_accessibility:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->openLink:Landroid/widget/TextView;

    new-instance v1, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView$1;-><init>(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->contentWrapper:Landroid/view/View;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public openInBrowser(Landroid/view/View;)V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->url:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->url:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 219
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 220
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "INFO_CARD_WIKIPEDIA"

    const-string v1, "OpenedFullPage"

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {p1, v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    :catch_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$string;->error_message_error_opening_page:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 223
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setColorMode(Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    .line 305
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->colorMapView()V

    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 2

    const-string v0, "_"

    const-string v1, " "

    .line 316
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 317
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 321
    :cond_0
    new-instance v1, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView$5;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView$5;-><init>(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1

    .line 332
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->url:Landroid/net/Uri;

    .line 333
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->openLink:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showErrorMessage(I)V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->contentView:Lcom/amazon/kcp/reader/ui/ObservableWebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->errorMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->errorMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showProgressBar()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->contentView:Lcom/amazon/kcp/reader/ui/ObservableWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->errorMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showWikipediaContent()V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->contentView:Lcom/amazon/kcp/reader/ui/ObservableWebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->errorMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
