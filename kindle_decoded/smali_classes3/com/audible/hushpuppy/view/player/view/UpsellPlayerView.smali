.class public final Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;
.super Lcom/audible/hushpuppy/view/player/view/PlayerView;
.source "UpsellPlayerView.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private coverArtOverlay:Landroid/view/View;

.field private coverArtView:Landroid/widget/ImageView;

.field protected currencyFormatter:Lcom/audible/hushpuppy/view/common/CurrencyFormatter;

.field private delayPurchaseProcessingContainer:Landroid/view/View;

.field private delayPurchaseQueuedContainer:Landroid/view/View;

.field private downloadNowButton:Landroid/widget/Button;

.field private downloadProgressBar:Landroid/widget/ProgressBar;

.field private playPauseButton:Landroid/widget/ImageView;

.field private prePurchaseContainer:Landroid/view/View;

.field private processingContainer:Landroid/view/View;

.field private purchaseButton:Landroid/widget/Button;

.field private purchaseCanceledContainer:Landroid/view/View;

.field private purchaseErrorContainer:Landroid/view/View;

.field private purchaseStateContainers:[Landroid/view/View;

.field protected upsellModel:Lcom/audible/hushpuppy/model/read/IUpsellModel;

.field private upsellPlayerLinkTextView:Landroid/widget/TextView;

.field private upsellPlayerSubtitleTextView:Landroid/widget/TextView;

.field private upsellPlayerTitleTextView:Landroid/widget/TextView;

.field private upsellPlayerTitleTextViewContainer:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/view/player/view/PlayerType;Lcom/audible/hushpuppy/common/player/PlayerViewState;Landroid/content/Context;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/audible/hushpuppy/view/player/view/PlayerView;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/view/player/view/PlayerType;Lcom/audible/hushpuppy/common/player/PlayerViewState;Landroid/content/Context;)V

    .line 99
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x1

    const/4 p3, -0x2

    invoke-direct {p1, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->refreshPlayerState()V

    return-void
.end method

.method private disablePlayPauseButton()V
    .locals 2

    .line 415
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->playPauseButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->downloadProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private displayCoverArt()V
    .locals 3

    .line 382
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->hasSampleAudiobook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->coverArtManager:Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->coverArtView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v2}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;->loadImage(Landroid/widget/ImageView;Lcom/audible/mobile/domain/Asin;)V

    :cond_0
    return-void
.end method

