.class public final Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;
.super Lcom/amazon/ea/ui/widget/WidgetController;
.source "FeaturedBookWidgetController.kt"

# interfaces
.implements Lcom/amazon/ea/images/ImageDownloadListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFeaturedBookWidgetController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeaturedBookWidgetController.kt\ncom/amazon/readingactions/ui/widget/FeaturedBookWidgetController\n*L\n1#1,186:1\n*E\n"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final activity:Landroid/app/Activity;

.field private inflater:Landroid/view/LayoutInflater;

.field private learnMoreListener:Landroid/view/View$OnClickListener;

.field private final model:Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

.field private final purchaseInfo:Lcom/amazon/ea/util/StoreManager$PurchaseInfo;

.field private recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

.field private seeInStoreBookCoverListener:Landroid/view/View$OnClickListener;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/WidgetController;-><init>()V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->model:Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    .line 48
    const-class p1, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->TAG:Ljava/lang/String;

    .line 50
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->model:Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    iget-object p1, p1, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    const-string p2, "model.recommendation"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    .line 51
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const-string p2, "activity.layoutInflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->inflater:Landroid/view/LayoutInflater;

    .line 63
    new-instance p1, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController$1;

    invoke-direct {p1, p0}, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController$1;-><init>(Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;)V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->learnMoreListener:Landroid/view/View$OnClickListener;

    .line 71
    new-instance p1, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController$2;

    invoke-direct {p1, p0}, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController$2;-><init>(Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;)V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->seeInStoreBookCoverListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static final synthetic access$getActivity$p(Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;)Landroid/app/Activity;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public static final synthetic access$getModel$p(Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;)Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->model:Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    return-object p0
.end method

.method public static final synthetic access$getRecommendation$p(Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;)Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    return-object p0
.end method

