.class public Lcom/amazon/readingactions/ui/widget/HeaderWidget;
.super Lcom/amazon/startactions/ui/widget/WidgetBase;
.source "HeaderWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/ui/widget/HeaderWidget$CollapsingOnClickListener;,
        Lcom/amazon/readingactions/ui/widget/HeaderWidget$ExpandingOnClickListener;,
        Lcom/amazon/readingactions/ui/widget/HeaderWidget$BaseOnClickListener;,
        Lcom/amazon/readingactions/ui/widget/HeaderWidget$ShareOnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/startactions/ui/widget/WidgetBase<",
        "Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;",
        ">;"
    }
.end annotation


# static fields
.field private static final SOCIAL_SHARING_ENTRY_POINT_START_ACTIONS_HEADER_WIDGET:Ljava/lang/String; = "START_ACTIONS_HEADER_WIDGET"


# instance fields
.field private hasGoodreadsWidget:Z


# direct methods
.method private constructor <init>(Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;-><init>(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget;->hasGoodreadsWidget:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/amazon/readingactions/ui/widget/HeaderWidget;Landroid/view/View;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/HeaderWidget;->resetAccessibility(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Ljava/util/HashMap;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Lcom/amazon/ea/ui/AnimationCoordinator;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget;->hasGoodreadsWidget:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Landroid/content/res/Resources;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Landroid/content/res/Resources;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Landroid/content/res/Resources;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Lcom/amazon/ea/ui/AnimationCoordinator;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Lcom/amazon/startactions/ui/IAnyActionsUIController;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Lcom/amazon/startactions/ui/IAnyActionsUIController;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Ljava/util/HashMap;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Lcom/amazon/ea/ui/AnimationCoordinator;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Lcom/amazon/startactions/ui/IAnyActionsUIController;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method private configureRatingReviews(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 7

    .line 174
    invoke-static {}, Lcom/amazon/readingactions/helpers/WeblabManager;->shouldSABSETitleIncludeTTR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    sget p2, Lcom/amazon/kindle/ea/R$id;->rating_review_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/16 p2, 0x8

    .line 176
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-object v1, v0

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    sget v0, Lcom/amazon/kindle/ea/R$id;->book_rating:I

    .line 180
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/LinearLayout;

    sget v0, Lcom/amazon/kindle/ea/R$id;->stars:I

    .line 181
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/RatingBar;

    sget v0, Lcom/amazon/kindle/ea/R$id;->num_reviews:I

    .line 182
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    move-object v6, p2

    .line 178
    invoke-static/range {v1 .. v6}, Lcom/amazon/readingactions/ui/widget/reviews/RatingReviewsBookInfoViewConfigurator;->configure(Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;Landroid/widget/LinearLayout;Landroid/widget/RatingBar;Landroid/widget/TextView;Landroid/content/res/Resources;Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private resetAccessibility(Landroid/view/View;)V
    .locals 2

    .line 337
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    const/4 v0, 0x0

    const/16 v1, 0x80

    .line 338
    invoke-static {p1, v1, v0}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    const/16 v1, 0x40

    .line 339
    invoke-static {p1, v1, v0}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    return-void
.end method

.method private shouldShowShareButton()Z
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-boolean v0, v0, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->showShareButton:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/ea/ui/helper/ShareHelper;->isSharingSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static tryCreate(Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;)Lcom/amazon/readingactions/ui/widget/HeaderWidget;
    .locals 1

    .line 62
    new-instance v0, Lcom/amazon/readingactions/ui/widget/HeaderWidget;

    invoke-direct {v0, p0}, Lcom/amazon/readingactions/ui/widget/HeaderWidget;-><init>(Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;)V

    return-object v0
.end method


# virtual methods
.method protected createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    .line 74
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p2}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/ea/R$layout;->reading_actions_header_widget:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 76
    invoke-static {}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->canCreateGoodreadShelfWidget()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget;->hasGoodreadsWidget:Z

    .line 78
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v2, Lcom/amazon/readingactions/ui/widget/HeaderWidget;

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    .line 81
    sget v2, Lcom/amazon/kindle/ea/R$id;->store_link:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 82
    new-instance v9, Lcom/amazon/readingactions/ui/listeners/SeeInStoreOnClickListener;

    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-object v4, v3

    check-cast v4, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v4, v4, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v5, v3, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    .line 83
    invoke-interface {v3}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getWidgetRefTagFactory()Lcom/amazon/ea/reftag/WidgetRefTagFactory;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getWidgetPlacementRefTag()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v7, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v7, v7, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lcom/amazon/ea/reftag/WidgetRefTagFactory;->createRefTag(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/reftag/RefTag;

    move-result-object v6

    .line 84
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;

    move-result-object v7

    move-object v3, v9

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Lcom/amazon/readingactions/ui/listeners/SeeInStoreOnClickListener;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ea/reftag/RefTag;Ljava/util/HashMap;Lcom/amazon/kindle/krx/events/IMessageQueue;)V

    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {p0, v2}, Lcom/amazon/readingactions/ui/widget/HeaderWidget;->setStoreLabelText(Landroid/widget/Button;)V

    .line 87
    sget v3, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v3}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 88
    sget v3, Lcom/amazon/kindle/ea/R$array;->readingactions_default_button_background:I

    invoke-static {v3}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 89
    invoke-virtual {v2, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    :cond_0
    sget v2, Lcom/amazon/kindle/ea/R$id;->share_button:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 94
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/HeaderWidget;->shouldShowShareButton()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    sget v3, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v3}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 96
    sget v3, Lcom/amazon/kindle/ea/R$array;->readingactions_default_button_background:I

    invoke-static {v3}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 97
    new-instance v3, Lcom/amazon/readingactions/ui/widget/HeaderWidget$ShareOnClickListener;

    invoke-direct {v3, p0, v0}, Lcom/amazon/readingactions/ui/widget/HeaderWidget$ShareOnClickListener;-><init>(Lcom/amazon/readingactions/ui/widget/HeaderWidget;Lcom/amazon/kindle/krx/events/IMessageQueue;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    .line 99
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 102
    :goto_0
    invoke-direct {p0, p2, v9}, Lcom/amazon/readingactions/ui/widget/HeaderWidget;->configureRatingReviews(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 106
    sget v2, Lcom/amazon/kindle/ea/R$id;->startactions_divider:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 107
    sget v3, Lcom/amazon/kindle/ea/R$array;->startactions_divider_line:I

    invoke-static {v3}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 109
    sget v2, Lcom/amazon/kindle/ea/R$id;->expanding_text:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    .line 110
    iget-boolean v3, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget;->hasGoodreadsWidget:Z

    if-eqz v3, :cond_2

    .line 111
    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v4, Lcom/amazon/kindle/ea/R$integer;->readingactions_widget_expanding_text_max_lines_collapsed_w_goodreads:I

    .line 112
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 111
    invoke-virtual {v2, v3}, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->setMaxLines(I)V

    .line 116
    :cond_2
    sget v3, Lcom/amazon/kindle/ea/R$id;->see_less:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/widget/Button;

    .line 117
    sget v3, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_more_less_button_color:I

    .line 118
    invoke-static {v3}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 117
    invoke-virtual {v6, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/4 v3, 0x2

    .line 119
    invoke-static {v6, v3}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 120
    new-instance v3, Lcom/amazon/readingactions/ui/widget/HeaderWidget$CollapsingOnClickListener;

    invoke-direct {v3, p0, v2, v6, p1}, Lcom/amazon/readingactions/ui/widget/HeaderWidget$CollapsingOnClickListener;-><init>(Lcom/amazon/readingactions/ui/widget/HeaderWidget;Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Landroid/widget/Button;Landroid/view/View;)V

    invoke-virtual {v6, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v4, Lcom/amazon/kindle/ea/R$string;->startactions_widget_read_more:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/amazon/readingactions/ui/widget/HeaderWidget$ExpandingOnClickListener;

    move-object v3, v10

    move-object v4, p0

    move-object v5, v2

    move-object v7, p1

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Lcom/amazon/readingactions/ui/widget/HeaderWidget$ExpandingOnClickListener;-><init>(Lcom/amazon/readingactions/ui/widget/HeaderWidget;Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Landroid/widget/Button;Landroid/view/View;Lcom/amazon/kindle/krx/events/IMessageQueue;)V

    invoke-virtual {v2, v9, v10}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTruncateLinkText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 125
    sget p1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {p1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    invoke-virtual {v2, p1, v1}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTextWithLink(Ljava/lang/CharSequence;Z)V

    .line 127
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    :cond_3
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/GeneralWidgetActions;->RENDER:Lcom/amazon/ea/metrics/GeneralWidgetActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 132
    new-instance p1, Lcom/amazon/readingactions/ui/widget/HeaderWidget$1;

    invoke-direct {p1, p0}, Lcom/amazon/readingactions/ui/widget/HeaderWidget$1;-><init>(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public initMetricsValues()V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    const-string v1, "HeaderWidgetSeeMoreClicked"

    .line 155
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v1, "HeaderWidgetSeeAllClicked"

    .line 158
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v1, "HeaderWidgetSeeLessClicked"

    .line 161
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 164
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/HeaderWidget;->shouldShowShareButton()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HeaderWidgetShareClicked"

    .line 165
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    :cond_0
    const-string v0, "DisplayedHeaderWidget"

    .line 169
    invoke-static {v0, p0}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetSA(Ljava/lang/String;Lcom/amazon/startactions/ui/widget/Widget;)V

    return-void
.end method

.method public prepareData()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->imageURL:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/startactions/storage/ImageDownloadManager;->prepare(Ljava/lang/String;)V

    return-void
.end method

.method public setStoreLabelText(Landroid/widget/Button;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow;->getSABookStoreLabelText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
