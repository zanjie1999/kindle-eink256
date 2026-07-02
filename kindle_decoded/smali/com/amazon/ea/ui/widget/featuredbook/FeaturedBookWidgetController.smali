.class public Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;
.super Lcom/amazon/ea/ui/widget/WidgetController;
.source "FeaturedBookWidgetController.java"

# interfaces
.implements Lcom/amazon/ea/images/ImageDownloadListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.ui.widget.featuredbook.FeaturedBookWidgetController"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final inflater:Landroid/view/LayoutInflater;

.field private final learnMoreListener:Landroid/view/View$OnClickListener;

.field private final model:Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

.field private purchaseInfo:Lcom/amazon/ea/util/StoreManager$PurchaseInfo;

.field private final recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

.field private final seeInStoreBookCoverListener:Landroid/view/View$OnClickListener;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;Landroid/app/Activity;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/WidgetController;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->model:Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    .line 67
    iput-object p2, p0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->activity:Landroid/app/Activity;

    .line 69
    iget-object v0, p1, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iput-object v0, p0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    .line 70
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->inflater:Landroid/view/LayoutInflater;

    .line 73
    new-instance p2, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController$1;

    invoke-direct {p2, p0, p1}, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController$1;-><init>(Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;)V

    iput-object p2, p0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->learnMoreListener:Landroid/view/View$OnClickListener;

    .line 84
    new-instance p2, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController$2;

    invoke-direct {p2, p0, p1}, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController$2;-><init>(Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;)V

    iput-object p2, p0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->seeInStoreBookCoverListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;)Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;)Landroid/view/View;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->seeInStoreBookCoverListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;)Landroid/app/Activity;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->activity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public getView(Landroid/view/ViewGroup;Lcom/amazon/ea/model/widget/WidgetDisplayFormat;Lcom/amazon/ea/ui/AnimationCoordinator;Landroid/os/Bundle;)Landroid/view/View;
    .locals 23

    move-object/from16 v0, p0

    .line 101
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->inflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/amazon/kindle/ea/R$layout;->endactions_featured_book:I

    const/4 v3, 0x0

    move-object/from16 v4, p1

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->view:Landroid/view/View;

    .line 104
    iget-object v2, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->model:Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    iget-object v2, v2, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->title:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 105
    sget v2, Lcom/amazon/kindle/ea/R$id;->endactions_header_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 106
    iget-object v2, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->model:Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    iget-object v2, v2, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->model:Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    iget-object v4, v4, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 112
    :cond_0
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->view:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/ea/R$id;->title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 113
    iget-object v2, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->view:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/ea/R$id;->author:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 118
    iget-object v2, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    invoke-static {v2}, Lcom/amazon/ea/util/AuthorNameFormatterUtil;->formatAuthorList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    :cond_1
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget v1, v1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->rating:F

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_2

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    .line 125
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->view:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/ea/R$id;->featured_rating_bar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RatingBar;

    .line 126
    iget-object v2, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget v2, v2, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->rating:F

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 127
    invoke-virtual {v1, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 128
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget v1, v1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->numberOfReviews:I

    if-ltz v1, :cond_2

    .line 129
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->view:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/ea/R$id;->number_of_reviews:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-array v2, v4, [Ljava/lang/Object;

    .line 130
    iget-object v5, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget v5, v5, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->numberOfReviews:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v5, "(%d)"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    :cond_2
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->view:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/ea/R$id;->featured_book_description_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 137
    iget-object v2, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_3

    .line 138
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 140
    :cond_3
    iget-object v2, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    const/16 v5, 0xa

    const/16 v6, 0x20

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :goto_0
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->imageURL:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->model:Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    iget v2, v2, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->imageHeight:I

    invoke-static {v1, v2}, Lcom/amazon/ea/util/StyleCodeUtil;->addHeightParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-static {v1, v0}, Lcom/amazon/startactions/storage/ImageDownloadManager;->get(Ljava/lang/String;Lcom/amazon/ea/images/ImageDownloadListener;)V

    .line 147
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->view:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/ea/R$id;->learn_more:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 150
    iget-object v2, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->view:Landroid/view/View;

    sget v5, Lcom/amazon/kindle/ea/R$id;->buy_now:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 151
    iget-object v5, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->view:Landroid/view/View;

    sget v6, Lcom/amazon/kindle/ea/R$id;->endactions_ku_badge:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 152
    iget-object v6, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->view:Landroid/view/View;

    sget v7, Lcom/amazon/kindle/ea/R$id;->endactions_pr_badge:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 153
    iget-object v7, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->view:Landroid/view/View;

    sget v8, Lcom/amazon/kindle/ea/R$id;->cancel_purchase:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 154
    iget-object v8, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->view:Landroid/view/View;

    sget v9, Lcom/amazon/kindle/ea/R$id;->purchase_failure:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 155
    iget-object v9, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->view:Landroid/view/View;

    sget v10, Lcom/amazon/kindle/ea/R$id;->failure_asset:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 156
    iget-object v10, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->model:Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    iget-boolean v10, v10, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->buyButtonVisible:Z

    if-eqz v10, :cond_4

    .line 157
    new-instance v11, Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-direct {v11, v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;-><init>(Landroid/widget/Button;)V

    .line 158
    invoke-virtual {v11, v5, v6}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setBorrowView(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 159
    invoke-virtual {v11, v7}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setCancelView(Landroid/widget/Button;)V

    .line 160
    invoke-virtual {v11, v8}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setFailureView(Landroid/widget/Button;)V

    .line 161
    invoke-virtual {v11, v9}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setFailureAsset(Landroid/widget/ImageView;)V

    .line 162
    iget-object v2, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->activity:Landroid/app/Activity;

    .line 163
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/ea/R$color;->endactions_amazon_white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setStatusMessageColor(I)V

    .line 165
    invoke-static {v4}, Lcom/amazon/ea/guava/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v2

    .line 166
    iget-object v3, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->model:Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    iget-object v3, v3, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    const-string v4, "MetricsTag"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    new-instance v12, Lcom/amazon/ea/util/EABookShell;

    iget-object v3, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->model:Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    iget-object v3, v3, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    invoke-direct {v12, v3}, Lcom/amazon/ea/util/EABookShell;-><init>(Lcom/amazon/ea/sidecar/def/data/RecommendationData;)V

    .line 168
    iget-object v3, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->model:Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    iget-boolean v13, v3, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->buyInStore:Z

    iget-boolean v14, v3, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->oneClickBorrowSupported:Z

    iget-object v4, v3, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    iget-object v5, v3, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    .line 170
    invoke-virtual {v3}, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->getPrepareBuyRefTagFeatureId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    iget-object v3, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->model:Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    iget-object v5, v3, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    .line 171
    invoke-virtual {v3}, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->getBuyNowRefTagFeatureId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    iget-object v3, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->model:Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    iget-object v5, v3, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    .line 172
    invoke-virtual {v3}, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->getUnBuyAsinRefTagFeaturedId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    iget-object v3, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->model:Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    iget-object v5, v3, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    .line 173
    invoke-virtual {v3}, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->getBorrowRefTagFeaturedId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v15, "FeaturedBookWidget"

    const-string v21, "AnyActionsFeaturedBookWidget"

    move-object/from16 v16, v4

    move-object/from16 v22, v2

    .line 168
    invoke-virtual/range {v11 .. v22}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->initialize(Lcom/amazon/ea/util/EABookShell;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;

    goto :goto_1

    .line 177
    :cond_4
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 181
    :goto_1
    iget-object v2, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->learnMoreListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->model:Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    iget-object v2, v1, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    iget-object v1, v1, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    const-string v3, "DisplayedFeaturedBookWidget"

    invoke-static {v3, v2, v1}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetEA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->view:Landroid/view/View;

    return-object v1
.end method

.method public onCompletion(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 191
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAsyncTaskExecutor()Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    move-result-object p1

    new-instance v0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController$3;

    invoke-direct {v0, p0, p2}, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController$3;-><init>(Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;Landroid/graphics/Bitmap;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;->postOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
