.class public Lcom/amazon/sitb/android/view/series/SeriesBarView;
.super Lcom/amazon/sitb/android/view/UpsellBarViewNLN;
.source "SeriesBarView.java"


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;

.field private static final seriesBarName:Ljava/lang/String; = "Series"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/view/series/SeriesBarView;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/view/series/SeriesBarView;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/sitb/android/metrics/MetricsService;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/sitb/android/metrics/MetricsService;)V

    return-void
.end method

.method private updateTextViewsForPurchasedCases(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V
    .locals 0

    .line 78
    iget-boolean p1, p1, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;->wasPurchasedThisReadingSession:Z

    if-nez p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->multilineMessageText:Landroid/widget/TextView;

    sget p2, Lcom/amazon/kindle/sitb/R$string;->series_bar_already_purchased:I

    invoke-virtual {p0, p1, p2}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->setTextAndShow(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/amazon/sitb/android/ISamplingLogger;
    .locals 1

    .line 93
    sget-object v0, Lcom/amazon/sitb/android/view/series/SeriesBarView;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-object v0
.end method

.method protected getUpsellBarName()Ljava/lang/String;
    .locals 1

    const-string v0, "Series"

    return-object v0
.end method

.method protected updateUIForStateDownloaded(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V
    .locals 0

    .line 64
    invoke-super {p0, p1, p2}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->updateUIForStateDownloaded(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/amazon/sitb/android/view/series/SeriesBarView;->updateTextViewsForPurchasedCases(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V

    return-void
.end method

.method protected updateUIForStateDownloading(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V
    .locals 0

    .line 57
    invoke-super {p0, p1, p2}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->updateUIForStateDownloading(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/amazon/sitb/android/view/series/SeriesBarView;->updateTextViewsForPurchasedCases(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V

    return-void
.end method

.method protected updateUIForStateOwned(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->updateUIForStateOwned(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/amazon/sitb/android/view/series/SeriesBarView;->updateTextViewsForPurchasedCases(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V

    return-void
.end method

.method protected updateUIForStatePurchasing(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V
    .locals 0

    .line 43
    iget-object p1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->titleText:Landroid/widget/TextView;

    sget p2, Lcom/amazon/kindle/sitb/R$string;->series_bar_header_nln:I

    invoke-virtual {p0, p1, p2}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->setTextAndShow(Landroid/widget/TextView;I)V

    .line 44
    iget-object p1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->messageText:Landroid/widget/TextView;

    sget p2, Lcom/amazon/kindle/sitb/R$string;->upsell_bar_processing_nln:I

    invoke-virtual {p0, p1, p2}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->setTextAndShow(Landroid/widget/TextView;I)V

    return-void
.end method

.method protected updateUIForStateUnowned(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V
    .locals 3

    .line 33
    invoke-super {p0, p1, p2}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->updateUIForStateUnowned(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V

    .line 35
    iget-object p2, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->titleText:Landroid/widget/TextView;

    sget v0, Lcom/amazon/kindle/sitb/R$string;->series_bar_header_nln:I

    invoke-virtual {p0, p2, v0}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->setTextAndShow(Landroid/widget/TextView;I)V

    .line 36
    iget-object p2, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->messageText:Landroid/widget/TextView;

    sget v0, Lcom/amazon/kindle/sitb/R$string;->series_bar_book_title_link_formatter:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;->upsellTitle:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->detailsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2, p1, v0}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->setTextAndShow(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    const/16 p1, 0x8

    .line 38
    invoke-virtual {p0, p1}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->setSeparatorVisibility(I)V

    return-void
.end method
