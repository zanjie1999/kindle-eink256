.class public abstract Lcom/amazon/sitb/android/view/UpsellBarViewNLN;
.super Lcom/amazon/sitb/android/view/UpsellBarView;
.source "UpsellBarViewNLN.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;
    }
.end annotation


# static fields
.field private static final KU_ASSET_PERCENT_HEIGHT_OF_BUTTON:F = 0.3f


# instance fields
.field protected final button:Landroid/widget/Button;

.field protected final buttonLabelRenderService:Lcom/amazon/sitb/android/view/ButtonLabelRenderService;

.field protected final buyButton:Landroid/widget/Button;

.field protected final buyClickListener:Lcom/amazon/sitb/android/view/MeasuringOnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/sitb/android/view/MeasuringOnClickListener<",
            "Lcom/amazon/sitb/android/BookPrice;",
            ">;"
        }
    .end annotation
.end field

.field protected final cancelClickListener:Landroid/view/View$OnClickListener;

.field protected final detailsClickListener:Landroid/view/View$OnClickListener;

.field protected final downloadClickListener:Landroid/view/View$OnClickListener;

.field protected final failureAsset:Landroid/widget/ImageView;

.field protected final kuButton:Landroid/widget/Button;

.field protected linkStylingService:Lcom/amazon/sitb/android/view/LinkStylingService;

.field protected final messageText:Landroid/widget/TextView;

.field protected final metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

.field protected final multilineMessageText:Landroid/widget/TextView;

.field protected final mycdClickListener:Landroid/view/View$OnClickListener;

.field protected presenter:Lcom/amazon/sitb/android/UpsellBarPresenter;

.field protected price:Lcom/amazon/sitb/android/BookPrice;

.field protected final progressBar:Landroid/widget/ProgressBar;

.field protected final progressRoot:Landroid/view/View;

.field protected final progressText:Landroid/widget/TextView;

.field protected final readClickedListener:Landroid/view/View$OnClickListener;

.field protected separatorText:Landroid/view/View;

.field protected titleText:Landroid/widget/TextView;

.field protected final unexpectedClickListener:Landroid/view/View$OnClickListener;

