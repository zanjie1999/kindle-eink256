.class public final Lcom/amazon/readingactions/ui/widget/reviews/RatingReviewsBookInfoViewConfigurator$Companion;
.super Ljava/lang/Object;
.source "RatingReviewsBookInfoViewConfigurator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/reviews/RatingReviewsBookInfoViewConfigurator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/reviews/RatingReviewsBookInfoViewConfigurator$Companion;-><init>()V

    return-void
.end method

.method private final configureAccessibility(Landroid/widget/LinearLayout;Ljava/lang/StringBuilder;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 73
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v1, "EndActionsPlugin.sdk"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 75
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 74
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final configureViews(Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;Landroid/widget/RatingBar;Landroid/widget/TextView;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 6

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    iget-object v1, p1, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget v1, v1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->rating:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {p2, v1}, Landroid/widget/RatingBar;->setRating(F)V

    const/4 v1, 0x2

    .line 45
    invoke-static {p2, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    const/4 v2, 0x0

    .line 46
    invoke-virtual {p2, v2}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 49
    sget p2, Lcom/amazon/kindle/ea/R$string;->startactions_widget_header_stars_content_description:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget v5, v5, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->rating:F

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    .line 48
    invoke-virtual {p4, p2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object p2, p1, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget p2, p2, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->numberOfReviews:I

    const/4 v4, -0x1

    if-eq p2, v4, :cond_0

    .line 52
    sget v4, Lcom/amazon/kindle/ea/R$string;->startactions_widget_header_num_reviews:I

    new-array v5, v3, [Ljava/lang/Object;

    .line 53
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v2

    .line 52
    invoke-virtual {p4, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    sget p2, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {p2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    invoke-static {p3, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 56
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    sget p2, Lcom/amazon/kindle/ea/R$string;->startactions_widget_header_num_reviews_content_description:I

    new-array p3, v3, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget p1, p1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->numberOfReviews:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v2

    .line 58
    invoke-virtual {p4, p2, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "bookInfoContentDescription.toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final configure(Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;Landroid/widget/LinearLayout;Landroid/widget/RatingBar;Landroid/widget/TextView;Landroid/content/res/Resources;Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "def"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bookInfoView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stars"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numReviews"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resources"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "seeInStoreOnClickListener"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/amazon/readingactions/ui/widget/reviews/RatingReviewsBookInfoViewConfigurator$Companion;->configureViews(Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;Landroid/widget/RatingBar;Landroid/widget/TextView;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    sget p1, Lcom/amazon/kindle/ea/R$string;->startactions_widget_header_see_in_store_content_description:I

    invoke-virtual {p5, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {p0, p2, v0, p6}, Lcom/amazon/readingactions/ui/widget/reviews/RatingReviewsBookInfoViewConfigurator$Companion;->configureAccessibility(Landroid/widget/LinearLayout;Ljava/lang/StringBuilder;Landroid/view/View$OnClickListener;)V

    return-void
.end method