.method public static final synthetic access$getSeeInStoreBookCoverListener$p(Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->seeInStoreBookCoverListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getView$p(Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;)Landroid/view/View;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->view:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public getView(Landroid/view/ViewGroup;Lcom/amazon/ea/model/widget/WidgetDisplayFormat;Lcom/amazon/ea/ui/AnimationCoordinator;Landroid/os/Bundle;)Landroid/view/View;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "parent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "format"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "animationCoordinator"

    move-object/from16 v3, p3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v2, v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/amazon/kindle/ea/R$layout;->readingactions_widget_ea_featured_book:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->view:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    .line 87
    sget v3, Lcom/amazon/kindle/ea/R$id;->title:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type android.widget.TextView"

    if-eqz v1, :cond_1b

    check-cast v1, Landroid/widget/TextView;

    .line 88
    iget-object v5, v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v5, v5, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->title:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 92
    iget-object v1, v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->view:Landroid/view/View;

    if-eqz v1, :cond_1

    sget v5, Lcom/amazon/kindle/ea/R$id;->author:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/widget/TextView;

    .line 93
    iget-object v5, v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v5, v5, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    invoke-static {v5}, Lcom/amazon/ea/util/AuthorNameFormatterUtil;->formatAuthorList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 92
    :cond_0
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 99
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget v1, v1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->rating:F

    const/4 v5, 0x1

    int-to-float v6, v5

    cmpl-float v6, v1, v6

    if-ltz v6, :cond_7

    const/4 v6, 0x5

    int-to-float v6, v6

    cmpg-float v1, v1, v6

    if-gtz v1, :cond_7

    .line 100
    iget-object v1, v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->view:Landroid/view/View;

    if-eqz v1, :cond_6

    sget v6, Lcom/amazon/kindle/ea/R$id;->featured_rating_bar:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Landroid/widget/RatingBar;

    .line 101
    iget-object v6, v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget v6, v6, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->rating:F

    invoke-virtual {v1, v6}, Landroid/widget/RatingBar;->setRating(F)V

    .line 102
    invoke-virtual {v1, v4}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 103
    iget-object v1, v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget v1, v1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->numberOfReviews:I

    if-ltz v1, :cond_7

    .line 104
    iget-object v1, v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->view:Landroid/view/View;

    if-eqz v1, :cond_4

    sget v6, Lcom/amazon/kindle/ea/R$id;->number_of_reviews:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Landroid/widget/TextView;

    .line 105
    sget-object v6, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget v7, v7, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->numberOfReviews:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    const-string v7, "(%d)"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "java.lang.String.format(format, *args)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 104
    :cond_3
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 100
    :cond_5
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type android.widget.RatingBar"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 111
    :cond_7
    :goto_1
    iget-object v1, v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->view:Landroid/view/View;

    if-eqz v1, :cond_1a

    sget v4, Lcom/amazon/kindle/ea/R$id;->featured_book_description_text:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_19

    check-cast v1, Landroid/widget/TextView;

    .line 112
    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_8

    .line 113
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 115
    :cond_8
    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v6, v3, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    const-string/jumbo v3, "recommendation.description"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0xa

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :goto_2
    iget-object v1, v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->imageURL:Ljava/lang/String;

    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->model:Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    iget v3, v3, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->imageHeight:I

    invoke-static {v1, v3}, Lcom/amazon/ea/util/StyleCodeUtil;->addHeightParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-static {v1, v0}, Lcom/amazon/startactions/storage/ImageDownloadManager;->get(Ljava/lang/String;Lcom/amazon/ea/images/ImageDownloadListener;)V

    .line 122
    iget-object v1, v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->view:Landroid/view/View;

    if-eqz v1, :cond_18

    sget v3, Lcom/amazon/kindle/ea/R$id;->learn_more:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type android.widget.Button"

    if-eqz v1, :cond_17

    check-cast v1, Landroid/widget/Button;

    .line 125
    iget-object v6, v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->view:Landroid/view/View;

    if-eqz v6, :cond_16

    sget v7, Lcom/amazon/kindle/ea/R$id;->buy_now:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_15

    check-cast v6, Landroid/widget/Button;

    .line 126
    iget-object v7, v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->view:Landroid/view/View;

    if-eqz v7, :cond_14

    sget v8, Lcom/amazon/kindle/ea/R$id;->endactions_ku_badge:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type android.widget.ImageView"

    if-eqz v7, :cond_13

    check-cast v7, Landroid/widget/ImageView;

    .line 127
    iget-object v9, v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->view:Landroid/view/View;

    if-eqz v9, :cond_12

    sget v10, Lcom/amazon/kindle/ea/R$id;->endactions_pr_badge:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_11

    check-cast v9, Landroid/widget/ImageView;

    .line 128
    iget-object v10, v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->view:Landroid/view/View;

    if-eqz v10, :cond_10

    sget v11, Lcom/amazon/kindle/ea/R$id;->cancel_purchase:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_f

    check-cast v10, Landroid/widget/Button;

    .line 129
    iget-object v11, v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->view:Landroid/view/View;

    if-eqz v11, :cond_e

    sget v12, Lcom/amazon/kindle/ea/R$id;->purchase_failure:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_d

    check-cast v11, Landroid/widget/Button;

    .line 130
    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->view:Landroid/view/View;

    if-eqz v3, :cond_c

    sget v2, Lcom/amazon/kindle/ea/R$id;->failure_asset:I

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_b

    check-cast v2, Landroid/widget/ImageView;

    .line 131
    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->model:Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    iget-boolean v3, v3, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->buyButtonVisible:Z

    if-eqz v3, :cond_9

    .line 132
    new-instance v12, Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-direct {v12, v6}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;-><init>(Landroid/widget/Button;)V

    .line 133
    invoke-virtual {v12, v7, v9}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setBorrowView(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 134
    invoke-virtual {v12, v10}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setCancelView(Landroid/widget/Button;)V

    .line 135
    invoke-virtual {v12, v11}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setFailureView(Landroid/widget/Button;)V

    .line 136
    invoke-virtual {v12, v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setFailureAsset(Landroid/widget/ImageView;)V

    .line 138
    iget-object v2, v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/ea/R$color;->endactions_amazon_white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setStatusMessageColor(I)V

    .line 140
    invoke-static {v5}, Lcom/amazon/ea/guava/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v3, "rsMetadata"

    .line 141
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->model:Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    iget-object v3, v3, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    const-string v4, "MetricsTag"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v13, Lcom/amazon/ea/util/EABookShell;

    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->model:Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    iget-object v3, v3, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    invoke-direct {v13, v3}, Lcom/amazon/ea/util/EABookShell;-><init>(Lcom/amazon/ea/sidecar/def/data/RecommendationData;)V

    .line 143
    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->model:Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    iget-boolean v14, v3, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->buyInStore:Z

    iget-boolean v15, v3, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->oneClickBorrowSupported:Z

    .line 144
    iget-object v4, v3, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    .line 145
    iget-object v5, v3, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->getPrepareBuyRefTagFeatureId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 146
    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->model:Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    iget-object v5, v3, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->getBuyNowRefTagFeatureId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 147
    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->model:Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    iget-object v5, v3, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->getUnBuyAsinRefTagFeaturedId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 148
    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->model:Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    iget-object v5, v3, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->getBorrowRefTagFeaturedId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v16, "FeaturedBookWidget"

    const-string v22, "AnyActionsFeaturedBookWidget"

    move-object/from16 v17, v4

    move-object/from16 v23, v2

    .line 143
    invoke-virtual/range {v12 .. v23}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->initialize(Lcom/amazon/ea/util/EABookShell;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;

    goto :goto_3

    .line 152
    :cond_9
    invoke-virtual {v6, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 156
    :goto_3
    iget-object v2, v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->learnMoreListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v1, v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->model:Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    iget-object v2, v1, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    iget-object v1, v1, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    const-string v3, "DisplayedFeaturedBookWidget"

    .line 158
    invoke-static {v3, v2, v1}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetEA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v1, v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->view:Landroid/view/View;

    if-eqz v1, :cond_a

    return-object v1

    :cond_a
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type android.view.View"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_b
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v8}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 129
    :cond_d
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 128
    :cond_f
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 127
    :cond_11
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v8}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 126
    :cond_13
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v8}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 125
    :cond_15
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 122
    :cond_17
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 111
    :cond_19
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 87
    :cond_1b
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2
.end method

.method public onCompletion(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v0, "EndActionsPlugin.sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    const-string v0, "EndActionsPlugin.sdk.applicationManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAsyncTaskExecutor()Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    move-result-object p1

    new-instance v0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController$onCompletion$1;

    invoke-direct {v0, p0, p2}, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController$onCompletion$1;-><init>(Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;Landroid/graphics/Bitmap;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;->postOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