.method private displayNarrator()V
    .locals 5

    .line 421
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getNarrator()Ljava/lang/String;

    move-result-object v0

    .line 423
    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 426
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->player_narrator_text:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 428
    :goto_0
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellPlayerSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displayPurchaseErrorText()V
    .locals 7

    .line 494
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getCountryOfResidence()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DE"

    .line 496
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 497
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->upsell_player_error_contact_info_de:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "GB"

    .line 498
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 499
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->upsell_player_error_contact_info_uk:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "AU"

    .line 500
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 501
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->upsell_player_error_contact_info_au:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "US"

    .line 502
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 503
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->upsell_player_error_contact_info_us:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 505
    :cond_3
    sget-object v1, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-array v4, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find country code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; using US as default contact info."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-interface {v1, v4}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 506
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->upsell_player_error_contact_info_us:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 508
    :goto_0
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellPlayerSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->upsell_player_error_customer_care_info:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-virtual {v4, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displayTimeRemaining()V
    .locals 6

    .line 433
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellPlayerSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->upsell_player_time_remaining:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v4}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getRemainingText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getPurchasePriceButtonText()Ljava/lang/String;
    .locals 5

    .line 481
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellModel:Lcom/audible/hushpuppy/model/read/IUpsellModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IUpsellModel;->getExpectedPrice()Lcom/audible/hushpuppy/common/upsell/PriceData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 484
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->audiobook_upsell_btn_buy_now_unknown_price:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 487
    :cond_0
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->currencyFormatter:Lcom/audible/hushpuppy/view/common/CurrencyFormatter;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/audible/hushpuppy/view/common/CurrencyFormatter;->displayPrice(Lcom/audible/hushpuppy/common/upsell/PriceData;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 489
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->upsell_player_buy_for_price:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initBuyPriceButton()V
    .locals 3

    .line 446
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->getPurchasePriceButtonText()Ljava/lang/String;

    move-result-object v0

    .line 447
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->purchaseButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->purchaseButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->purchaseButton:Landroid/widget/Button;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 450
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->purchaseButton:Landroid/widget/Button;

    new-instance v1, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView$8;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView$8;-><init>(Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initDelayPurchaseProcessingView()V
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->delayPurchaseProcessingContainer:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->upsell_player_link:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellPlayerLinkTextView:Landroid/widget/TextView;

    .line 342
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->delayPurchaseProcessingContainer:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->upsell_player_title_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellPlayerTitleTextView:Landroid/widget/TextView;

    return-void
.end method

.method private initDelayPurchaseQueuedView()V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->delayPurchaseQueuedContainer:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->upsell_player_link:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellPlayerLinkTextView:Landroid/widget/TextView;

    .line 319
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->delayPurchaseQueuedContainer:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->upsell_player_title_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellPlayerTitleTextView:Landroid/widget/TextView;

    .line 320
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->delayPurchaseQueuedContainer:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->upsell_player_subtitle_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellPlayerSubtitleTextView:Landroid/widget/TextView;

    .line 321
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellPlayerLinkTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellPlayerLinkTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView$4;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView$4;-><init>(Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->delayPurchaseQueuedContainer:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->upsell_player_download_now_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->downloadNowButton:Landroid/widget/Button;

    .line 330
    new-instance v1, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView$5;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView$5;-><init>(Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initPrePurchaseTitleTextView()V
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->prePurchaseContainer:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->upsell_player_title_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellPlayerTitleTextView:Landroid/widget/TextView;

    .line 282
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->prePurchaseContainer:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->upsell_player_link:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellPlayerLinkTextView:Landroid/widget/TextView;

    .line 284
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellPlayerTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->upsell_player_pre_purchase_add:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellPlayerLinkTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellPlayerTitleTextViewContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView$2;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView$2;-><init>(Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initPrePurchaseToaTitleTextView()V
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->prePurchaseContainer:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->upsell_player_title_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellPlayerTitleTextView:Landroid/widget/TextView;

    .line 301
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->prePurchaseContainer:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->upsell_player_link:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellPlayerLinkTextView:Landroid/widget/TextView;

    .line 303
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellPlayerTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->audiobook_upsell_title_toa_eligible:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellPlayerLinkTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellPlayerTitleTextViewContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView$3;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView$3;-><init>(Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initPrePurchaseView()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->prePurchaseContainer:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->upsell_player_cover_art:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->coverArtView:Landroid/widget/ImageView;

    .line 261
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->prePurchaseContainer:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->upsell_player_cover_art_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->coverArtOverlay:Landroid/view/View;

    .line 262
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->prePurchaseContainer:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->upsell_player_play_pause_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->playPauseButton:Landroid/widget/ImageView;

    .line 263
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->prePurchaseContainer:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->upsell_player_download_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->downloadProgressBar:Landroid/widget/ProgressBar;

    .line 264
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->prePurchaseContainer:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->upsell_player_purchase_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->purchaseButton:Landroid/widget/Button;

    .line 265
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->prePurchaseContainer:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->upsell_player_title_text_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellPlayerTitleTextViewContainer:Landroid/widget/LinearLayout;

    .line 266
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->prePurchaseContainer:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->upsell_player_subtitle_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellPlayerSubtitleTextView:Landroid/widget/TextView;

    .line 268
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->coverArtOverlay:Landroid/view/View;

    new-instance v1, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView$1;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView$1;-><init>(Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initPurchaseCanceledView()V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->purchaseCanceledContainer:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->upsell_player_title_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellPlayerTitleTextView:Landroid/widget/TextView;

    return-void
.end method

.method private initPurchaseErrorView()V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->purchaseErrorContainer:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->upsell_player_title_text_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellPlayerTitleTextViewContainer:Landroid/widget/LinearLayout;

    .line 366
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->purchaseErrorContainer:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->upsell_player_link:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellPlayerLinkTextView:Landroid/widget/TextView;

    .line 367
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->purchaseErrorContainer:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->upsell_player_title_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellPlayerTitleTextView:Landroid/widget/TextView;

    .line 368
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->purchaseErrorContainer:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->upsell_player_subtitle_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellPlayerSubtitleTextView:Landroid/widget/TextView;

    .line 369
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellPlayerTitleTextViewContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView$7;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView$7;-><init>(Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initPurchaseProcessingView()V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->processingContainer:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->upsell_player_link:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellPlayerLinkTextView:Landroid/widget/TextView;

    .line 348
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->processingContainer:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->upsell_player_title_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellPlayerTitleTextView:Landroid/widget/TextView;

    .line 349
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->processingContainer:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->upsell_player_subtitle_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellPlayerSubtitleTextView:Landroid/widget/TextView;

    .line 350
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellPlayerLinkTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView$6;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView$6;-><init>(Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initPurchaseStateContainer()V
    .locals 4

    .line 177
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->upsell_player_pre_purchase_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->prePurchaseContainer:Landroid/view/View;

    .line 178
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->upsell_player_processing_purchase_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->processingContainer:Landroid/view/View;

    .line 179
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->upsell_player_purchase_canceled_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->purchaseCanceledContainer:Landroid/view/View;

    .line 180
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->upsell_player_purchase_error_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->purchaseErrorContainer:Landroid/view/View;

    .line 181
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->upsell_player_delay_purchase_queued_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->delayPurchaseQueuedContainer:Landroid/view/View;

    .line 182
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->upsell_player_delay_purchase_processing_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->delayPurchaseProcessingContainer:Landroid/view/View;

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/view/View;

    .line 184
    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->prePurchaseContainer:Landroid/view/View;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->delayPurchaseQueuedContainer:Landroid/view/View;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->processingContainer:Landroid/view/View;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->purchaseCanceledContainer:Landroid/view/View;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->purchaseErrorContainer:Landroid/view/View;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->purchaseStateContainers:[Landroid/view/View;

    return-void
.end method

.method private initToaPriceButton()V
    .locals 3

    .line 464
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->purchaseButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->audiobook_upsell_btn_buy_now_toa_eligible:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->purchaseButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->audiobook_upsell_btn_buy_now_toa_eligible:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->purchaseButton:Landroid/widget/Button;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 467
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->purchaseButton:Landroid/widget/Button;

    new-instance v1, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView$9;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView$9;-><init>(Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private refreshPlayPauseButton(ILjava/lang/String;)V
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->playPauseButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->playPauseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 440
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->playPauseButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 441
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->downloadProgressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private refreshPlayerState()V
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getPlayerControlType()Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    move-result-object v0

    .line 391
    sget-object v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;->PLAY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    if-ne v0, v1, :cond_0

    .line 392
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->setPlayPauseButtonToPlay()V

    .line 393
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->displayNarrator()V

    goto :goto_0

    .line 394
    :cond_0
    sget-object v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;->PAUSE:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    if-ne v0, v1, :cond_1

    .line 395
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->setPlayPauseButtonToPause()V

    .line 396
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->displayTimeRemaining()V

    goto :goto_0

    .line 398
    :cond_1
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->disablePlayPauseButton()V

    .line 399
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->displayNarrator()V

    :goto_0
    return-void
.end method

.method private setButtonPadding(Landroid/widget/Button;)V
    .locals 3

    .line 515
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$dimen;->upsell_purchase_button_text_padding_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 516
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$dimen;->upsell_purchase_button_text_padding_right:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    .line 518
    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/widget/Button;->setPadding(IIII)V

    return-void
.end method

.method private setPlayPauseButtonToPause()V
    .locals 3

    .line 410
    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->upsell_player_pause_button:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->upsell_pitch_pause_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->refreshPlayPauseButton(ILjava/lang/String;)V

    return-void
.end method

.method private setPlayPauseButtonToPlay()V
    .locals 3

    .line 405
    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->upsell_player_play_button:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->upsell_pitch_play_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->refreshPlayPauseButton(ILjava/lang/String;)V

    return-void
.end method

.method private setPurchaseStateTo(Landroid/view/View;)V
    .locals 7

    .line 246
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->purchaseStateContainers:[Landroid/view/View;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    const/4 v5, 0x1

    if-ne v4, p1, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_1

    .line 249
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 250
    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2

    :cond_1
    const/16 v5, 0x8

    .line 252
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 253
    invoke-virtual {v4, v2}, Landroid/view/View;->setEnabled(Z)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setUiToDelayPurchaseProcessingState()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->delayPurchaseProcessingContainer:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->setPurchaseStateTo(Landroid/view/View;)V

    .line 222
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->initDelayPurchaseProcessingView()V

    return-void
.end method

.method private setUiToDelayPurchaseQueuedState()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->delayPurchaseQueuedContainer:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->setPurchaseStateTo(Landroid/view/View;)V

    .line 215
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->initDelayPurchaseQueuedView()V

    .line 216
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->downloadNowButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->setButtonPadding(Landroid/widget/Button;)V

    return-void
.end method

.method private setUiToPrePurchasing()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->prePurchaseContainer:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->setPurchaseStateTo(Landroid/view/View;)V

    .line 191
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->initPrePurchaseView()V

    .line 192
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->displayCoverArt()V

    .line 193
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->refreshPlayerState()V

    .line 194
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->purchaseButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->setButtonPadding(Landroid/widget/Button;)V

    .line 195
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->initPrePurchaseTitleTextView()V

    .line 196
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->initBuyPriceButton()V

    return-void
.end method

.method private setUiToPrePurchasingWithToaOffer()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->prePurchaseContainer:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->setPurchaseStateTo(Landroid/view/View;)V

    .line 204
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->initPrePurchaseView()V

    .line 205
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->displayCoverArt()V

    .line 206
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->refreshPlayerState()V

    .line 207
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->purchaseButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->setButtonPadding(Landroid/widget/Button;)V

    .line 208
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->initPrePurchaseToaTitleTextView()V

    .line 209
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->initToaPriceButton()V

    return-void
.end method

.method private setUiToProcessingPurchase()V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->processingContainer:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->setPurchaseStateTo(Landroid/view/View;)V

    .line 228
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->initPurchaseProcessingView()V

    return-void
.end method

.method private setUiToPurchaseCanceled()V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->purchaseCanceledContainer:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->setPurchaseStateTo(Landroid/view/View;)V

    .line 234
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->initPurchaseCanceledView()V

    return-void
.end method

.method private setUiToPurchaseError()V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->purchaseErrorContainer:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->setPurchaseStateTo(Landroid/view/View;)V

    .line 240
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->initPurchaseErrorView()V

    .line 241
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->displayPurchaseErrorText()V

    return-void
.end method


# virtual methods
.method protected getMainLayoutId()I
    .locals 1

    .line 109
    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$layout;->upsell_player:I

    return v0
.end method

.method protected initViews()V
    .locals 2

    .line 115
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Initializing views"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->initPurchaseStateContainer()V

    return-void
.end method

.method protected injectDependencyObjects()V
    .locals 1

    .line 104
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->inject(Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    .line 524
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->hasSampleAudiobook()Z

    move-result v0

    if-nez v0, :cond_0

    .line 525
    sget-object p1, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "onVisibilityChanged called for the view after purchase is completed. Returning"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    if-nez v0, :cond_1

    .line 532
    sget-object p1, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Upsell visibility changed, but bookNavigator is NULL!"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-void

    .line 536
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentReaderNavigationMode()Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;

    if-ne p1, v0, :cond_4

    if-nez p2, :cond_2

    .line 537
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {p1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isPlayerToggledOn()Z

    move-result p1

    if-nez p1, :cond_2

    .line 538
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->viewController:Lcom/audible/hushpuppy/controller/ViewController;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/audible/hushpuppy/controller/ViewController;->setPlayerViewVisibility(Z)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    if-eq p2, p1, :cond_3

    const/16 p1, 0x8

    if-ne p2, p1, :cond_4

    .line 539
    :cond_3
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {p1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isPlayerToggledOn()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 540
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->viewController:Lcom/audible/hushpuppy/controller/ViewController;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/audible/hushpuppy/controller/ViewController;->setPlayerViewVisibility(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public refresh()V
    .locals 4

    .line 138
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Refreshing views"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->viewController:Lcom/audible/hushpuppy/controller/ViewController;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/controller/ViewController;->getPlayerViewState()Lcom/audible/hushpuppy/common/player/PlayerViewState;

    move-result-object v0

    .line 141
    sget-object v1, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView$10;->$SwitchMap$com$audible$hushpuppy$common$player$PlayerViewState:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 171
    sget-object v1, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown PlayerViewState ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]! Do nothing"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :pswitch_0
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->setUiToPurchaseError()V

    .line 166
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->actionBarUpsellController:Lcom/audible/hushpuppy/controller/ActionBarUpsellController;

    sget-object v1, Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;->ERROR:Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->viewDisplayed(Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;)V

    goto :goto_0

    .line 158
    :pswitch_1
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->setUiToPurchaseCanceled()V

    .line 159
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->actionBarUpsellController:Lcom/audible/hushpuppy/controller/ActionBarUpsellController;

    sget-object v1, Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;->CANCEL:Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->startAutoDisappearTimer(Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;)V

    goto :goto_0

    .line 155
    :pswitch_2
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->setUiToProcessingPurchase()V

    goto :goto_0

    .line 152
    :pswitch_3
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->setUiToDelayPurchaseProcessingState()V

    goto :goto_0

    .line 149
    :pswitch_4
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->setUiToDelayPurchaseQueuedState()V

    goto :goto_0

    .line 146
    :pswitch_5
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->setUiToPrePurchasingWithToaOffer()V

    goto :goto_0

    .line 143
    :pswitch_6
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->setUiToPrePurchasing()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setColorCode(Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 4

    .line 123
    sget-object v0, Lcom/audible/hushpuppy/view/player/common/IPlayerColorStrategy;->BASE_VIEW_STRATEGY:Lcom/audible/hushpuppy/view/player/common/IPlayerColorStrategy;

    .line 126
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/view/player/common/IPlayerColorStrategy;->getTitleTextColor(Lcom/amazon/kindle/krx/ui/ColorMode;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 127
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/view/player/common/IPlayerColorStrategy;->getSubTitleTextColor(Lcom/amazon/kindle/krx/ui/ColorMode;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 128
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/view/player/common/IPlayerColorStrategy;->getLinkTextColor(Lcom/amazon/kindle/krx/ui/ColorMode;)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 130
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellPlayerTitleTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/audible/hushpuppy/common/system/TextViewUtil;->setTextColor(Landroid/view/View;I)V

    .line 131
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellPlayerSubtitleTextView:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/audible/hushpuppy/common/system/TextViewUtil;->setTextColor(Landroid/view/View;I)V

    .line 132
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellPlayerLinkTextView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/audible/hushpuppy/common/system/TextViewUtil;->applyLinkStyle(Landroid/widget/TextView;I)V

    return-void
.end method