.field protected final upsellBar:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/sitb/android/metrics/MetricsService;)V
    .locals 11

    .line 88
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazon/sitb/android/view/UpsellBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    sget-object v0, Lcom/amazon/sitb/android/BookState;->UNKNOWN:Lcom/amazon/sitb/android/BookState;

    .line 92
    iput-object p2, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    .line 94
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 95
    sget v1, Lcom/amazon/kindle/sitb/R$layout;->upsell_bar:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->upsellBar:Landroid/view/View;

    .line 96
    sget v1, Lcom/amazon/kindle/sitb/R$id;->upsell_bar_header:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->titleText:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->upsellBar:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/sitb/R$id;->upsell_bar_message_seperator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->separatorText:Landroid/view/View;

    .line 98
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->upsellBar:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/sitb/R$id;->upsell_bar_details:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->messageText:Landroid/widget/TextView;

    .line 99
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->upsellBar:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/sitb/R$id;->upsell_bar_multiline_details:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->multilineMessageText:Landroid/widget/TextView;

    .line 100
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->upsellBar:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/sitb/R$id;->upsell_bar_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->progressRoot:Landroid/view/View;

    .line 101
    sget v1, Lcom/amazon/kindle/sitb/R$id;->upsell_bar_progress_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->progressText:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->progressRoot:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/sitb/R$id;->upsell_bar_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->progressBar:Landroid/widget/ProgressBar;

    .line 103
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->upsellBar:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/sitb/R$id;->upsell_bar_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->button:Landroid/widget/Button;

    .line 104
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->upsellBar:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/sitb/R$id;->upsell_bar_ku_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->kuButton:Landroid/widget/Button;

    .line 105
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->upsellBar:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/sitb/R$id;->upsell_bar_buy_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->buyButton:Landroid/widget/Button;

    .line 106
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->upsellBar:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/sitb/R$id;->failure_asset:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->failureAsset:Landroid/widget/ImageView;

    .line 108
    new-instance v0, Lcom/amazon/sitb/android/view/ButtonLabelRenderService;

    invoke-direct {v0}, Lcom/amazon/sitb/android/view/ButtonLabelRenderService;-><init>()V

    iput-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->buttonLabelRenderService:Lcom/amazon/sitb/android/view/ButtonLabelRenderService;

    .line 110
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->messageText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLinkTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 111
    new-instance v1, Lcom/amazon/sitb/android/view/LinkStylingService;

    invoke-direct {v1, v0, v0}, Lcom/amazon/sitb/android/view/LinkStylingService;-><init>(II)V

    iput-object v1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->linkStylingService:Lcom/amazon/sitb/android/view/LinkStylingService;

    .line 113
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NONLINEAR_NAVIGATION:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->updateLayoutParamsForDisabledNLN()V

    .line 119
    :cond_0
    new-instance v9, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$1;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->getUpsellBarName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " details clicked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v5, Lcom/amazon/sitb/android/Metric;->DETAILS_CLICK_TIME:Lcom/amazon/sitb/android/Metric;

    sget-object v6, Lcom/amazon/sitb/android/Metric;->DETAILS_CLICK_ATTEMPT:Lcom/amazon/sitb/android/Metric;

    sget-object v7, Lcom/amazon/sitb/android/Metric;->DETAILS_CLICK_SUCCESS:Lcom/amazon/sitb/android/Metric;

    sget-object v8, Lcom/amazon/sitb/android/Metric;->DETAILS_CLICK_FAILURE:Lcom/amazon/sitb/android/Metric;

    move-object v0, v9

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$1;-><init>(Lcom/amazon/sitb/android/view/UpsellBarViewNLN;Ljava/lang/String;Ljava/lang/Class;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;)V

    iput-object v9, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->detailsClickListener:Landroid/view/View$OnClickListener;

    .line 135
    new-instance v9, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$2;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->getUpsellBarName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cancel clicked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v5, Lcom/amazon/sitb/android/Metric;->CANCEL_CLICK_TIME:Lcom/amazon/sitb/android/Metric;

    sget-object v6, Lcom/amazon/sitb/android/Metric;->CANCEL_CLICK_ATTEMPT:Lcom/amazon/sitb/android/Metric;

    sget-object v7, Lcom/amazon/sitb/android/Metric;->CANCEL_CLICK_SUCCESS:Lcom/amazon/sitb/android/Metric;

    sget-object v8, Lcom/amazon/sitb/android/Metric;->CANCEL_CLICK_FAILURE:Lcom/amazon/sitb/android/Metric;

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$2;-><init>(Lcom/amazon/sitb/android/view/UpsellBarViewNLN;Ljava/lang/String;Ljava/lang/Class;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;)V

    iput-object v9, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->cancelClickListener:Landroid/view/View$OnClickListener;

    .line 151
    new-instance v9, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$3;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->getUpsellBarName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MYCD clicked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v5, Lcom/amazon/sitb/android/Metric;->MYCD_CLICK_TIME:Lcom/amazon/sitb/android/Metric;

    sget-object v6, Lcom/amazon/sitb/android/Metric;->MYCD_CLICK_ATTEMPT:Lcom/amazon/sitb/android/Metric;

    sget-object v7, Lcom/amazon/sitb/android/Metric;->MYCD_CLICK_SUCCESS:Lcom/amazon/sitb/android/Metric;

    sget-object v8, Lcom/amazon/sitb/android/Metric;->MYCD_CLICK_FAILURE:Lcom/amazon/sitb/android/Metric;

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$3;-><init>(Lcom/amazon/sitb/android/view/UpsellBarViewNLN;Ljava/lang/String;Ljava/lang/Class;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;)V

    iput-object v9, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->mycdClickListener:Landroid/view/View$OnClickListener;

    .line 167
    new-instance v0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$4;

    invoke-direct {v0, p0}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$4;-><init>(Lcom/amazon/sitb/android/view/UpsellBarViewNLN;)V

    iput-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->unexpectedClickListener:Landroid/view/View$OnClickListener;

    .line 176
    new-instance v10, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$5;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->getUpsellBarName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " buy clicked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v5, Lcom/amazon/sitb/android/Metric;->BUY_CLICK_TIME:Lcom/amazon/sitb/android/Metric;

    sget-object v6, Lcom/amazon/sitb/android/Metric;->BUY_CLICK_ATTEMPT:Lcom/amazon/sitb/android/Metric;

    const/4 v7, 0x0

    sget-object v8, Lcom/amazon/sitb/android/Metric;->BUY_CLICK_FAILURE:Lcom/amazon/sitb/android/Metric;

    const/4 v9, 0x1

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$5;-><init>(Lcom/amazon/sitb/android/view/UpsellBarViewNLN;Ljava/lang/String;Ljava/lang/Class;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Z)V

    iput-object v10, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->buyClickListener:Lcom/amazon/sitb/android/view/MeasuringOnClickListener;

    .line 193
    new-instance v9, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$6;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->getUpsellBarName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " read clicked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v5, Lcom/amazon/sitb/android/Metric;->READ_CLICK_TIME:Lcom/amazon/sitb/android/Metric;

    sget-object v6, Lcom/amazon/sitb/android/Metric;->READ_CLICK_ATTEMPT:Lcom/amazon/sitb/android/Metric;

    sget-object v7, Lcom/amazon/sitb/android/Metric;->READ_CLICK_SUCCESS:Lcom/amazon/sitb/android/Metric;

    sget-object v8, Lcom/amazon/sitb/android/Metric;->READ_CLICK_FAILURE:Lcom/amazon/sitb/android/Metric;

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$6;-><init>(Lcom/amazon/sitb/android/view/UpsellBarViewNLN;Ljava/lang/String;Ljava/lang/Class;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;)V

    iput-object v9, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->readClickedListener:Landroid/view/View$OnClickListener;

    .line 209
    new-instance v9, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$7;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->getUpsellBarName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " download clicked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v5, Lcom/amazon/sitb/android/Metric;->DOWNLOAD_CLICK_TIME:Lcom/amazon/sitb/android/Metric;

    sget-object v6, Lcom/amazon/sitb/android/Metric;->DOWNLOAD_CLICK_ATTEMPT:Lcom/amazon/sitb/android/Metric;

    const/4 v7, 0x0

    sget-object v8, Lcom/amazon/sitb/android/Metric;->DOWNLOAD_CLICK_FAILURE:Lcom/amazon/sitb/android/Metric;

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$7;-><init>(Lcom/amazon/sitb/android/view/UpsellBarViewNLN;Ljava/lang/String;Ljava/lang/Class;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;)V

    iput-object v9, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->downloadClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/sitb/android/view/UpsellBarViewNLN;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->logSizeAndOrientationMetrics(Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;)V

    return-void
