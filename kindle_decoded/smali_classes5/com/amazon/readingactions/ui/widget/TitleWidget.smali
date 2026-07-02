.class public Lcom/amazon/readingactions/ui/widget/TitleWidget;
.super Ljava/lang/Object;
.source "TitleWidget.java"


# static fields
.field private static final SEPARATOR:Ljava/lang/String; = ". "

.field private static final defaultBookTitleTextSize:F = 15.0f

.field private static final endColorOpacity:F = 0.05f

.field private static final mRadius:F

.field private static final maxOpacity:F = 0.8f

.field private static final smallBookTitleTextSize:F = 13.0f


# instance fields
.field public final additionalData:Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;

.field private bookImageDownloader:Lcom/amazon/startactions/storage/ImageBatchDownloader;

.field private final def:Lcom/amazon/readingactions/sidecar/def/widgets/TitleWidgetDef;

.field protected messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field protected pillIconView:Landroid/view/View;

.field protected subtitle:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field protected view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$dimen;->readingactions_bottom_sheet_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->mRadius:F

    return-void
.end method

.method public constructor <init>(Lcom/amazon/readingactions/sidecar/def/widgets/TitleWidgetDef;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->def:Lcom/amazon/readingactions/sidecar/def/widgets/TitleWidgetDef;

    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->additionalData:Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;

    .line 81
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/TitleWidget;->prepareAndLoadImage()V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/readingactions/sidecar/def/widgets/TitleWidgetDef;Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->def:Lcom/amazon/readingactions/sidecar/def/widgets/TitleWidgetDef;

    .line 86
    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->additionalData:Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;

    .line 87
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/TitleWidget;->prepareAndLoadImage()V

    return-void
.end method

.method private buildHeaderRefTag()Lcom/amazon/ea/reftag/RefTag;
    .locals 7

    .line 330
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->additionalData:Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;->getLayout()Lcom/amazon/startactions/ui/layout/Layout;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/startactions/ui/layout/Layout;->getRefTagSuffix()Ljava/lang/String;

    move-result-object v3

    .line 331
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->additionalData:Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;->getLayout()Lcom/amazon/startactions/ui/layout/Layout;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/startactions/ui/layout/Layout;->getMetricsTag()Ljava/lang/String;

    move-result-object v4

    const-string v0, "b"

    const/4 v1, 0x0

    .line 332
    invoke-static {v0, v1}, Lcom/amazon/ea/reftag/WidgetRefTagFactory;->reftagForPositionInLayout(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 333
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->additionalData:Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;->getHeaderWidgetDef()Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    move-result-object v0

    iget-object v6, v0, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    .line 334
    new-instance v0, Lcom/amazon/ea/reftag/RefTag;

    const-string/jumbo v2, "r_sa"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/ea/reftag/RefTag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 338
    invoke-static {v0}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v0

    .line 339
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->def:Lcom/amazon/readingactions/sidecar/def/widgets/TitleWidgetDef;

    iget-object v1, v1, Lcom/amazon/readingactions/sidecar/def/widgets/TitleWidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "MetricsTag"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected static setOrientationListener(Landroid/content/Context;Landroid/view/View;)V
    .locals 9

    if-eqz p0, :cond_1

    .line 236
    new-instance v8, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;-><init>(Landroid/content/Context;Landroid/view/View;ZZZZLcom/amazon/readingactions/helpers/AlignmentChangeDelegate;)V

    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 238
    :goto_0
    invoke-virtual {v8, p1}, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;->setAsymmetricPadding(Z)V

    .line 239
    invoke-virtual {v8}, Landroid/view/OrientationEventListener;->enable()V

    :cond_1
    return-void
.end method

.method private setRatingReviews()V
    .locals 9

    .line 310
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->view:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/ea/R$id;->book_rating:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 311
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 313
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->view:Landroid/view/View;

    sget v3, Lcom/amazon/kindle/ea/R$id;->sub_title_spacing:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 314
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 316
    new-instance v0, Lcom/amazon/readingactions/ui/listeners/SeeInStoreOnClickListener;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->additionalData:Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;

    invoke-virtual {v1}, Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;->getHeaderWidgetDef()Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    move-result-object v1

    iget-object v4, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->additionalData:Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;

    .line 317
    invoke-virtual {v1}, Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;->getHeaderWidgetDef()Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    move-result-object v1

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v5, v1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/TitleWidget;->buildHeaderRefTag()Lcom/amazon/ea/reftag/RefTag;

    move-result-object v6

    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/TitleWidget;->getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/amazon/readingactions/ui/listeners/SeeInStoreOnClickListener;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ea/reftag/RefTag;Ljava/util/HashMap;Lcom/amazon/kindle/krx/events/IMessageQueue;)V

    .line 318
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->additionalData:Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;

    .line 319
    invoke-virtual {v1}, Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;->getHeaderWidgetDef()Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->view:Landroid/view/View;

    sget v4, Lcom/amazon/kindle/ea/R$id;->stars:I

    .line 321
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RatingBar;

    iget-object v4, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->view:Landroid/view/View;

    sget v5, Lcom/amazon/kindle/ea/R$id;->num_reviews:I

    .line 322
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sget-object v5, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 323
    invoke-interface {v5}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v6, v0

    .line 318
    invoke-static/range {v1 .. v6}, Lcom/amazon/readingactions/ui/widget/reviews/RatingReviewsBookInfoViewConfigurator;->configure(Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;Landroid/widget/LinearLayout;Landroid/widget/RatingBar;Landroid/widget/TextView;Landroid/content/res/Resources;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setTimeToRead()V
    .locals 5

    .line 282
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->view:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/ea/R$id;->time_to_read_widget_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 283
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 285
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->view:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/ea/R$id;->time_to_read_divider:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 286
    sget v2, Lcom/amazon/kindle/ea/R$array;->startactions_title_divider_line:I

    invoke-static {v2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 288
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->view:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/ea/R$id;->reading_time:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 289
    sget v2, Lcom/amazon/kindle/ea/R$array;->readingactions_ttr_clock_icon:I

    .line 290
    invoke-static {v2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    .line 289
    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 293
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->view:Landroid/view/View;

    sget v4, Lcom/amazon/kindle/ea/R$id;->reading_pages:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 294
    sget v4, Lcom/amazon/kindle/ea/R$array;->readingactions_ttr_page_icon:I

    .line 295
    invoke-static {v4}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 294
    invoke-virtual {v2, v4, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 298
    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->additionalData:Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;

    .line 299
    invoke-virtual {v3}, Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;->getTimeToReadWidgetDef()Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;

    move-result-object v3

    sget-object v4, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 303
    invoke-interface {v4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 298
    invoke-static {v3, v0, v1, v2, v4}, Lcom/amazon/readingactions/ui/widget/ttr/TimeToReadViewConfigurator;->configure(Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;Landroid/view/ViewGroup;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/content/res/Resources;)V

    .line 306
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->additionalData:Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;->getTimeToReadWidgetDef()Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v1, Lcom/amazon/ea/metrics/GeneralWidgetActions;->RENDER:Lcom/amazon/ea/metrics/GeneralWidgetActions;

    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    return-void
.end method


# virtual methods
.method public createView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    .line 91
    sget v0, Lcom/amazon/kindle/ea/R$layout;->reading_actions_title_widget:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->view:Landroid/view/View;

    .line 93
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-class p2, Lcom/amazon/readingactions/ui/widget/TitleWidget;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 95
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/TitleWidget;->setImageAndHeaderGradient()V

    .line 97
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/TitleWidget;->setTitle()V

    .line 99
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->def:Lcom/amazon/readingactions/sidecar/def/widgets/TitleWidgetDef;

    iget-object p1, p1, Lcom/amazon/readingactions/sidecar/def/widgets/TitleWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/TitleWidget;->setSubTitle()V

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/TitleWidget;->setDivider()V

    .line 105
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->view:Landroid/view/View;

    sget p2, Lcom/amazon/kindle/ea/R$id;->bottom_sheet_pill:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->pillIconView:Landroid/view/View;

    .line 106
    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/ui/widget/TitleWidget;->setPillIcon(Landroid/view/View;)V

    .line 107
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->view:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/ui/widget/TitleWidget;->handleClick(Landroid/view/View;)V

    .line 109
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/TitleWidget;->setAdditionalData()V

    .line 111
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->view:Landroid/view/View;

    return-object p1
.end method

.method protected handleClick(Landroid/view/View;)V
    .locals 1

    .line 149
    new-instance v0, Lcom/amazon/readingactions/ui/widget/TitleWidget$2;

    invoke-direct {v0, p0}, Lcom/amazon/readingactions/ui/widget/TitleWidget$2;-><init>(Lcom/amazon/readingactions/ui/widget/TitleWidget;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onOrientationChange()V
    .locals 0

    .line 161
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/TitleWidget;->setTitle()V

    return-void
.end method

.method protected prepareAndLoadImage()V
    .locals 3

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->def:Lcom/amazon/readingactions/sidecar/def/widgets/TitleWidgetDef;

    iget-object v1, v1, Lcom/amazon/readingactions/sidecar/def/widgets/TitleWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/ea/R$dimen;->ra_title_book_cover_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 119
    invoke-static {v0, v1}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->forRecs(Ljava/util/List;I)Lcom/amazon/startactions/storage/ImageBatchDownloader;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->bookImageDownloader:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    .line 120
    invoke-virtual {v0}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->download()V

    .line 121
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->bookImageDownloader:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    invoke-virtual {v0}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->load()V

    return-void
.end method

.method public setAdditionalData()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->additionalData:Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;

    if-eqz v0, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/TitleWidget;->setTimeToRead()V

    .line 277
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/TitleWidget;->setRatingReviews()V

    :cond_0
    return-void
.end method

.method protected setDivider()V
    .locals 8

    .line 223
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->view:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/ea/R$id;->startactions_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 224
    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_divider_line:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 225
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 226
    invoke-static {v0, v1}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected setHeaderGradient(Landroid/graphics/Bitmap;Landroid/widget/RelativeLayout;)V
    .locals 4

    .line 198
    sget v0, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    .line 199
    invoke-static {}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getColorModeFromAppTheme()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/ui/ColorMode;->isDark()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, -0x1000000

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 201
    :goto_0
    new-instance v2, Lcom/amazon/readingactions/ui/helpers/DominantColorGenerator;

    invoke-direct {v2, p1, v1}, Lcom/amazon/readingactions/ui/helpers/DominantColorGenerator;-><init>(Landroid/graphics/Bitmap;I)V

    .line 202
    new-instance p1, Lcom/amazon/readingactions/ui/helpers/GradientGenerator;

    invoke-direct {p1}, Lcom/amazon/readingactions/ui/helpers/GradientGenerator;-><init>()V

    .line 204
    invoke-virtual {v2}, Lcom/amazon/readingactions/ui/helpers/DominantColorGenerator;->generateDominantColor()I

    move-result v2

    const v3, 0x3f4ccccd    # 0.8f

    .line 207
    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/amazon/readingactions/ui/helpers/GradientGenerator;->calculateOpacity(IIIF)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v3, v0, v1

    if-lez v3, :cond_1

    .line 211
    invoke-virtual {p1, v2, v0}, Lcom/amazon/readingactions/ui/helpers/GradientGenerator;->getTranslucentColor(IF)I

    move-result v0

    const v3, 0x3d4ccccd    # 0.05f

    .line 212
    invoke-virtual {p1, v2, v3}, Lcom/amazon/readingactions/ui/helpers/GradientGenerator;->getTranslucentColor(IF)I

    move-result v2

    .line 214
    invoke-virtual {p1, v0, v2}, Lcom/amazon/readingactions/ui/helpers/GradientGenerator;->getGradientDrawable(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/16 v2, 0x8

    new-array v2, v2, [F

    .line 216
    sget v3, Lcom/amazon/readingactions/ui/widget/TitleWidget;->mRadius:F

    aput v3, v2, v0

    const/4 v0, 0x1

    aput v3, v2, v0

    const/4 v0, 0x2

    aput v3, v2, v0

    const/4 v0, 0x3

    aput v3, v2, v0

    const/4 v0, 0x4

    aput v1, v2, v0

    const/4 v0, 0x5

    aput v1, v2, v0

    const/4 v0, 0x6

    aput v1, v2, v0

    const/4 v0, 0x7

    aput v1, v2, v0

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 218
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method protected setImageAndHeaderGradient()V
    .locals 5

    .line 125
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->view:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/ea/R$id;->title_widget:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 126
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->view:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/ea/R$id;->book_cover_image_frame:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 127
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->view:Landroid/view/View;

    sget v3, Lcom/amazon/kindle/ea/R$id;->book_cover_image:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 129
    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->bookImageDownloader:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    new-instance v4, Lcom/amazon/readingactions/ui/widget/TitleWidget$1;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/amazon/readingactions/ui/widget/TitleWidget$1;-><init>(Lcom/amazon/readingactions/ui/widget/TitleWidget;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout;)V

    invoke-virtual {v3, v4}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->apply(Lcom/amazon/startactions/storage/ImageBatchDownloader$BatchListener;)V

    .line 139
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v1

    .line 140
    invoke-static {v1, v0}, Lcom/amazon/readingactions/ui/widget/TitleWidget;->setOrientationListener(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method protected setPillIcon(Landroid/view/View;)V
    .locals 3

    .line 244
    sget v0, Lcom/amazon/kindle/ea/R$array;->readingactions_icon_pill:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 246
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/ea/R$dimen;->ra_icon_pill_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 247
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    new-instance v0, Lcom/amazon/readingactions/ui/widget/TitleWidget$4;

    invoke-direct {v0, p0}, Lcom/amazon/readingactions/ui/widget/TitleWidget$4;-><init>(Lcom/amazon/readingactions/ui/widget/TitleWidget;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setSubTitle()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->view:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/ea/R$id;->header_sub_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 190
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->def:Lcom/amazon/readingactions/sidecar/def/widgets/TitleWidgetDef;

    iget-object v1, v1, Lcom/amazon/readingactions/sidecar/def/widgets/TitleWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    invoke-static {v1}, Lcom/amazon/ea/util/AuthorNameFormatterUtil;->formatAuthorList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->subtitle:Ljava/lang/String;

    .line 192
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x0

    .line 194
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected setTitle()V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->view:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/ea/R$id;->header_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/readingactions/ui/EllipsizableTextView;

    const/4 v1, 0x2

    const/high16 v2, 0x41700000    # 15.0f

    .line 167
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 168
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->def:Lcom/amazon/readingactions/sidecar/def/widgets/TitleWidgetDef;

    iget-object v1, v1, Lcom/amazon/readingactions/sidecar/def/widgets/TitleWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->title:Ljava/lang/String;

    iput-object v1, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->title:Ljava/lang/String;

    .line 169
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/amazon/readingactions/ui/widget/TitleWidget$3;

    invoke-direct {v2, p0, v0}, Lcom/amazon/readingactions/ui/widget/TitleWidget$3;-><init>(Lcom/amazon/readingactions/ui/widget/TitleWidget;Lcom/amazon/readingactions/ui/EllipsizableTextView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public updateTitleWidgetDescription(Z)V
    .locals 3

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->subtitle:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 263
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->subtitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p1, :cond_1

    .line 265
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 266
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/amazon/kindle/ea/R$string;->readingactions_bottomsheet_title_widget_description_expanded:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 267
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/amazon/kindle/ea/R$string;->readingactions_bottomsheet_title_widget_description_collapsed:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 268
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->pillIconView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
