.class public Lcom/amazon/startactions/ui/widget/HeaderWidget;
.super Lcom/amazon/startactions/ui/widget/WidgetBase;
.source "HeaderWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/startactions/ui/widget/HeaderWidget$CollapsingOnClickListener;,
        Lcom/amazon/startactions/ui/widget/HeaderWidget$ExpandingOnClickListener;,
        Lcom/amazon/startactions/ui/widget/HeaderWidget$BaseOnClickListener;,
        Lcom/amazon/startactions/ui/widget/HeaderWidget$ShareOnClickListener;,
        Lcom/amazon/startactions/ui/widget/HeaderWidget$SeeInStoreOnClickListener;
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


# direct methods
.method private constructor <init>(Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;-><init>(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/startactions/ui/widget/HeaderWidget;Landroid/view/View;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/HeaderWidget;->resetAccessibility(Landroid/view/View;)V

    return-void
.end method

.method private resetAccessibility(Landroid/view/View;)V
    .locals 2

    .line 405
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    const/4 v0, 0x0

    const/16 v1, 0x80

    .line 406
    invoke-static {p1, v1, v0}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    const/16 v1, 0x40

    .line 407
    invoke-static {p1, v1, v0}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    return-void
.end method

.method private shouldShowShareButton()Z
    .locals 1

    .line 395
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

.method public static tryCreate(Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;)Lcom/amazon/startactions/ui/widget/HeaderWidget;
    .locals 1

    .line 68
    new-instance v0, Lcom/amazon/startactions/ui/widget/HeaderWidget;

    invoke-direct {v0, p0}, Lcom/amazon/startactions/ui/widget/HeaderWidget;-><init>(Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;)V

    return-object v0
.end method


# virtual methods
.method protected createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    .line 80
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p2}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/ea/R$layout;->startactions_widget_header:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    sget v2, Lcom/amazon/kindle/ea/R$id;->header_title:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 87
    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    sget v3, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v3}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x2

    .line 89
    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 90
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 91
    sget v2, Lcom/amazon/kindle/ea/R$id;->header_sub_title:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 92
    iget-object v5, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v5, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v5, v5, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v5, v5, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    invoke-static {v5}, Lcom/amazon/ea/util/AuthorNameFormatterUtil;->formatAuthorList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 93
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    sget v6, Lcom/amazon/kindle/ea/R$array;->startactions_text_secondary_color:I

    invoke-static {v6}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 96
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v6, Lcom/amazon/kindle/ea/R$string;->startactions_widget_header_title_with_subtitle_content_description:I

    new-array v7, v3, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v8, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v8, v8, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v8, v8, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->title:Ljava/lang/String;

    aput-object v8, v7, v1

    aput-object v5, v7, v4

    invoke-virtual {v2, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v5, Lcom/amazon/kindle/ea/R$string;->startactions_widget_header_title_content_description:I

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v7, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v7, v7, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v7, v7, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->title:Ljava/lang/String;

    aput-object v7, v6, v1

    invoke-virtual {v2, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :goto_0
    sget v2, Lcom/amazon/kindle/ea/R$id;->store_link:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 108
    invoke-virtual {p0, v2}, Lcom/amazon/startactions/ui/widget/HeaderWidget;->setStoreLabelText(Landroid/widget/Button;)V

    .line 109
    sget v5, Lcom/amazon/kindle/ea/R$array;->startactions_text_button_text_color:I

    invoke-static {v5}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 110
    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 111
    new-instance v5, Lcom/amazon/startactions/ui/widget/HeaderWidget$SeeInStoreOnClickListener;

    iget-object v6, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v6, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v6, v6, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v6, v6, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    iget-object v7, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    .line 112
    invoke-interface {v7}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getWidgetRefTagFactory()Lcom/amazon/ea/reftag/WidgetRefTagFactory;

    move-result-object v7

    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getWidgetPlacementRefTag()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v9, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v9, v9, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/amazon/ea/reftag/WidgetRefTagFactory;->createRefTag(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/reftag/RefTag;

    move-result-object v7

    invoke-direct {v5, p0, v6, v7}, Lcom/amazon/startactions/ui/widget/HeaderWidget$SeeInStoreOnClickListener;-><init>(Lcom/amazon/startactions/ui/widget/HeaderWidget;Ljava/lang/String;Lcom/amazon/ea/reftag/RefTag;)V

    .line 113
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    sget v6, Lcom/amazon/kindle/ea/R$id;->share_button:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 117
    invoke-direct {p0}, Lcom/amazon/startactions/ui/widget/HeaderWidget;->shouldShowShareButton()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    .line 118
    invoke-static {v6, v3}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 119
    new-instance v7, Lcom/amazon/startactions/ui/widget/HeaderWidget$ShareOnClickListener;

    invoke-direct {v7, p0, v8}, Lcom/amazon/startactions/ui/widget/HeaderWidget$ShareOnClickListener;-><init>(Lcom/amazon/startactions/ui/widget/HeaderWidget;Lcom/amazon/startactions/ui/widget/HeaderWidget$1;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    const/16 v7, 0x8

    .line 121
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 123
    :goto_1
    sget v7, Lcom/amazon/kindle/ea/R$array;->startactions_text_button_text_color:I

    .line 124
    invoke-static {v7}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 123
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 125
    sget v7, Lcom/amazon/kindle/ea/R$array;->anyactions_share_button:I

    .line 126
    invoke-static {v7}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 125
    invoke-virtual {v6, v8, v8, v7, v8}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 130
    iget-object v6, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v6, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v6, v6, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget v6, v6, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->rating:F

    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_2

    .line 131
    sget v2, Lcom/amazon/kindle/ea/R$id;->stars:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RatingBar;

    .line 132
    iget-object v6, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v6, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v6, v6, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget v6, v6, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->rating:F

    invoke-virtual {v2, v6}, Landroid/widget/RatingBar;->setRating(F)V

    .line 133
    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 134
    invoke-virtual {v2, v1}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 136
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v6, Lcom/amazon/kindle/ea/R$string;->startactions_widget_header_stars_content_description:I

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v9, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v9, v9, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget v9, v9, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->rating:F

    float-to-int v9, v9

    .line 137
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v1

    .line 136
    invoke-virtual {v2, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget v2, v2, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->numberOfReviews:I

    const/4 v6, -0x1

    if-eq v2, v6, :cond_4

    .line 140
    sget v2, Lcom/amazon/kindle/ea/R$id;->num_reviews:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 141
    iget-object v6, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v7, Lcom/amazon/kindle/ea/R$string;->startactions_widget_header_num_reviews:I

    new-array v9, v4, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v10, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v10, v10, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget v10, v10, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->numberOfReviews:I

    .line 142
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v1

    .line 141
    invoke-virtual {v6, v7, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    sget v6, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v6}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 145
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v6, Lcom/amazon/kindle/ea/R$string;->startactions_widget_header_num_reviews_content_description:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v7, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v7, v7, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget v7, v7, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->numberOfReviews:I

    .line 148
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v1

    .line 147
    invoke-virtual {v2, v6, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 152
    :cond_2
    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 153
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    const/16 v9, 0xb

    if-lt v6, v7, :cond_3

    .line 154
    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_2

    .line 156
    :cond_3
    invoke-virtual {v4, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_2
    const/16 v6, 0x9

    .line 158
    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 159
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v4, Lcom/amazon/kindle/ea/R$string;->startactions_widget_header_see_in_store_content_description:I

    .line 163
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "accessibility"

    .line 168
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    .line 169
    sget v4, Lcom/amazon/kindle/ea/R$id;->bookInfo:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 170
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    move-object v5, v8

    :goto_4
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 175
    sget v0, Lcom/amazon/kindle/ea/R$id;->startactions_divider:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 176
    sget v2, Lcom/amazon/kindle/ea/R$array;->startactions_divider_line:I

    invoke-static {v2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 178
    sget v0, Lcom/amazon/kindle/ea/R$id;->expanding_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    .line 181
    sget v2, Lcom/amazon/kindle/ea/R$id;->see_less:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 182
    sget v4, Lcom/amazon/kindle/ea/R$array;->startactions_text_button_text_color:I

    .line 183
    invoke-static {v4}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 182
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 184
    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 185
    new-instance v3, Lcom/amazon/startactions/ui/widget/HeaderWidget$CollapsingOnClickListener;

    invoke-direct {v3, p0, v0, v2, p1}, Lcom/amazon/startactions/ui/widget/HeaderWidget$CollapsingOnClickListener;-><init>(Lcom/amazon/startactions/ui/widget/HeaderWidget;Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;Landroid/widget/Button;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v4, Lcom/amazon/kindle/ea/R$string;->startactions_widget_read_more:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/amazon/startactions/ui/widget/HeaderWidget$ExpandingOnClickListener;

    invoke-direct {v4, p0, v0, v2, p1}, Lcom/amazon/startactions/ui/widget/HeaderWidget$ExpandingOnClickListener;-><init>(Lcom/amazon/startactions/ui/widget/HeaderWidget;Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;Landroid/widget/Button;Landroid/view/View;)V

    invoke-virtual {v0, v3, v4}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->setTruncateLinkText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 190
    sget p1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {p1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->setTextWithLink(Ljava/lang/CharSequence;Z)V

    .line 192
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    :cond_6
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/GeneralWidgetActions;->RENDER:Lcom/amazon/ea/metrics/GeneralWidgetActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 197
    new-instance p1, Lcom/amazon/startactions/ui/widget/HeaderWidget$1;

    invoke-direct {p1, p0}, Lcom/amazon/startactions/ui/widget/HeaderWidget$1;-><init>(Lcom/amazon/startactions/ui/widget/HeaderWidget;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public initMetricsValues()V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    const-string v1, "HeaderWidgetSeeMoreClicked"

    .line 216
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v1, "HeaderWidgetSeeAllClicked"

    .line 219
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v1, "HeaderWidgetSeeLessClicked"

    .line 222
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 225
    invoke-direct {p0}, Lcom/amazon/startactions/ui/widget/HeaderWidget;->shouldShowShareButton()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HeaderWidgetShareClicked"

    .line 226
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    :cond_0
    const-string v0, "DisplayedHeaderWidget"

    .line 230
    invoke-static {v0, p0}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetSA(Ljava/lang/String;Lcom/amazon/startactions/ui/widget/Widget;)V

    return-void
.end method

.method public setStoreLabelText(Landroid/widget/Button;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow;->getSABookStoreLabelText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
