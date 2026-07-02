.class public Lcom/amazon/klo/infocard/KLOInfoCardView;
.super Lcom/amazon/kindle/krx/ui/InfoCardView;
.source "KLOInfoCardView.java"


# static fields
.field private static final AMAZON_EMBER_REGULAR_FONT_FILE_NAME:Ljava/lang/String; = "Amazon-Ember-Regular.ttf"


# instance fields
.field private contentLabel:Landroid/widget/TextView;

.field private contentWrapper:Landroid/view/View;

.field private fixedQuery:Ljava/lang/String;

.field private isInflated:Z

.field private licenseLabel:Landroid/widget/TextView;

.field private openXrayLabel:Landroid/widget/TextView;

.field private queryLabel:Landroid/widget/TextView;

.field private sourceLabel:Landroid/widget/TextView;

.field private titleLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/krx/ui/InfoCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, ""

    .line 47
    iput-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->fixedQuery:Ljava/lang/String;

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->isInflated:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/klo/infocard/KLOInfoCardView;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->contentLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/klo/infocard/KLOInfoCardView;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->licenseLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/klo/infocard/KLOInfoCardView;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->openXrayLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/klo/infocard/KLOInfoCardView;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->fixedQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/klo/infocard/KLOInfoCardView;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->queryLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/klo/infocard/KLOInfoCardView;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->sourceLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method private setXrayButtonClickEvent(Lcom/amazon/klo/list/TermListItem;Lcom/amazon/klo/sidecar/SidecarHandler;)V
    .locals 2

    .line 113
    sget v0, Lcom/amazon/klo/R$id;->klo_infocard_open_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 115
    invoke-virtual {p2, p1}, Lcom/amazon/klo/sidecar/SidecarHandler;->getDetailsOf(Lcom/amazon/klo/list/TermListItem;)Lorg/json/JSONObject;

    move-result-object p2

    .line 116
    new-instance v1, Lcom/amazon/klo/infocard/KLOInfoCardView$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/klo/infocard/KLOInfoCardView$3;-><init>(Lcom/amazon/klo/infocard/KLOInfoCardView;Lcom/amazon/klo/list/TermListItem;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->fixedQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 138
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/klo/R$string;->klo_button_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 4

    .line 58
    sget v0, Lcom/amazon/klo/R$id;->klo_infocard_content_wrapper:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->contentWrapper:Landroid/view/View;

    .line 59
    sget v0, Lcom/amazon/klo/R$id;->klo_infocard_content_label:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->contentLabel:Landroid/widget/TextView;

    .line 60
    sget v0, Lcom/amazon/klo/R$id;->klo_infocard_license_label:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->licenseLabel:Landroid/widget/TextView;

    .line 61
    sget v0, Lcom/amazon/klo/R$id;->klo_infocard_query_label:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->queryLabel:Landroid/widget/TextView;

    .line 62
    sget v0, Lcom/amazon/klo/R$id;->klo_infocard_title_label:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->titleLabel:Landroid/widget/TextView;

    .line 63
    sget v0, Lcom/amazon/klo/R$id;->klo_infocard_open_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->openXrayLabel:Landroid/widget/TextView;

    .line 64
    sget v0, Lcom/amazon/klo/R$id;->klo_infocard_source_label:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->sourceLabel:Landroid/widget/TextView;

    .line 66
    invoke-static {}, Lcom/amazon/klo/debug/KLODebugOptions;->isFirstPartyBuild()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "Amazon-Ember-Regular.ttf"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 69
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 71
    iget-object v3, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->titleLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 72
    iget-object v3, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->queryLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 73
    iget-object v3, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->contentLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 74
    iget-object v3, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->licenseLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 75
    iget-object v3, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->sourceLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 76
    iget-object v0, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->openXrayLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 79
    :cond_0
    invoke-static {}, Lcom/amazon/klo/debug/KLODebugOptions;->isFirstPartyBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const-string/jumbo v2, "sans-serif"

    .line 80
    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 81
    iget-object v2, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->contentLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 82
    iget-object v2, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->licenseLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 85
    :cond_1
    new-instance v0, Lcom/amazon/klo/infocard/KLOInfoCardView$1;

    invoke-direct {v0, p0}, Lcom/amazon/klo/infocard/KLOInfoCardView$1;-><init>(Lcom/amazon/klo/infocard/KLOInfoCardView;)V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 98
    iget-object v0, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->openXrayLabel:Landroid/widget/TextView;

    new-instance v2, Lcom/amazon/klo/infocard/KLOInfoCardView$2;

    invoke-direct {v2, p0}, Lcom/amazon/klo/infocard/KLOInfoCardView$2;-><init>(Lcom/amazon/klo/infocard/KLOInfoCardView;)V

    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 108
    iput-boolean v1, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->isInflated:Z

    return-void
.end method

.method public openInBrowser(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 254
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 255
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    .line 256
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 257
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public setColorMode(Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 8

    .line 144
    iget-boolean v0, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->isInflated:Z

    if-eqz v0, :cond_1

    .line 154
    sget-object v0, Lcom/amazon/klo/infocard/KLOInfoCardView$6;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 167
    sget p1, Lcom/amazon/klo/R$drawable;->klo_bg_info_card_text_view_dark:I

    .line 168
    sget v0, Lcom/amazon/klo/R$color;->klo_infocard_source_text:I

    .line 170
    sget v1, Lcom/amazon/klo/R$color;->info_card_v2_text_color_dark_mode:I

    .line 174
    sget v2, Lcom/amazon/klo/R$color;->info_card_v2_link_button_text_color_white_mode:I

    .line 175
    sget v3, Lcom/amazon/klo/R$drawable;->klo_bg_info_card_dark_v2:I

    move v4, v2

    move v5, v3

    move v2, v1

    move v3, v2

    goto :goto_0

    .line 156
    :cond_0
    sget v1, Lcom/amazon/klo/R$color;->info_card_v2_title_text_color_white_mode:I

    .line 158
    sget p1, Lcom/amazon/klo/R$color;->info_card_v2_content_text_color_white_mode:I

    .line 159
    sget v0, Lcom/amazon/klo/R$color;->info_card_v2_content_secondary_text_color_white_mode:I

    .line 160
    sget v2, Lcom/amazon/klo/R$color;->info_card_v2_link_button_text_color_white_mode:I

    .line 161
    sget v3, Lcom/amazon/klo/R$color;->info_card_v2_caption_button_text_color_white_mode:I

    .line 162
    sget v4, Lcom/amazon/klo/R$drawable;->klo_bg_info_card_light_v2:I

    .line 163
    sget v5, Lcom/amazon/klo/R$drawable;->klo_bg_info_card_text_view_light:I

    move v6, v2

    move v2, p1

    move p1, v5

    move v5, v4

    move v4, v6

    move v7, v3

    move v3, v0

    move v0, v7

    .line 181
    :goto_0
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 182
    iget-object v5, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->contentWrapper:Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 183
    iget-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->titleLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    iget-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->queryLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    iget-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->contentLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 186
    iget-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->licenseLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    iget-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->openXrayLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    iget-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->sourceLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    iget-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->sourceLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public setContentFromHTML(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 271
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->contentLabel:Landroid/widget/TextView;

    new-instance v2, Lcom/amazon/klo/URLImageParser;

    iget-object v3, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->contentLabel:Landroid/widget/TextView;

    invoke-direct {v2, v3, v0}, Lcom/amazon/klo/URLImageParser;-><init>(Landroid/view/View;Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->licenseLabel:Landroid/widget/TextView;

    new-instance v1, Lcom/amazon/klo/URLImageParser;

    iget-object v2, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->licenseLabel:Landroid/widget/TextView;

    invoke-direct {v1, v2, v0}, Lcom/amazon/klo/URLImageParser;-><init>(Landroid/view/View;Landroid/content/Context;)V

    invoke-static {p2, v1, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object p1

    .line 278
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p2

    const-string v0, "KINDLE_LEARNING_OBJECTS"

    const-string v1, "InfoCardWebviewLinkOpen"

    invoke-interface {p2, v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-static {p1}, Lcom/amazon/klo/MetricEnabledLinkMovementMethod;->getInstance(Landroid/content/Context;)Landroid/text/method/MovementMethod;

    move-result-object p1

    .line 280
    iget-object p2, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->contentLabel:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 281
    iget-object p2, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->licenseLabel:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 1

    .line 205
    iput-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardView;->fixedQuery:Ljava/lang/String;

    .line 206
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThreadPoolManager()Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/klo/infocard/KLOInfoCardView$4;

    invoke-direct {v0, p0}, Lcom/amazon/klo/infocard/KLOInfoCardView$4;-><init>(Lcom/amazon/klo/infocard/KLOInfoCardView;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSource(ILjava/lang/String;)V
    .locals 1

    .line 223
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/klo/infocard/KLOInfoCardView;->setSource(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 228
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThreadPoolManager()Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/klo/infocard/KLOInfoCardView$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/klo/infocard/KLOInfoCardView$5;-><init>(Lcom/amazon/klo/infocard/KLOInfoCardView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTermListItemForXrayButton(Lcom/amazon/klo/list/TermListItem;Lcom/amazon/klo/sidecar/SidecarHandler;)V
    .locals 0

    .line 218
    invoke-direct {p0, p1, p2}, Lcom/amazon/klo/infocard/KLOInfoCardView;->setXrayButtonClickEvent(Lcom/amazon/klo/list/TermListItem;Lcom/amazon/klo/sidecar/SidecarHandler;)V

    return-void
.end method
