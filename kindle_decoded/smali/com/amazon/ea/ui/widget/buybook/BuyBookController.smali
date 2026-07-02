.class public Lcom/amazon/ea/ui/widget/buybook/BuyBookController;
.super Lcom/amazon/ea/ui/widget/WidgetController;
.source "BuyBookController.java"

# interfaces
.implements Lcom/amazon/ea/images/ImageDownloadListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.ui.widget.buybook.BuyBookController"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final inflater:Landroid/view/LayoutInflater;

.field private final isOneTapEnabled:Z

.field private final model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

.field private final recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

.field private final seeInStoreBookCoverListener:Landroid/view/View$OnClickListener;

.field private final seeInStoreListener:Landroid/view/View$OnClickListener;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ea/model/widget/buybook/BuyBookModel;Landroid/app/Activity;)V
    .locals 3

    .line 74
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/WidgetController;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    .line 76
    iput-object p2, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->activity:Landroid/app/Activity;

    .line 77
    invoke-static {}, Lcom/amazon/ea/debug/AnyActionsDebugSettings;->getOneTapNextInSeriesEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->isOneTapEnabled:Z

    .line 79
    iget-object v0, p1, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    iput-object v0, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    .line 80
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->inflater:Landroid/view/LayoutInflater;

    .line 82
    sget-object p2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p2

    const/4 v0, 0x1

    .line 83
    invoke-static {v0}, Lcom/amazon/ea/guava/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v0

    .line 84
    iget-object v1, p1, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    const-string v2, "MetricsTag"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v1, Lcom/amazon/ea/ui/widget/buybook/BuyBookController$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/amazon/ea/ui/widget/buybook/BuyBookController$1;-><init>(Lcom/amazon/ea/ui/widget/buybook/BuyBookController;Lcom/amazon/ea/model/widget/buybook/BuyBookModel;Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->seeInStoreListener:Landroid/view/View$OnClickListener;

    .line 108
    new-instance v1, Lcom/amazon/ea/ui/widget/buybook/BuyBookController$2;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/amazon/ea/ui/widget/buybook/BuyBookController$2;-><init>(Lcom/amazon/ea/ui/widget/buybook/BuyBookController;Lcom/amazon/ea/model/widget/buybook/BuyBookModel;Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->seeInStoreBookCoverListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/ea/ui/widget/buybook/BuyBookController;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->isOneTapEnabled:Z

    return p0
.end method

.method static synthetic access$200(Lcom/amazon/ea/ui/widget/buybook/BuyBookController;)Lcom/amazon/ea/sidecar/def/data/RecommendationData;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/ea/ui/widget/buybook/BuyBookController;)Lcom/amazon/ea/model/widget/buybook/BuyBookModel;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/ea/ui/widget/buybook/BuyBookController;)Landroid/view/View;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/ea/ui/widget/buybook/BuyBookController;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->seeInStoreBookCoverListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/ea/ui/widget/buybook/BuyBookController;)Landroid/app/Activity;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method private inflateLegacyView()V
    .locals 22

    move-object/from16 v0, p0

    .line 305
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/ea/R$id;->see_in_store:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/4 v2, 0x0

    .line 306
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->getSeeInStoreLabelText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v3, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->seeInStoreListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    sget-object v3, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v4, "PriceDisplayed"

    invoke-virtual {v3, v4, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 313
    iget-object v2, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    sget v3, Lcom/amazon/kindle/ea/R$id;->buy_now:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 314
    iget-object v3, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    sget v4, Lcom/amazon/kindle/ea/R$id;->endactions_ku_badge:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 315
    iget-object v4, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    sget v5, Lcom/amazon/kindle/ea/R$id;->endactions_pr_badge:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 316
    iget-object v5, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    sget v6, Lcom/amazon/kindle/ea/R$id;->cancel_purchase:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 317
    iget-object v6, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    sget v7, Lcom/amazon/kindle/ea/R$id;->purchase_failure:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 318
    iget-object v7, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    sget v8, Lcom/amazon/kindle/ea/R$id;->failure_asset:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 319
    iget-object v8, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    sget v9, Lcom/amazon/kindle/ea/R$id;->bottom_border:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 320
    iget-object v9, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-boolean v9, v9, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->buyButtonVisible:Z

    if-eqz v9, :cond_0

    .line 321
    new-instance v10, Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-direct {v10, v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;-><init>(Landroid/widget/Button;)V

    .line 322
    invoke-virtual {v10, v3, v4}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setBorrowView(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 323
    invoke-virtual {v10, v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setSeeInStoreButton(Landroid/widget/Button;)V

    .line 324
    invoke-virtual {v10, v5}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setCancelView(Landroid/widget/Button;)V

    .line 325
    invoke-virtual {v10, v8}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setSeparatorBar(Landroid/view/View;)V

    .line 326
    invoke-virtual {v10, v6}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setFailureView(Landroid/widget/Button;)V

    .line 327
    invoke-virtual {v10, v7}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setFailureAsset(Landroid/widget/ImageView;)V

    .line 328
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->activity:Landroid/app/Activity;

    .line 329
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/amazon/kindle/ea/R$color;->endactions_amazon_white:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setStatusMessageColor(I)V

    const/4 v1, 0x1

    .line 331
    invoke-static {v1}, Lcom/amazon/ea/guava/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v1

    .line 332
    iget-object v3, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object v3, v3, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    const-string v4, "MetricsTag"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    new-instance v11, Lcom/amazon/ea/util/EABookShell;

    iget-object v3, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object v3, v3, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    invoke-direct {v11, v3}, Lcom/amazon/ea/util/EABookShell;-><init>(Lcom/amazon/ea/sidecar/def/data/RecommendationData;)V

    .line 335
    iget-object v3, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-boolean v12, v3, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->buyInStore:Z

    iget-boolean v13, v3, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->oneClickBorrowSupported:Z

    iget-object v15, v3, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    iget-object v4, v3, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    .line 337
    invoke-virtual {v3}, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->getPrepareBuyRefTagFeatureId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    iget-object v3, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object v4, v3, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    .line 338
    invoke-virtual {v3}, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->getBuyNowRefTagFeatureId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    iget-object v3, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object v4, v3, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    .line 339
    invoke-virtual {v3}, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->getUnBuyAsinRefTagFeaturedId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    iget-object v3, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object v4, v3, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    .line 340
    invoke-virtual {v3}, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->getBorrowRefTagFeaturedId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v14, "BuyBookWidget"

    const-string v20, "AnyActionsBuyBookWidget"

    move-object/from16 v21, v1

    .line 335
    invoke-virtual/range {v10 .. v21}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->initialize(Lcom/amazon/ea/util/EABookShell;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;

    .line 343
    invoke-virtual {v0, v2}, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->checkPaymentFlows(Landroid/widget/Button;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 345
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 348
    :goto_0
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object v2, v1, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    iget-object v1, v1, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    const-string v3, "DisplayedBuyBookWidget"

    invoke-static {v3, v2, v1}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetEA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private inflateOneTapView(Landroid/view/View;)V
    .locals 32

    move-object/from16 v0, p0

    .line 218
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/ea/R$id;->see_in_store_one_tap:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 219
    iget-object v2, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    sget v3, Lcom/amazon/kindle/ea/R$id;->see_in_store_one_tap_chevron:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->getSeeInStoreLabelText()Ljava/lang/String;

    move-result-object v3

    .line 221
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v3, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->seeInStoreListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v3, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->seeInStoreListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    sget-object v3, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v4, "PriceDisplayed"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 229
    iget-object v3, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    sget v4, Lcom/amazon/kindle/ea/R$id;->buy_now_one_tap:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 230
    iget-object v4, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    sget v5, Lcom/amazon/kindle/ea/R$id;->read_now_one_tap:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 231
    iget-object v5, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    sget v6, Lcom/amazon/kindle/ea/R$id;->add_to_lib_one_tap:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 232
    iget-object v6, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    sget v7, Lcom/amazon/kindle/ea/R$id;->in_your_library:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 233
    iget-object v7, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    sget v8, Lcom/amazon/kindle/ea/R$id;->save_to_lib_check_mark:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 234
    iget-object v8, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    sget v9, Lcom/amazon/kindle/ea/R$id;->endactions_ku_badge_one_tap:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 235
    iget-object v9, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    sget v10, Lcom/amazon/kindle/ea/R$id;->ku_pr_badge_text_one_tap:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 236
    iget-object v10, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    sget v11, Lcom/amazon/kindle/ea/R$id;->endactions_pr_badge_one_tap:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 237
    iget-object v11, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    sget v12, Lcom/amazon/kindle/ea/R$id;->buy_success_onetap_toast:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 238
    iget-object v12, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    sget v13, Lcom/amazon/kindle/ea/R$id;->buy_success_onetap_checkmark:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 239
    iget-object v13, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    sget v14, Lcom/amazon/kindle/ea/R$id;->cancel_purchase_one_tap:I

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 240
    iget-object v14, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    sget v15, Lcom/amazon/kindle/ea/R$id;->cancel_onetap_complete:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 241
    iget-object v15, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    move-object/from16 v16, v13

    sget v13, Lcom/amazon/kindle/ea/R$id;->cancel_onetap_checkmark:I

    invoke-virtual {v15, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 242
    iget-object v15, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    move-object/from16 v17, v10

    sget v10, Lcom/amazon/kindle/ea/R$id;->purchase_failure_one_tap:I

    invoke-virtual {v15, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 243
    iget-object v15, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    move-object/from16 v18, v10

    sget v10, Lcom/amazon/kindle/ea/R$id;->failure_asset_one_tap:I

    invoke-virtual {v15, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 244
    iget-object v15, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    move-object/from16 v19, v10

    sget v10, Lcom/amazon/kindle/ea/R$id;->bottom_border:I

    invoke-virtual {v15, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 247
    sget v15, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_KU_badge:I

    invoke-static {v15}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 248
    sget v15, Lcom/amazon/kindle/ea/R$array;->endations_onetap_KU_badge_text_color:I

    invoke-static {v15}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v15

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    sget v15, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_see_in_store_text_color:I

    invoke-static {v15}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v15

    invoke-virtual {v1, v15}, Landroid/widget/Button;->setTextColor(I)V

    .line 250
    sget v15, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_see_in_store_chevron:I

    invoke-static {v15}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    sget v15, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_read_button_bg:I

    invoke-static {v15}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedResourceId(I)I

    move-result v15

    invoke-virtual {v4, v15}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 252
    sget v15, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_read_button_text_color:I

    invoke-static {v15}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v15

    invoke-virtual {v4, v15}, Landroid/widget/Button;->setTextColor(I)V

    .line 253
    sget v15, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_buy_button_bg:I

    invoke-static {v15}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedResourceId(I)I

    move-result v15

    invoke-virtual {v3, v15}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 254
    sget v15, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_buy_button_text_color:I

    invoke-static {v15}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v15

    invoke-virtual {v3, v15}, Landroid/widget/Button;->setTextColor(I)V

    .line 255
    sget v15, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_add_to_lib_button_bg:I

    invoke-static {v15}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedResourceId(I)I

    move-result v15

    invoke-virtual {v5, v15}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 256
    sget v15, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_add_to_lib_button_text_color:I

    invoke-static {v15}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v15

    invoke-virtual {v5, v15}, Landroid/widget/Button;->setTextColor(I)V

    .line 257
    sget v15, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_in_you_lib_text:I

    invoke-static {v15}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v15

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 258
    sget v15, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_checkmark:I

    invoke-static {v15}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    sget v15, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_buy_success_toast_text:I

    invoke-static {v15}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v15

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 260
    sget v15, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_checkmark:I

    invoke-static {v15}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 261
    sget v15, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_buy_cancel_complete_text:I

    invoke-static {v15}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 262
    sget v15, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_checkmark:I

    invoke-static {v15}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    iget-object v15, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-boolean v15, v15, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->buyButtonVisible:Z

    if-eqz v15, :cond_0

    .line 265
    new-instance v15, Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-direct {v15, v3}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;-><init>(Landroid/widget/Button;)V

    .line 266
    invoke-virtual {v15, v5, v6, v7}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setAddToLibViewSet(Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 267
    invoke-virtual {v15, v4}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setReadButton(Landroid/widget/Button;)V

    move-object/from16 v4, v17

    .line 268
    invoke-virtual {v15, v8, v4, v9}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setBorrowView(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    move-object/from16 v4, p1

    .line 269
    invoke-virtual {v15, v4}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setCurrentBookView(Landroid/view/View;)V

    .line 270
    invoke-virtual {v15, v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setSeeInStoreButton(Landroid/widget/Button;)V

    .line 271
    invoke-virtual {v15, v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setSeeInStoreChevron(Landroid/widget/ImageView;)V

    .line 272
    invoke-virtual {v15, v11, v12}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setBuySuccessView(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    move-object/from16 v1, v16

    .line 273
    invoke-virtual {v15, v1, v14, v13}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setCancelView(Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 274
    invoke-virtual {v15, v10}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setSeparatorBar(Landroid/view/View;)V

    move-object/from16 v10, v18

    .line 275
    invoke-virtual {v15, v10}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setFailureView(Landroid/widget/Button;)V

    move-object/from16 v10, v19

    .line 276
    invoke-virtual {v15, v10}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setFailureAsset(Landroid/widget/ImageView;)V

    .line 277
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->activity:Landroid/app/Activity;

    .line 278
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/ea/R$color;->endactions_amazon_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v15, v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setStatusMessageColor(I)V

    .line 279
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->activity:Landroid/app/Activity;

    .line 280
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/ea/R$color;->aa_amazon_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v15, v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setActionMessageColor(I)V

    .line 281
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->activity:Landroid/app/Activity;

    .line 282
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/ea/R$color;->anyactions_amazon_orange_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v15, v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setErrorMessageColor(I)V

    const/4 v1, 0x1

    .line 283
    invoke-static {v1}, Lcom/amazon/ea/guava/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v1

    .line 284
    iget-object v2, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object v2, v2, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    const-string v4, "MetricsTag"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    new-instance v2, Lcom/amazon/ea/util/EABookShell;

    iget-object v4, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object v4, v4, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    invoke-direct {v2, v4}, Lcom/amazon/ea/util/EABookShell;-><init>(Lcom/amazon/ea/sidecar/def/data/RecommendationData;)V

    .line 286
    iget-object v4, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-boolean v5, v4, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->buyInStore:Z

    iget-boolean v6, v4, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->oneClickBorrowSupported:Z

    iget-object v7, v4, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    iget-object v8, v4, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    .line 288
    invoke-virtual {v4}, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->getPrepareBuyRefTagFeatureId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    iget-object v4, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object v8, v4, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    .line 289
    invoke-virtual {v4}, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->getBuyNowRefTagFeatureId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    iget-object v4, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object v8, v4, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    .line 290
    invoke-virtual {v4}, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->getUnBuyAsinRefTagFeaturedId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    iget-object v4, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object v8, v4, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    .line 291
    invoke-virtual {v4}, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->getBorrowRefTagFeaturedId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v24, "BuyBookWidget"

    const-string v30, "AnyActionsBuyBookWidget"

    move-object/from16 v20, v15

    move-object/from16 v21, v2

    move/from16 v22, v5

    move/from16 v23, v6

    move-object/from16 v25, v7

    move-object/from16 v31, v1

    .line 286
    invoke-virtual/range {v20 .. v31}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->initialize(Lcom/amazon/ea/util/EABookShell;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;

    .line 294
    invoke-virtual {v0, v3}, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->checkPaymentFlows(Landroid/widget/Button;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 296
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 299
    :goto_0
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object v2, v1, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    iget-object v1, v1, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    const-string v3, "DisplayedBuyBookWidget"

    invoke-static {v3, v2, v1}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetEA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkPaymentFlows(Landroid/widget/Button;)V
    .locals 1

    .line 365
    invoke-static {}, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 366
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public getSeeInStoreLabelText()Ljava/lang/String;
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object v0, v0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->seeInStoreButtonText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object v1, v1, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->seeInStoreButtonText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow;->getEABookStoreLabelText(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow;->getEABookStoreLabelText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getView(Landroid/view/ViewGroup;Lcom/amazon/ea/model/widget/WidgetDisplayFormat;Lcom/amazon/ea/ui/AnimationCoordinator;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 133
    sget-object p3, Lcom/amazon/ea/model/widget/WidgetDisplayFormat;->FIXED_WIDTH:Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    const/4 p4, 0x0

    if-ne p3, p2, :cond_0

    .line 134
    iget-object p2, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->inflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/amazon/kindle/ea/R$layout;->endactions_buy_book_fixed_width:I

    invoke-virtual {p2, p3, p1, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    goto :goto_0

    .line 136
    :cond_0
    iget-object p2, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->inflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/amazon/kindle/ea/R$layout;->endactions_buy_book:I

    invoke-virtual {p2, p3, p1, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    .line 140
    :goto_0
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object p1, p1, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->title:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 141
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    sget p2, Lcom/amazon/kindle/ea/R$id;->endactions_header_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 142
    iget-object p2, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object p2, p2, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object p3, p3, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->title:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ","

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 148
    :cond_1
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    sget p2, Lcom/amazon/kindle/ea/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    iget-object p2, p2, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 152
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    sget p2, Lcom/amazon/kindle/ea/R$id;->author:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 153
    iget-object p2, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    iget-object p2, p2, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    invoke-static {p2}, Lcom/amazon/ea/util/AuthorNameFormatterUtil;->formatAuthorList(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    :cond_2
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    .line 159
    iget-object p2, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    sget p3, Lcom/amazon/kindle/ea/R$id;->downloaded_cover:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 160
    iget-object p3, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-boolean p3, p3, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->isCurrentBook:Z

    if-eqz p3, :cond_3

    if-eqz p1, :cond_3

    .line 161
    sget-object p3, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getCoverManager()Lcom/amazon/kindle/krx/cover/ICoverManager;

    move-result-object p3

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    sget-object p4, Lcom/amazon/kindle/krx/cover/ICoverManager$CoverImageType;->MEDIUM:Lcom/amazon/kindle/krx/cover/ICoverManager$CoverImageType;

    invoke-interface {p3, p1, p4}, Lcom/amazon/kindle/krx/cover/ICoverManager;->getCoverAsBitmap(Ljava/lang/String;Lcom/amazon/kindle/krx/cover/ICoverManager$CoverImageType;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 163
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x2

    .line 164
    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 165
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->seeInStoreBookCoverListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    sget p3, Lcom/amazon/kindle/ea/R$id;->progress_bar:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 168
    :cond_3
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->imageURL:Ljava/lang/String;

    iget-object p3, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget p3, p3, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->imageHeight:I

    invoke-static {p1, p3}, Lcom/amazon/ea/util/StyleCodeUtil;->addHeightParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-static {p1, p0}, Lcom/amazon/startactions/storage/ImageDownloadManager;->get(Ljava/lang/String;Lcom/amazon/ea/images/ImageDownloadListener;)V

    .line 172
    :goto_1
    iget-boolean p1, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->isOneTapEnabled:Z

    if-eqz p1, :cond_4

    .line 173
    invoke-direct {p0, p2}, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->inflateOneTapView(Landroid/view/View;)V

    goto :goto_2

    .line 175
    :cond_4
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->inflateLegacyView()V

    .line 178
    :goto_2
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object p1, p1, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    sget-object p2, Lcom/amazon/ea/metrics/GeneralWidgetActions;->RENDER:Lcom/amazon/ea/metrics/GeneralWidgetActions;

    invoke-static {p1, p2}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 180
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    new-instance p2, Lcom/amazon/ea/ui/widget/buybook/BuyBookController$3;

    invoke-direct {p2, p0}, Lcom/amazon/ea/ui/widget/buybook/BuyBookController$3;-><init>(Lcom/amazon/ea/ui/widget/buybook/BuyBookController;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->view:Landroid/view/View;

    return-object p1
.end method

.method public onCompletion(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 192
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAsyncTaskExecutor()Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    move-result-object p1

    new-instance v0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController$4;

    invoke-direct {v0, p0, p2}, Lcom/amazon/ea/ui/widget/buybook/BuyBookController$4;-><init>(Lcom/amazon/ea/ui/widget/buybook/BuyBookController;Landroid/graphics/Bitmap;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;->postOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