.end method

.method private hideAllViews()V
    .locals 2

    .line 634
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->messageText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->hideTextView(Landroid/widget/TextView;)V

    .line 635
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->titleText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->hideTextView(Landroid/widget/TextView;)V

    .line 636
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->multilineMessageText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->hideTextView(Landroid/widget/TextView;)V

    .line 637
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->failureAsset:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 638
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->progressRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 639
    invoke-virtual {p0, v1}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->setSeparatorVisibility(I)V

    .line 640
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->button:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->hideButton(Landroid/widget/Button;)V

    .line 641
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->buyButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->hideButton(Landroid/widget/Button;)V

    .line 642
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->kuButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->hideButton(Landroid/widget/Button;)V

    return-void
.end method

.method private logSizeAndOrientationMetrics(Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;)V
    .locals 5

    .line 656
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/metrics/MetricsService;->createMetricEvent()Lcom/amazon/sitb/android/metrics/MetricEvent;

    move-result-object v0

    .line 657
    iget-object v1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    sget v2, Lcom/amazon/kindle/sitb/R$string;->device_screen_size:I

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v4}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lcom/amazon/sitb/android/metrics/MetricsService;->addMetricString(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;Ljava/lang/String;)V

    .line 658
    iget-object p1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    sget v1, Lcom/amazon/kindle/sitb/R$string;->device_orientation:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/amazon/sitb/android/metrics/MetricsService;->addMetricString(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;Ljava/lang/String;)V

    .line 659
    iget-object p1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/amazon/sitb/android/metrics/MetricsService;->recordMetricEvent(Lcom/amazon/sitb/android/metrics/MetricEvent;Ljava/lang/Class;)V

    return-void
