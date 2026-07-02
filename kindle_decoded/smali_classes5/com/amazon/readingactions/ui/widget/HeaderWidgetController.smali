.class public final Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;
.super Lcom/amazon/startactions/ui/widget/WidgetBase;
.source "HeaderWidgetController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$SeeInStoreOnClickListener;,
        Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$BaseOnClickListener;,
        Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$ExpandingOnClickListener;,
        Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$CollapsingOnClickListener;,
        Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$Companion;
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
.field public static final Companion:Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;->Companion:Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;)V
    .locals 1

    const-string v0, "def"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;-><init>(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    return-void
.end method

.method public static final synthetic access$getAnimationCoordinator$p(Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;)Lcom/amazon/ea/ui/AnimationCoordinator;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    return-object p0
.end method

.method public static final synthetic access$getDef$p(Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;)Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p0, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    return-object p0
.end method

.method public static final synthetic access$getReadingStreamsMetadataWithMetricsTag(Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;)Ljava/util/HashMap;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getResources$p(Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;)Landroid/content/res/Resources;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    return-object p0
.end method

.method public static final synthetic access$resetAccessibility(Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;Landroid/view/View;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;->resetAccessibility(Landroid/view/View;)V

    return-void
.end method

.method private final resetAccessibility(Landroid/view/View;)V
    .locals 2

    .line 255
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    const/4 v0, 0x0

    const/16 v1, 0x80

    .line 256
    invoke-static {p1, v1, v0}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    const/16 v1, 0x40

    .line 257
    invoke-static {p1, v1, v0}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    return-void
.end method


# virtual methods
.method protected createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 13

    const-string/jumbo p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    const-string v0, "controller"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/ea/R$layout;->reading_actions_header_widget:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget v2, v2, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->rating:F

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/high16 v5, -0x40800000    # -1.0f

    cmpg-float v2, v2, v5

    if-eqz v2, :cond_0

    .line 56
    sget v2, Lcom/amazon/kindle/ea/R$id;->stars:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string/jumbo v5, "view.findViewById(R.id.stars)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/RatingBar;

    .line 57
    iget-object v5, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v5, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v5, v5, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget v5, v5, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->rating:F

    invoke-virtual {v2, v5}, Landroid/widget/RatingBar;->setRating(F)V

    .line 58
    invoke-static {v2, v4}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 59
    invoke-virtual {v2, v1}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 61
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    .line 62
    sget v5, Lcom/amazon/kindle/ea/R$string;->startactions_widget_header_stars_content_description:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v8, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v8, v8, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget v8, v8, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->rating:F

    float-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    .line 61
    invoke-virtual {v2, v5, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget v2, v2, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->numberOfReviews:I

    if-eq v2, v3, :cond_0

    .line 65
    sget v2, Lcom/amazon/kindle/ea/R$id;->num_reviews:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string/jumbo v5, "view.findViewById(R.id.num_reviews)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    .line 66
    iget-object v5, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v7, Lcom/amazon/kindle/ea/R$string;->startactions_widget_header_num_reviews:I

    new-array v8, v6, [Ljava/lang/Object;

    .line 67
    iget-object v9, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v9, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v9, v9, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget v9, v9, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->numberOfReviews:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    .line 66
    invoke-virtual {v5, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    sget v5, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v5}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    invoke-static {v2, v4}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 70
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    .line 73
    sget v5, Lcom/amazon/kindle/ea/R$string;->startactions_widget_header_num_reviews_content_description:I

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v7, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v7, v7, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget v7, v7, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->numberOfReviews:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    .line 72
    invoke-virtual {v2, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_0
    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v5, "EndActionsPlugin.sdk"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v2

    const-class v6, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;

    invoke-interface {v2, v6}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v12

    .line 79
    sget v2, Lcom/amazon/kindle/ea/R$id;->buttons_container:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string/jumbo v6, "view.findViewById(R.id.buttons_container)"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/LinearLayout;

    const/16 v6, 0x11

    .line 80
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 83
    sget v2, Lcom/amazon/kindle/ea/R$id;->store_link:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string/jumbo v6, "view.findViewById(R.id.store_link)"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/Button;

    .line 84
    sget-object v6, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow;->Companion:Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow$Companion;

    iget-object v7, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    const-string/jumbo v8, "resources"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow$Companion;->getSABookStoreLabelText$default(Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow$Companion;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 85
    sget v6, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v6}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 86
    sget v6, Lcom/amazon/kindle/ea/R$array;->readingactions_default_button_background:I

    invoke-static {v6}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 87
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, 0x0

    invoke-direct {v6, v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    sget-object v3, Lcom/amazon/readingactions/ui/helpers/OrientationResizer;->Companion:Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;

    iget-object v6, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->context:Landroid/content/Context;

    invoke-virtual {v3, v6, v2}, Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;->setWidthOrientationListener(Landroid/content/Context;Landroid/view/View;)V

    .line 93
    new-instance v3, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$SeeInStoreOnClickListener;

    iget-object v6, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v6, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v6, v6, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v6, v6, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    const-string v7, "def.book.asin"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "messageQueue"

    invoke-static {v12, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, p0, v6, v12}, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$SeeInStoreOnClickListener;-><init>(Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;Ljava/lang/String;Lcom/amazon/kindle/krx/events/IMessageQueue;)V

    .line 94
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    sget v2, Lcom/amazon/kindle/ea/R$id;->share_button:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string/jumbo v6, "view.findViewById(R.id.share_button)"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/Button;

    const/16 v6, 0x8

    .line 98
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 100
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    .line 101
    sget v6, Lcom/amazon/kindle/ea/R$string;->startactions_widget_header_see_in_store_content_description:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "accessibility"

    .line 106
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    .line 107
    sget v5, Lcom/amazon/kindle/ea/R$id;->book_rating:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string/jumbo v6, "view.findViewById(R.id.book_rating)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/widget/LinearLayout;

    .line 108
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    sget v0, Lcom/amazon/kindle/ea/R$id;->startactions_divider:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v2, "view.findViewById(R.id.startactions_divider)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    sget v2, Lcom/amazon/kindle/ea/R$array;->startactions_divider_line:I

    invoke-static {v2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 116
    sget v0, Lcom/amazon/kindle/ea/R$id;->expanding_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v2, "view.findViewById(R.id.expanding_text)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    .line 119
    sget v2, Lcom/amazon/kindle/ea/R$id;->see_less:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string/jumbo v3, "view.findViewById(R.id.see_less)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v2

    check-cast v10, Landroid/widget/Button;

    .line 121
    sget v2, Lcom/amazon/kindle/ea/R$array;->readingactions_text_button_text_color:I

    invoke-static {v2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 120
    invoke-virtual {v10, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 122
    invoke-static {v10, v4}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 123
    new-instance v2, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$CollapsingOnClickListener;

    invoke-direct {v2, p0, v0, v10, p1}, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$CollapsingOnClickListener;-><init>(Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Landroid/widget/Button;Landroid/view/View;)V

    invoke-virtual {v10, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/amazon/kindle/ea/R$string;->startactions_widget_read_more:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    new-instance v3, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$ExpandingOnClickListener;

    move-object v7, v3

    move-object v8, p0

    move-object v9, v0

    move-object v11, p1

    invoke-direct/range {v7 .. v12}, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$ExpandingOnClickListener;-><init>(Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Landroid/widget/Button;Landroid/view/View;Lcom/amazon/kindle/krx/events/IMessageQueue;)V

    .line 126
    invoke-virtual {v0, v2, v3}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTruncateLinkText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 128
    sget p1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {p1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTextWithLink(Ljava/lang/CharSequence;Z)V

    .line 130
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    :cond_2
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/GeneralWidgetActions;->RENDER:Lcom/amazon/ea/metrics/GeneralWidgetActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 135
    new-instance p1, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$createView$1;

    invoke-direct {p1, p0}, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$createView$1;-><init>(Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string/jumbo p1, "view"

    .line 137
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2

    .line 106
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initMetricsValues()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-object v1, v0

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "DisplayedHeaderWidget"

    .line 145
    invoke-static {v2, v1, v0}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetEA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public prepareData()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->imageURL:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/startactions/storage/ImageDownloadManager;->prepare(Ljava/lang/String;)V

    return-void
.end method