.end method

.method private renderKUButton(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V
    .locals 3

    .line 541
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->kuButton:Landroid/widget/Button;

    sget v1, Lcom/amazon/kindle/sitb/R$string;->upsell_bar_kindle_unlimited_button_text:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->buyClickListener:Lcom/amazon/sitb/android/view/MeasuringOnClickListener;

    iget-object p1, p1, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;->price:Lcom/amazon/sitb/android/BookPrice;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->setTextAndShow(Landroid/widget/Button;Ljava/lang/String;Lcom/amazon/sitb/android/view/MeasuringOnClickListener;Lcom/amazon/sitb/android/BookPrice;)V

    .line 546
    iget-object p1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->kuButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 547
    new-instance v0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$9;

    invoke-direct {v0, p0, p2}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$9;-><init>(Lcom/amazon/sitb/android/view/UpsellBarViewNLN;Landroid/content/res/Resources;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private updateLayoutParamsForDisabledNLN()V
    .locals 3

    .line 809
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 812
    iget-object v1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->upsellBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/sitb/R$dimen;->upsell_bar_container_horizontal_margin_nln_disabled:I

    .line 813
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 812
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    .line 817
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 819
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateTextViewsForPurchasedCases(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V
    .locals 1

    .line 523
    iget-boolean p1, p1, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;->wasPurchasedThisReadingSession:Z

    if-eqz p1, :cond_0

    .line 525
    iget-object p1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->multilineMessageText:Landroid/widget/TextView;

    sget p2, Lcom/amazon/kindle/sitb/R$string;->upsell_bar_cancel_nln:I

    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->cancelClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->setTextAndShow(Landroid/widget/TextView;ILandroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 529
    :cond_0
    iget-object p1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->multilineMessageText:Landroid/widget/TextView;

    sget p2, Lcom/amazon/kindle/sitb/R$string;->upsell_bar_already_purchased:I

    invoke-virtual {p0, p1, p2}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->setTextAndShow(Landroid/widget/TextView;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected abstract getLogger()Lcom/amazon/sitb/android/ISamplingLogger;
.end method

.method protected varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 803
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->upsellBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 804
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getUpsellBarName()Ljava/lang/String;
.end method

.method protected hideButton(Landroid/widget/Button;)V
    .locals 1

    const-string v0, ""

    .line 776
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 777
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    const/16 v0, 0x8

    .line 778
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 779
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->unexpectedClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected hideTextView(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, ""

    .line 789
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 790
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    const/16 v0, 0x8

    .line 791
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setColorCode(Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 3

    .line 246
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->NIGHT:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-ne p1, v0, :cond_1

    .line 248
    :cond_0
    iget-object p1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->button:Landroid/widget/Button;

    sget v0, Lcom/amazon/kindle/sitb/R$drawable;->upsell_bar_button_dark_background_nln:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 249
    iget-object p1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->button:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/sitb/R$color;->upsell_bar_button_dark_text_color_nln:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 251
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/sitb/R$color;->primary_text_color_dark_nln:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 252
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->titleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->messageText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/sitb/R$color;->secondary_text_color_dark_nln:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->messageText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/sitb/R$color;->link_color_dark_nln:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 255
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->progressText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 256
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->separatorText:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 258
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method public setPresenter(Lcom/amazon/sitb/android/UpsellBarPresenter;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->presenter:Lcom/amazon/sitb/android/UpsellBarPresenter;

    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p1, Lcom/amazon/sitb/android/UpsellBarPresenter;

    invoke-virtual {p0, p1}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->setPresenter(Lcom/amazon/sitb/android/UpsellBarPresenter;)V

    return-void
.end method

.method protected setSeparatorVisibility(I)V
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->separatorText:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected setTextAndShow(Landroid/widget/Button;ILandroid/view/View$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 750
    invoke-virtual {p0, p2, v0}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->setTextAndShow(Landroid/widget/Button;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setTextAndShow(Landroid/widget/Button;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 762
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 763
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    .line 764
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 p2, 0x0

    .line 765
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 766
    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setTextAndShow(Landroid/widget/Button;Ljava/lang/String;Lcom/amazon/sitb/android/view/MeasuringOnClickListener;Lcom/amazon/sitb/android/BookPrice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Button;",
            "Ljava/lang/String;",
            "Lcom/amazon/sitb/android/view/MeasuringOnClickListener<",
            "Lcom/amazon/sitb/android/BookPrice;",
            ">;",
            "Lcom/amazon/sitb/android/BookPrice;",
            ")V"
        }
    .end annotation

    .line 737
    invoke-virtual {p3, p4}, Lcom/amazon/sitb/android/view/MeasuringOnClickListener;->setData(Ljava/lang/Object;)V

    .line 738
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->setTextAndShow(Landroid/widget/Button;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setTextAndShow(Landroid/widget/TextView;I)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 683
    invoke-virtual {p0, p2, v0}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->setTextAndShow(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method protected setTextAndShow(Landroid/widget/TextView;ILandroid/view/View$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 707
    invoke-virtual {p0, p2, v0}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->setTextAndShow(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setTextAndShow(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->unexpectedClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->setTextAndShow(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setTextAndShow(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 720
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->linkStylingService:Lcom/amazon/sitb/android/view/LinkStylingService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/sitb/android/view/LinkStylingService;->setStyledText(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 721
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    .line 722
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    const/4 p2, 0x0

    .line 723
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected updateUI(Lcom/amazon/sitb/android/BookState;ILcom/amazon/sitb/android/BookPrice;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 298
    invoke-static {}, Lcom/amazon/sitb/android/utils/BuildUtils;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager;->useDebugValues()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    invoke-static {}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager;->getNewState()Lcom/amazon/sitb/android/BookState;

    move-result-object p1

    .line 301
    invoke-static {}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager;->getPercentComplete()I

    move-result p2

    .line 302
    invoke-static {}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager;->getNextBookPrice()Lcom/amazon/sitb/android/BookPrice;

    move-result-object p3

    .line 303
    invoke-static {}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager;->getFailureCode()Ljava/lang/String;

    move-result-object p5

    .line 304
    invoke-static {}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager;->wasPurchasedThisReadingSession()Z

    move-result p6

    :cond_0
    move v2, p2

    move-object v3, p3

    move-object v5, p5

    move v6, p6

    .line 307
    new-instance p2, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;

    move-object v0, p2

    move-object v1, p0

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;-><init>(Lcom/amazon/sitb/android/view/UpsellBarViewNLN;ILcom/amazon/sitb/android/BookPrice;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 310
    iget-object p3, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->upsellBar:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 313
    invoke-direct {p0}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->hideAllViews()V

    .line 315
    sget-object p4, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$10;->$SwitchMap$com$amazon$sitb$android$BookState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    aget p4, p4, p5

    packed-switch p4, :pswitch_data_0

    .line 349
    invoke-virtual {p0, p2, p3}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->updateUIForStateUnknown(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V

    .line 350
    invoke-virtual {p0}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->getLogger()Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected case in setState: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :pswitch_0
    invoke-virtual {p0, p2, p3}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->updateUIForStateCanceling(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V

    goto :goto_0

    .line 342
    :pswitch_1
    invoke-virtual {p0, p2, p3}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->updateUIForStatePaymentError(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V

    goto :goto_0

    .line 339
    :pswitch_2
    invoke-virtual {p0, p2, p3}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->updateUIForStatePaymentFailure(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V

    goto :goto_0

    .line 336
    :pswitch_3
    invoke-virtual {p0, p2, p3}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->updateUIForStateTransitioning(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V

    goto :goto_0

    .line 333
    :pswitch_4
    invoke-virtual {p0, p2, p3}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->updateUIForStateDownloaded(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V

    goto :goto_0

    .line 330
    :pswitch_5
    invoke-virtual {p0, p2, p3}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->updateUIForStateDownloading(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V

    goto :goto_0

    .line 327
    :pswitch_6
    invoke-virtual {p0, p2, p3}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->updateUIForStateOwned(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V

    goto :goto_0

    .line 324
    :pswitch_7
    invoke-virtual {p0, p2, p3}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->updateUIForStatePurchasing(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V

    goto :goto_0

    .line 321
    :pswitch_8
    invoke-virtual {p0, p2, p3}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->updateUIForStateUnowned(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V

    goto :goto_0

    .line 318
    :pswitch_9
    invoke-virtual {p0, p2, p3}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->updateUIForStateRecentlyCanceled(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected updateUIForStateCanceling(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V
    .locals 0

    .line 500
    iget-object p1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->multilineMessageText:Landroid/widget/TextView;

    sget p2, Lcom/amazon/kindle/sitb/R$string;->upsell_bar_canceling_nln:I

    invoke-virtual {p0, p1, p2}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->setTextAndShow(Landroid/widget/TextView;I)V

    return-void
.end method

.method protected updateUIForStateDownloaded(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V
    .locals 1

    .line 436
    invoke-direct {p0, p1, p2}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->updateTextViewsForPurchasedCases(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V

    .line 437
    iget-object p1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->button:Landroid/widget/Button;

    sget p2, Lcom/amazon/kindle/sitb/R$string;->upsell_bar_read:I

    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->readClickedListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->setTextAndShow(Landroid/widget/Button;ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected updateUIForStateDownloading(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V
    .locals 4

    .line 422
    invoke-direct {p0, p1, p2}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->updateTextViewsForPurchasedCases(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V

    .line 423
    iget-object p2, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->progressRoot:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 424
    iget-object p2, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->progressText:Landroid/widget/TextView;

    sget v1, Lcom/amazon/kindle/sitb/R$string;->upsell_bar_downloading:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;->percentComplete:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->setTextAndShow(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 425
    iget-object p2, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->progressBar:Landroid/widget/ProgressBar;

    iget p1, p1, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;->percentComplete:I

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method protected updateUIForStateOwned(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V
    .locals 1

    .line 410
    invoke-direct {p0, p1, p2}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->updateTextViewsForPurchasedCases(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V

    .line 411
    iget-object p1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->button:Landroid/widget/Button;

    sget p2, Lcom/amazon/kindle/sitb/R$string;->upsell_bar_download_nln:I

    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->downloadClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->setTextAndShow(Landroid/widget/Button;ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected updateUIForStatePaymentError(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V
    .locals 1

    .line 489
    iget-object p1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->multilineMessageText:Landroid/widget/TextView;

    sget p2, Lcom/amazon/kindle/sitb/R$string;->upsell_bar_payment_error_nln:I

    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->mycdClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->setTextAndShow(Landroid/widget/TextView;ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected updateUIForStatePaymentFailure(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V
    .locals 1

    .line 459
    iget-object p2, p1, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;->failureCode:Ljava/lang/String;

    const-string v0, "mfa-challenge-required"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 461
    iget-object p1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->multilineMessageText:Landroid/widget/TextView;

    sget p2, Lcom/amazon/kindle/sitb/R$string;->upsell_bar_payment_failure_mfa_challenge_details:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->setTextAndShow(Landroid/widget/TextView;ILandroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 465
    :cond_0
    iget-object p2, p1, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;->failureCode:Ljava/lang/String;

    const-string v0, "need-credit-card"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p1, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;->failureCode:Ljava/lang/String;

    const-string v0, "need-billing-address"

    .line 466
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 470
    :cond_1
    iget-object p1, p1, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;->failureCode:Ljava/lang/String;

    const-string/jumbo p2, "price-increased"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 472
    iget-object p1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->multilineMessageText:Landroid/widget/TextView;

    sget p2, Lcom/amazon/kindle/sitb/R$string;->upsell_bar_payment_failure_price_increase_multiline:I

    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->detailsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->setTextAndShow(Landroid/widget/TextView;ILandroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 476
    :cond_2
    iget-object p1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->multilineMessageText:Landroid/widget/TextView;

    sget p2, Lcom/amazon/kindle/sitb/R$string;->upsell_bar_payment_failure_multiline:I

    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->mycdClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->setTextAndShow(Landroid/widget/TextView;ILandroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 468
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->multilineMessageText:Landroid/widget/TextView;

    sget p2, Lcom/amazon/kindle/sitb/R$string;->upsell_bar_payment_failure_billing_details_multiline:I

    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->detailsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->setTextAndShow(Landroid/widget/TextView;ILandroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method

.method protected updateUIForStatePurchasing(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V
    .locals 0

    .line 399
    iget-object p1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->multilineMessageText:Landroid/widget/TextView;

    sget p2, Lcom/amazon/kindle/sitb/R$string;->upsell_bar_processing_nln:I

    invoke-virtual {p0, p1, p2}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->setTextAndShow(Landroid/widget/TextView;I)V

    return-void
.end method

.method protected updateUIForStateRecentlyCanceled(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V
    .locals 1

    .line 363
    iget-object p1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->multilineMessageText:Landroid/widget/TextView;

    sget p2, Lcom/amazon/kindle/sitb/R$string;->upsell_bar_recent_cancel_multiline:I

    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->detailsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->setTextAndShow(Landroid/widget/TextView;ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected updateUIForStateTransitioning(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V
    .locals 0

    .line 448
    iget-object p1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->multilineMessageText:Landroid/widget/TextView;

    sget p2, Lcom/amazon/kindle/sitb/R$string;->upsell_bar_title_owned:I

    invoke-virtual {p0, p1, p2}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->setTextAndShow(Landroid/widget/TextView;I)V

    return-void
.end method

.method protected updateUIForStateUnknown(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V
    .locals 0

    return-void
.end method

.method protected updateUIForStateUnowned(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V
    .locals 3

    .line 374
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->titleText:Landroid/widget/TextView;

    sget v1, Lcom/amazon/kindle/sitb/R$string;->sample_bar_title_unowned:I

    invoke-virtual {p0, v0, v1}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->setTextAndShow(Landroid/widget/TextView;I)V

    .line 375
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->messageText:Landroid/widget/TextView;

    sget v1, Lcom/amazon/kindle/sitb/R$string;->upsell_bar_store_nln:I

    iget-object v2, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->detailsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->setTextAndShow(Landroid/widget/TextView;ILandroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 376
    invoke-virtual {p0, v0}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->setSeparatorVisibility(I)V

    .line 377
    iget-object v0, p1, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;->price:Lcom/amazon/sitb/android/BookPrice;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/sitb/android/BookPrice;->isBorrowable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-direct {p0, p1, p2}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->renderKUButton(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V

    goto :goto_0

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/metrics/MetricsService;->createMetricEvent()Lcom/amazon/sitb/android/metrics/MetricEvent;

    move-result-object v0

    .line 382
    invoke-static {}, Lcom/amazon/sitb/android/utils/PaymentFlowsUtil;->shouldUsePaymentFlows()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 383
    iget-object v1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    sget-object v2, Lcom/amazon/sitb/android/Metric;->BUY_BUTTON_SHOWN:Lcom/amazon/sitb/android/Metric;

    invoke-virtual {v1, v0, v2}, Lcom/amazon/sitb/android/metrics/MetricsService;->addMetricCounter(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;)V

    .line 384
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->buyButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->buttonLabelRenderService:Lcom/amazon/sitb/android/view/ButtonLabelRenderService;

    iget-object v2, p1, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;->price:Lcom/amazon/sitb/android/BookPrice;

    invoke-virtual {v1, p2, v2}, Lcom/amazon/sitb/android/view/ButtonLabelRenderService;->renderBuyButtonLabel(Landroid/content/res/Resources;Lcom/amazon/sitb/android/BookPrice;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->buyClickListener:Lcom/amazon/sitb/android/view/MeasuringOnClickListener;

    iget-object p1, p1, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;->price:Lcom/amazon/sitb/android/BookPrice;

    invoke-virtual {p0, v0, p2, v1, p1}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->setTextAndShow(Landroid/widget/Button;Ljava/lang/String;Lcom/amazon/sitb/android/view/MeasuringOnClickListener;Lcom/amazon/sitb/android/BookPrice;)V

    goto :goto_0

    .line 386
    :cond_1
    iget-object p1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    sget-object p2, Lcom/amazon/sitb/android/Metric;->BUY_BUTTON_HIDDEN:Lcom/amazon/sitb/android/Metric;

    invoke-virtual {p1, v0, p2}, Lcom/amazon/sitb/android/metrics/MetricsService;->addMetricCounter(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized updateViewModel(Lcom/amazon/sitb/android/model/UpsellModel;)V
    .locals 9

    monitor-enter p0

    .line 270
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->getLogger()Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateViewModel(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p1}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellState()Lcom/amazon/sitb/android/BookState;

    move-result-object v4

    .line 273
    invoke-virtual {p1}, Lcom/amazon/sitb/android/model/UpsellModel;->getProgress()I

    move-result v5

    .line 274
    invoke-virtual {p1}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellPrice()Lcom/amazon/sitb/android/BookPrice;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->price:Lcom/amazon/sitb/android/BookPrice;

    .line 275
    invoke-virtual {p1}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellTitle()Ljava/lang/String;

    move-result-object v6

    .line 276
    invoke-virtual {p1}, Lcom/amazon/sitb/android/model/UpsellModel;->getFailureCode()Ljava/lang/String;

    move-result-object v7

    .line 277
    invoke-virtual {p0, p1}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->wasPurchasedThisReadingSession(Lcom/amazon/sitb/android/model/UpsellModel;)Z

    move-result v8

    .line 280
    iget-object p1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->upsellBar:Landroid/view/View;

    new-instance v0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$8;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$8;-><init>(Lcom/amazon/sitb/android/view/UpsellBarViewNLN;Lcom/amazon/sitb/android/BookState;ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic updateViewModel(Ljava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p1, Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {p0, p1}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->updateViewModel(Lcom/amazon/sitb/android/model/UpsellModel;)V

    return-void
.end method

.method protected wasPurchasedThisReadingSession(Lcom/amazon/sitb/android/model/UpsellModel;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 626
    invoke-virtual {p1}, Lcom/amazon/sitb/android/model/UpsellModel;->getPurchaseRecord()Lcom/amazon/sitb/android/PurchaseRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
