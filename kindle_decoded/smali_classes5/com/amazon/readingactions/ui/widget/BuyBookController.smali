.class public final Lcom/amazon/readingactions/ui/widget/BuyBookController;
.super Lcom/amazon/ea/ui/widget/WidgetController;
.source "BuyBookController.kt"

# interfaces
.implements Lcom/amazon/ea/images/ImageDownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/ui/widget/BuyBookController$ExpandingOnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuyBookController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuyBookController.kt\ncom/amazon/readingactions/ui/widget/BuyBookController\n*L\n1#1,476:1\n*E\n"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final activity:Landroid/app/Activity;

.field private animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

.field private inflater:Landroid/view/LayoutInflater;

.field private final isOneTapEnabled:Z

.field private final model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

.field private recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

.field private seeInStoreBookCoverListener:Landroid/view/View$OnClickListener;

.field private seeInStoreListener:Landroid/view/View$OnClickListener;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/amazon/ea/model/widget/buybook/BuyBookModel;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/WidgetController;-><init>()V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    .line 67
    const-class p1, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->TAG:Ljava/lang/String;

    .line 69
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object p1, p1, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    const-string p2, "model.recommendation"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    .line 70
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const-string p2, "activity.layoutInflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->inflater:Landroid/view/LayoutInflater;

    .line 73
    invoke-static {}, Lcom/amazon/ea/debug/AnyActionsDebugSettings;->getOneTapNextInSeriesEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->isOneTapEnabled:Z

    .line 79
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string p2, "EndActionsPlugin.sdk"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const/4 p2, 0x1

    .line 80
    invoke-static {p2}, Lcom/amazon/ea/guava/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object p2

    const-string/jumbo v0, "rsMetadata"

    .line 81
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object v0, v0, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    const-string v1, "MetricsTag"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v0, Lcom/amazon/readingactions/ui/widget/BuyBookController$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/readingactions/ui/widget/BuyBookController$1;-><init>(Lcom/amazon/readingactions/ui/widget/BuyBookController;Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->seeInStoreListener:Landroid/view/View$OnClickListener;

    .line 102
    new-instance v0, Lcom/amazon/readingactions/ui/widget/BuyBookController$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/readingactions/ui/widget/BuyBookController$2;-><init>(Lcom/amazon/readingactions/ui/widget/BuyBookController;Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->seeInStoreBookCoverListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static final synthetic access$getActivity$p(Lcom/amazon/readingactions/ui/widget/BuyBookController;)Landroid/app/Activity;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public static final synthetic access$getAnimationCoordinator$p(Lcom/amazon/readingactions/ui/widget/BuyBookController;)Lcom/amazon/ea/ui/AnimationCoordinator;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "animationCoordinator"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getModel$p(Lcom/amazon/readingactions/ui/widget/BuyBookController;)Lcom/amazon/ea/model/widget/buybook/BuyBookModel;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    return-object p0
.end method

.method public static final synthetic access$getRecommendation$p(Lcom/amazon/readingactions/ui/widget/BuyBookController;)Lcom/amazon/ea/sidecar/def/data/RecommendationData;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    return-object p0
.end method

.method public static final synthetic access$getSeeInStoreBookCoverListener$p(Lcom/amazon/readingactions/ui/widget/BuyBookController;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->seeInStoreBookCoverListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/readingactions/ui/widget/BuyBookController;)Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getView$p(Lcom/amazon/readingactions/ui/widget/BuyBookController;)Landroid/view/View;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$isOneTapEnabled$p(Lcom/amazon/readingactions/ui/widget/BuyBookController;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->isOneTapEnabled:Z

    return p0
.end method

.method private final inflateLegacyView()V
    .locals 22

    move-object/from16 v0, p0

    .line 357
    iget-object v1, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    sget v3, Lcom/amazon/kindle/ea/R$id;->see_in_store:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type android.widget.Button"

    if-eqz v1, :cond_f

    check-cast v1, Landroid/widget/Button;

    const/4 v4, 0x0

    .line 358
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/readingactions/ui/widget/BuyBookController;->getSeeInStoreLabelText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v5, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->seeInStoreListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    sget-object v5, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v6, "PriceDisplayed"

    invoke-virtual {v5, v6, v4}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 365
    iget-object v4, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    if-eqz v4, :cond_e

    sget v5, Lcom/amazon/kindle/ea/R$id;->buy_now:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_d

    check-cast v4, Landroid/widget/Button;

    .line 366
    iget-object v5, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    if-eqz v5, :cond_c

    sget v6, Lcom/amazon/kindle/ea/R$id;->endactions_ku_badge:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type android.widget.ImageView"

    if-eqz v5, :cond_b

    check-cast v5, Landroid/widget/ImageView;

    .line 367
    iget-object v7, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    if-eqz v7, :cond_a

    sget v8, Lcom/amazon/kindle/ea/R$id;->endactions_pr_badge:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_9

    check-cast v7, Landroid/widget/ImageView;

    .line 368
    iget-object v8, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    if-eqz v8, :cond_8

    sget v9, Lcom/amazon/kindle/ea/R$id;->cancel_purchase:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_7

    check-cast v8, Landroid/widget/Button;

    .line 369
    iget-object v9, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    if-eqz v9, :cond_6

    sget v10, Lcom/amazon/kindle/ea/R$id;->purchase_failure:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_5

    check-cast v9, Landroid/widget/Button;

    .line 370
    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    if-eqz v3, :cond_4

    sget v10, Lcom/amazon/kindle/ea/R$id;->failure_asset:I

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    check-cast v3, Landroid/widget/ImageView;

    .line 371
    iget-object v6, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    if-eqz v6, :cond_2

    sget v2, Lcom/amazon/kindle/ea/R$id;->bottom_border:I

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 373
    iget-object v6, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-boolean v6, v6, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->buyButtonVisible:Z

    if-eqz v6, :cond_0

    .line 374
    new-instance v10, Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-direct {v10, v4}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;-><init>(Landroid/widget/Button;)V

    .line 375
    invoke-virtual {v10, v5, v7}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setBorrowView(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 376
    invoke-virtual {v10, v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setSeeInStoreButton(Landroid/widget/Button;)V

    .line 377
    invoke-virtual {v10, v8}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setCancelView(Landroid/widget/Button;)V

    .line 378
    invoke-virtual {v10, v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setSeparatorBar(Landroid/view/View;)V

    .line 379
    invoke-virtual {v10, v9}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setFailureView(Landroid/widget/Button;)V

    .line 380
    invoke-virtual {v10, v3}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setFailureAsset(Landroid/widget/ImageView;)V

    .line 382
    iget-object v2, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/ea/R$color;->endactions_amazon_white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setStatusMessageColor(I)V

    const/4 v2, 0x1

    .line 384
    invoke-static {v2}, Lcom/amazon/ea/guava/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v3, "rsMetadata"

    .line 385
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object v3, v3, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    const-string v5, "MetricsTag"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    new-instance v11, Lcom/amazon/ea/util/EABookShell;

    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object v3, v3, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    invoke-direct {v11, v3}, Lcom/amazon/ea/util/EABookShell;-><init>(Lcom/amazon/ea/sidecar/def/data/RecommendationData;)V

    .line 388
    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-boolean v12, v3, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->buyInStore:Z

    iget-boolean v13, v3, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->oneClickBorrowSupported:Z

    .line 389
    iget-object v15, v3, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    .line 390
    iget-object v5, v3, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->getPrepareBuyRefTagFeatureId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 391
    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object v5, v3, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->getBuyNowRefTagFeatureId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 392
    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object v5, v3, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->getUnBuyAsinRefTagFeaturedId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 393
    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object v5, v3, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->getBorrowRefTagFeaturedId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v14, "BuyBookWidget"

    const-string v20, "AnyActionsBuyBookWidget"

    move-object/from16 v21, v2

    .line 388
    invoke-virtual/range {v10 .. v21}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->initialize(Lcom/amazon/ea/util/EABookShell;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;

    .line 396
    invoke-virtual {v0, v4}, Lcom/amazon/readingactions/ui/widget/BuyBookController;->checkPaymentFlows(Landroid/widget/Button;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 398
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 403
    :goto_0
    sget v2, Lcom/amazon/kindle/ea/R$array;->readingactions_text_primary_color:I

    invoke-static {v2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v2

    .line 402
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 405
    sget v2, Lcom/amazon/kindle/ea/R$array;->readingactions_default_button_background:I

    invoke-static {v2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v2

    .line 404
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 406
    sget-object v2, Lcom/amazon/readingactions/ui/helpers/OrientationResizer;->Companion:Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;

    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v1}, Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;->setWidthOrientationListener(Landroid/content/Context;Landroid/view/View;)V

    .line 409
    sget v1, Lcom/amazon/kindle/ea/R$array;->readingactions_purchase_button_background:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    .line 408
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 411
    sget v1, Lcom/amazon/kindle/ea/R$array;->readingactions_purchase_button_text_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 410
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 412
    sget-object v1, Lcom/amazon/readingactions/ui/helpers/OrientationResizer;->Companion:Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;

    iget-object v2, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v4}, Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;->setWidthOrientationListener(Landroid/content/Context;Landroid/view/View;)V

    .line 415
    iget-object v1, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object v2, v1, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    iget-object v1, v1, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    const-string v3, "DisplayedBuyBookWidget"

    .line 414
    invoke-static {v3, v2, v1}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetEA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 371
    :cond_1
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type android.view.View"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 370
    :cond_3
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 369
    :cond_5
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 368
    :cond_7
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 367
    :cond_9
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 366
    :cond_b
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 365
    :cond_d
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 357
    :cond_f
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2
.end method

.method private final inflateOneTapView(Landroid/view/View;)V
    .locals 35

    move-object/from16 v0, p0

    .line 242
    iget-object v1, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    if-eqz v1, :cond_27

    sget v3, Lcom/amazon/kindle/ea/R$id;->see_in_store_one_tap:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type android.widget.Button"

    if-eqz v1, :cond_26

    check-cast v1, Landroid/widget/Button;

    .line 243
    iget-object v4, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    if-eqz v4, :cond_25

    sget v5, Lcom/amazon/kindle/ea/R$id;->see_in_store_one_tap_chevron:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type android.widget.ImageView"

    if-eqz v4, :cond_24

    check-cast v4, Landroid/widget/ImageView;

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/readingactions/ui/widget/BuyBookController;->getSeeInStoreLabelText()Ljava/lang/String;

    move-result-object v6

    .line 245
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 246
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v6, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->seeInStoreListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v6, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->seeInStoreListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    sget-object v6, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const/4 v7, 0x0

    const-string v8, "PriceDisplayed"

    invoke-virtual {v6, v8, v7}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 253
    iget-object v6, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    if-eqz v6, :cond_23

    sget v7, Lcom/amazon/kindle/ea/R$id;->buy_now_one_tap:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_22

    check-cast v6, Landroid/widget/Button;

    .line 254
    iget-object v7, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    if-eqz v7, :cond_21

    sget v8, Lcom/amazon/kindle/ea/R$id;->read_now_one_tap:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_20

    check-cast v7, Landroid/widget/Button;

    .line 255
    iget-object v8, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    if-eqz v8, :cond_1f

    sget v9, Lcom/amazon/kindle/ea/R$id;->add_to_lib_one_tap:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_1e

    check-cast v8, Landroid/widget/Button;

    .line 256
    iget-object v9, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    if-eqz v9, :cond_1d

    sget v10, Lcom/amazon/kindle/ea/R$id;->in_your_library:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const-string v10, "null cannot be cast to non-null type android.widget.TextView"

    if-eqz v9, :cond_1c

    check-cast v9, Landroid/widget/TextView;

    .line 257
    iget-object v11, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    if-eqz v11, :cond_1b

    sget v12, Lcom/amazon/kindle/ea/R$id;->save_to_lib_check_mark:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_1a

    check-cast v11, Landroid/widget/ImageView;

    .line 258
    iget-object v12, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    if-eqz v12, :cond_19

    sget v13, Lcom/amazon/kindle/ea/R$id;->endactions_ku_badge_one_tap:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_18

    check-cast v12, Landroid/widget/ImageView;

    .line 259
    iget-object v13, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    if-eqz v13, :cond_17

    sget v14, Lcom/amazon/kindle/ea/R$id;->ku_pr_badge_text_one_tap:I

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_16

    check-cast v13, Landroid/widget/TextView;

    .line 260
    iget-object v14, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    if-eqz v14, :cond_15

    sget v15, Lcom/amazon/kindle/ea/R$id;->endactions_pr_badge_one_tap:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_14

    check-cast v14, Landroid/widget/ImageView;

    .line 261
    iget-object v15, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    if-eqz v15, :cond_13

    sget v2, Lcom/amazon/kindle/ea/R$id;->buy_success_onetap_toast:I

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_12

    check-cast v2, Landroid/widget/TextView;

    .line 262
    iget-object v15, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    if-eqz v15, :cond_11

    move-object/from16 v17, v10

    sget v10, Lcom/amazon/kindle/ea/R$id;->buy_success_onetap_checkmark:I

    invoke-virtual {v15, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_10

    check-cast v10, Landroid/widget/ImageView;

    .line 263
    iget-object v15, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    if-eqz v15, :cond_f

    move-object/from16 v18, v3

    sget v3, Lcom/amazon/kindle/ea/R$id;->cancel_purchase_one_tap:I

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_e

    check-cast v3, Landroid/widget/Button;

    .line 264
    iget-object v15, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    if-eqz v15, :cond_d

    move-object/from16 v19, v5

    sget v5, Lcom/amazon/kindle/ea/R$id;->cancel_onetap_complete:I

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_c

    check-cast v5, Landroid/widget/TextView;

    .line 265
    iget-object v15, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    if-eqz v15, :cond_b

    move-object/from16 v20, v3

    sget v3, Lcom/amazon/kindle/ea/R$id;->cancel_onetap_checkmark:I

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_a

    check-cast v3, Landroid/widget/ImageView;

    .line 266
    iget-object v15, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    if-eqz v15, :cond_9

    move-object/from16 v21, v14

    sget v14, Lcom/amazon/kindle/ea/R$id;->purchase_failure_one_tap:I

    invoke-virtual {v15, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_8

    check-cast v14, Landroid/widget/Button;

    .line 267
    iget-object v15, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    if-eqz v15, :cond_7

    move-object/from16 v17, v14

    sget v14, Lcom/amazon/kindle/ea/R$id;->failure_asset_one_tap:I

    invoke-virtual {v15, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_6

    check-cast v14, Landroid/widget/ImageView;

    .line 268
    iget-object v15, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    if-eqz v15, :cond_5

    move-object/from16 v18, v14

    sget v14, Lcom/amazon/kindle/ea/R$id;->bottom_border:I

    invoke-virtual {v15, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const-string v15, "null cannot be cast to non-null type android.view.View"

    if-eqz v14, :cond_4

    move-object/from16 v19, v15

    .line 269
    iget-object v15, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    if-eqz v15, :cond_3

    move-object/from16 v22, v14

    sget v14, Lcom/amazon/kindle/ea/R$id;->buttons_one_tap_container:I

    invoke-virtual {v15, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_2

    check-cast v14, Landroid/widget/LinearLayout;

    .line 272
    sget v15, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_KU_badge:I

    invoke-static {v15}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    sget v15, Lcom/amazon/kindle/ea/R$array;->endations_onetap_KU_badge_text_color:I

    invoke-static {v15}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v15

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 274
    sget v15, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_see_in_store_text_color:I

    invoke-static {v15}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v15

    invoke-virtual {v1, v15}, Landroid/widget/Button;->setTextColor(I)V

    .line 275
    sget v15, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_see_in_store_chevron:I

    invoke-static {v15}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    sget v15, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_read_button_bg:I

    invoke-static {v15}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedResourceId(I)I

    move-result v15

    invoke-direct {v0, v7, v15}, Lcom/amazon/readingactions/ui/widget/BuyBookController;->setButtonResourceBackground(Landroid/widget/Button;I)V

    .line 277
    sget v15, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_read_button_text_color:I

    invoke-static {v15}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v15

    invoke-virtual {v7, v15}, Landroid/widget/Button;->setTextColor(I)V

    .line 278
    sget-object v15, Lcom/amazon/readingactions/ui/helpers/OrientationResizer;->Companion:Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;

    move-object/from16 v16, v14

    iget-object v14, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->activity:Landroid/app/Activity;

    invoke-virtual {v15, v14, v7}, Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;->setWidthOrientationListener(Landroid/content/Context;Landroid/view/View;)V

    .line 279
    sget v14, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_buy_button_bg:I

    invoke-static {v14}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedResourceId(I)I

    move-result v14

    invoke-direct {v0, v6, v14}, Lcom/amazon/readingactions/ui/widget/BuyBookController;->setButtonResourceBackground(Landroid/widget/Button;I)V

    .line 280
    sget v14, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_buy_button_text_color:I

    invoke-static {v14}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v14

    invoke-virtual {v6, v14}, Landroid/widget/Button;->setTextColor(I)V

    .line 281
    sget-object v14, Lcom/amazon/readingactions/ui/helpers/OrientationResizer;->Companion:Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;

    iget-object v15, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->activity:Landroid/app/Activity;

    invoke-virtual {v14, v15, v6}, Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;->setWidthOrientationListener(Landroid/content/Context;Landroid/view/View;)V

    .line 282
    sget v14, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_add_to_lib_button_bg:I

    invoke-static {v14}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedResourceId(I)I

    move-result v14

    invoke-direct {v0, v8, v14}, Lcom/amazon/readingactions/ui/widget/BuyBookController;->setButtonResourceBackground(Landroid/widget/Button;I)V

    .line 283
    sget v14, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_add_to_lib_button_text_color:I

    invoke-static {v14}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v14

    invoke-virtual {v8, v14}, Landroid/widget/Button;->setTextColor(I)V

    .line 284
    sget-object v14, Lcom/amazon/readingactions/ui/helpers/OrientationResizer;->Companion:Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;

    iget-object v15, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->activity:Landroid/app/Activity;

    invoke-virtual {v14, v15, v8}, Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;->setWidthOrientationListener(Landroid/content/Context;Landroid/view/View;)V

    .line 285
    sget v14, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_in_you_lib_text:I

    invoke-static {v14}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v14

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 286
    sget v14, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_checkmark:I

    invoke-static {v14}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 287
    sget v14, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_buy_success_toast_text:I

    invoke-static {v14}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 288
    sget v14, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_checkmark:I

    invoke-static {v14}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 289
    sget v14, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_buy_cancel_complete_text:I

    invoke-static {v14}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v14

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 290
    sget v14, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_checkmark:I

    invoke-static {v14}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    iget-object v14, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-boolean v14, v14, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->buyButtonVisible:Z

    if-eqz v14, :cond_0

    .line 293
    new-instance v14, Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-direct {v14, v6}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;-><init>(Landroid/widget/Button;)V

    .line 294
    invoke-virtual {v14, v8, v9, v11}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setAddToLibViewSet(Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 295
    invoke-virtual {v14, v7}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setReadButton(Landroid/widget/Button;)V

    move-object/from16 v7, v21

    .line 296
    invoke-virtual {v14, v12, v7, v13}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setBorrowView(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    move-object/from16 v7, p1

    .line 297
    invoke-virtual {v14, v7}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setCurrentBookView(Landroid/view/View;)V

    .line 298
    invoke-virtual {v14, v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setSeeInStoreButton(Landroid/widget/Button;)V

    .line 299
    invoke-virtual {v14, v4}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setSeeInStoreChevron(Landroid/widget/ImageView;)V

    .line 300
    invoke-virtual {v14, v2, v10}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setBuySuccessView(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    move-object/from16 v1, v20

    .line 301
    invoke-virtual {v14, v1, v5, v3}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setCancelView(Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    move-object/from16 v1, v22

    .line 302
    invoke-virtual {v14, v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setSeparatorBar(Landroid/view/View;)V

    move-object/from16 v1, v17

    .line 303
    invoke-virtual {v14, v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setFailureView(Landroid/widget/Button;)V

    move-object/from16 v1, v18

    .line 304
    invoke-virtual {v14, v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setFailureAsset(Landroid/widget/ImageView;)V

    .line 306
    iget-object v1, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/ea/R$color;->endactions_amazon_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v14, v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setStatusMessageColor(I)V

    .line 308
    iget-object v1, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/ea/R$color;->aa_amazon_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v14, v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setActionMessageColor(I)V

    .line 310
    iget-object v1, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/ea/R$color;->anyactions_amazon_orange_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v14, v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setErrorMessageColor(I)V

    const/4 v1, 0x1

    .line 311
    invoke-static {v1}, Lcom/amazon/ea/guava/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v1

    const-string/jumbo v2, "rsMetadata"

    .line 312
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object v2, v2, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    const-string v3, "MetricsTag"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    new-instance v2, Lcom/amazon/ea/util/EABookShell;

    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object v3, v3, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    invoke-direct {v2, v3}, Lcom/amazon/ea/util/EABookShell;-><init>(Lcom/amazon/ea/sidecar/def/data/RecommendationData;)V

    .line 314
    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-boolean v4, v3, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->buyInStore:Z

    iget-boolean v5, v3, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->oneClickBorrowSupported:Z

    .line 315
    iget-object v7, v3, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    .line 316
    iget-object v8, v3, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->getPrepareBuyRefTagFeatureId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 317
    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object v8, v3, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->getBuyNowRefTagFeatureId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 318
    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object v8, v3, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->getUnBuyAsinRefTagFeaturedId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 319
    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object v8, v3, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->getBorrowRefTagFeaturedId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v27, "BuyBookWidget"

    const-string v33, "AnyActionsBuyBookWidget"

    move-object/from16 v23, v14

    move-object/from16 v24, v2

    move/from16 v25, v4

    move/from16 v26, v5

    move-object/from16 v28, v7

    move-object/from16 v34, v1

    .line 314
    invoke-virtual/range {v23 .. v34}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->initialize(Lcom/amazon/ea/util/EABookShell;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;

    .line 322
    invoke-virtual {v0, v6}, Lcom/amazon/readingactions/ui/widget/BuyBookController;->checkPaymentFlows(Landroid/widget/Button;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 324
    invoke-virtual {v6, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 327
    :goto_0
    new-instance v1, Lcom/amazon/readingactions/ui/widget/BuyBookController$inflateOneTapView$delegate$1;

    move-object/from16 v14, v16

    invoke-direct {v1, v14}, Lcom/amazon/readingactions/ui/widget/BuyBookController$inflateOneTapView$delegate$1;-><init>(Landroid/widget/LinearLayout;)V

    .line 338
    sget-object v2, Lcom/amazon/readingactions/ui/helpers/OrientationResizer;->Companion:Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;

    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->activity:Landroid/app/Activity;

    iget-object v4, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    if-eqz v4, :cond_1

    invoke-virtual {v2, v3, v4, v1}, Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;->setAlignmentOrientationListener(Landroid/content/Context;Landroid/view/View;Lcom/amazon/readingactions/helpers/AlignmentChangeDelegate;)V

    .line 341
    iget-object v1, v0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object v2, v1, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    iget-object v1, v1, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    const-string v3, "DisplayedBuyBookWidget"

    .line 340
    invoke-static {v3, v2, v1}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetEA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 338
    :cond_1
    new-instance v1, Lkotlin/TypeCastException;

    move-object/from16 v2, v19

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 269
    :cond_2
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v1, 0x0

    throw v1

    :cond_4
    move-object v2, v15

    .line 268
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    const/4 v1, 0x0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 267
    :cond_6
    new-instance v1, Lkotlin/TypeCastException;

    move-object/from16 v2, v19

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    const/4 v1, 0x0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 266
    :cond_8
    new-instance v1, Lkotlin/TypeCastException;

    move-object/from16 v2, v18

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    const/4 v1, 0x0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_a
    move-object/from16 v2, v19

    .line 265
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    const/4 v1, 0x0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 264
    :cond_c
    new-instance v1, Lkotlin/TypeCastException;

    move-object/from16 v2, v17

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    const/4 v1, 0x0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_e
    move-object/from16 v2, v18

    .line 263
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    const/4 v1, 0x0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_10
    move-object v2, v5

    .line 262
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    const/4 v1, 0x0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_12
    move-object v2, v10

    .line 261
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    const/4 v1, 0x0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_14
    move-object v2, v5

    .line 260
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    const/4 v1, 0x0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_16
    move-object v2, v10

    .line 259
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    const/4 v1, 0x0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_18
    move-object v2, v5

    .line 258
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19
    const/4 v1, 0x0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_1a
    move-object v2, v5

    .line 257
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    const/4 v1, 0x0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_1c
    move-object v2, v10

    .line 256
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1d
    const/4 v1, 0x0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_1e
    move-object v2, v3

    .line 255
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    const/4 v1, 0x0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_20
    move-object v2, v3

    .line 254
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    const/4 v1, 0x0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_22
    move-object v2, v3

    .line 253
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_23
    const/4 v1, 0x0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_24
    move-object v2, v5

    .line 243
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_25
    const/4 v1, 0x0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_26
    move-object v2, v3

    .line 242
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_27
    const/4 v1, 0x0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method

.method private final setBookDescription(Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;)V
    .locals 11

    .line 174
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget v2, Lcom/amazon/kindle/ea/R$id;->book_data_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v2, "view!!.findViewById(R.id.book_data_container)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    .line 175
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    if-eqz v2, :cond_1

    sget v1, Lcom/amazon/kindle/ea/R$id;->book_description:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v2, "view!!.findViewById(R.id.book_description)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    .line 176
    iget-object v2, p1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    new-instance v2, Lcom/amazon/readingactions/ui/widget/BuyBookController$ExpandingOnClickListener;

    iget-object v7, p1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    const-string/jumbo v9, "recommendation.description"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x1

    move-object v3, v2

    move-object v4, p0

    move-object v5, v1

    move-object v6, v0

    invoke-direct/range {v3 .. v8}, Lcom/amazon/readingactions/ui/widget/BuyBookController$ExpandingOnClickListener;-><init>(Lcom/amazon/readingactions/ui/widget/BuyBookController;Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Landroid/view/View;Ljava/lang/String;Z)V

    .line 178
    new-instance v10, Lcom/amazon/readingactions/ui/widget/BuyBookController$ExpandingOnClickListener;

    iget-object v7, p1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v8}, Lcom/amazon/readingactions/ui/widget/BuyBookController$ExpandingOnClickListener;-><init>(Lcom/amazon/readingactions/ui/widget/BuyBookController;Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Landroid/view/View;Ljava/lang/String;Z)V

    .line 179
    invoke-virtual {v2, v10}, Lcom/amazon/readingactions/ui/widget/BuyBookController$ExpandingOnClickListener;->setListener(Landroid/view/View$OnClickListener;)V

    .line 180
    invoke-virtual {v10, v2}, Lcom/amazon/readingactions/ui/widget/BuyBookController$ExpandingOnClickListener;->setListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/amazon/kindle/ea/R$string;->startactions_widget_read_more:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTruncateLinkText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/ea/R$string;->startactions_widget_read_less:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/ea/R$string;->startactions_widget_read_less_content_description:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-virtual {v1, v0, v2, v10}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setAppendLinkText(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTextWithLink(Ljava/lang/CharSequence;)V

    .line 189
    sget p1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {p1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x0

    .line 190
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 192
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    .line 175
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 174
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method

.method private final setButtonResourceBackground(Landroid/widget/Button;I)V
    .locals 4

    .line 345
    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v0

    .line 346
    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingTop()I

    move-result v1

    .line 347
    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingRight()I

    move-result v2

    .line 348
    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v3

    .line 350
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 352
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/Button;->setPadding(IIII)V

    return-void
.end method

.method private final setRatingAndReviews(Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;)V
    .locals 9

    .line 197
    iget v0, p1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->rating:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget v2, Lcom/amazon/kindle/ea/R$id;->stars:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v2, "view!!.findViewById(R.id.stars)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RatingBar;

    .line 199
    iget v2, p1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->rating:F

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setRating(F)V

    const/4 v2, 0x2

    .line 200
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    const/4 v2, 0x0

    .line 201
    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 203
    iget v0, p1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->numberOfReviews:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 204
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    sget v1, Lcom/amazon/kindle/ea/R$id;->num_reviews:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view!!.findViewById(R.id.num_reviews)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 205
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/amazon/kindle/ea/R$string;->startactions_widget_header_num_reviews:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 206
    iget v6, p1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->numberOfReviews:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 205
    invoke-virtual {v1, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v5, "EndActionsPlugin.sdk"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 212
    sget v6, Lcom/amazon/kindle/ea/R$string;->startactions_widget_header_stars_content_description:I

    new-array v7, v4, [Ljava/lang/Object;

    iget v8, p1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->rating:F

    float-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    .line 211
    invoke-virtual {v3, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    sget-object v3, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 213
    sget v5, Lcom/amazon/kindle/ea/R$string;->startactions_widget_header_num_reviews_content_description:I

    new-array v4, v4, [Ljava/lang/Object;

    iget p1, p1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->numberOfReviews:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    .line 212
    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 204
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 198
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final checkPaymentFlows(Landroid/widget/Button;)V
    .locals 1

    const-string v0, "buyNow"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    sget-object v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow;->Companion:Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow$Companion;

    invoke-virtual {v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow$Companion;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 428
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final getSeeInStoreLabelText()Ljava/lang/String;
    .locals 8

    .line 419
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object v0, v0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->seeInStoreButtonText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "activity.resources"

    if-nez v0, :cond_0

    .line 420
    sget-object v2, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow;->Companion:Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow$Companion;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object v4, v0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->seeInStoreButtonText:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow$Companion;->getEABookStoreLabelText$default(Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow$Companion;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 422
    :cond_0
    sget-object v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow;->Companion:Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow$Companion;

    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow$Companion;->getEABookStoreLabelText$default(Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow$Companion;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getView(Landroid/view/ViewGroup;Lcom/amazon/ea/model/widget/WidgetDisplayFormat;Lcom/amazon/ea/ui/AnimationCoordinator;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string/jumbo p4, "parent"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "format"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "animationCoordinator"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->inflater:Landroid/view/LayoutInflater;

    sget p4, Lcom/amazon/kindle/ea/R$layout;->readingactions_widget_ea_buy_book:I

    const/4 v0, 0x0

    invoke-virtual {p2, p4, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    .line 124
    iput-object p3, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    .line 127
    sget p1, Lcom/amazon/kindle/ea/R$array;->readingactions_text_primary_color:I

    invoke-static {p1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result p1

    .line 128
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    const/4 p3, 0x0

    if-eqz p2, :cond_f

    sget p4, Lcom/amazon/kindle/ea/R$id;->title:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p4, "null cannot be cast to non-null type android.widget.TextView"

    if-eqz p2, :cond_e

    check-cast p2, Landroid/widget/TextView;

    .line 129
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->title:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    iget-object p2, p2, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    const-string/jumbo v1, "recommendation.authors"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_2

    .line 134
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    if-eqz p2, :cond_1

    sget v1, Lcom/amazon/kindle/ea/R$id;->author:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Landroid/widget/TextView;

    .line 135
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    invoke-static {p1}, Lcom/amazon/ea/util/AuthorNameFormatterUtil;->formatAuthorList(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 134
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw p3

    .line 141
    :cond_2
    :goto_0
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string p2, "EndActionsPlugin.sdk"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    const-string p4, "EndActionsPlugin.sdk.readerManager"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    .line 142
    iget-object p4, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    if-eqz p4, :cond_d

    sget v0, Lcom/amazon/kindle/ea/R$id;->downloaded_cover:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_c

    check-cast p4, Landroid/widget/ImageView;

    .line 143
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-boolean v0, v0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->isCurrentBook:Z

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 144
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getCoverManager()Lcom/amazon/kindle/krx/cover/ICoverManager;

    move-result-object p2

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    .line 145
    sget-object v0, Lcom/amazon/kindle/krx/cover/ICoverManager$CoverImageType;->MEDIUM:Lcom/amazon/kindle/krx/cover/ICoverManager$CoverImageType;

    .line 144
    invoke-interface {p2, p1, v0}, Lcom/amazon/kindle/krx/cover/ICoverManager;->getCoverAsBitmap(Ljava/lang/String;Lcom/amazon/kindle/krx/cover/ICoverManager$CoverImageType;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 146
    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x2

    .line 147
    invoke-static {p4, p1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 148
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->seeInStoreBookCoverListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    if-eqz p1, :cond_4

    sget p2, Lcom/amazon/kindle/ea/R$id;->progress_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ProgressBar"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw p3

    .line 151
    :cond_5
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->imageURL:Ljava/lang/String;

    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget p2, p2, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->imageHeight:I

    invoke-static {p1, p2}, Lcom/amazon/ea/util/StyleCodeUtil;->addHeightParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-static {p1, p0}, Lcom/amazon/startactions/storage/ImageDownloadManager;->get(Ljava/lang/String;Lcom/amazon/ea/images/ImageDownloadListener;)V

    .line 155
    :goto_1
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    instance-of p2, p1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    if-eqz p2, :cond_8

    const-string p2, "null cannot be cast to non-null type com.amazon.ea.sidecar.def.data.FeaturedRecommendationData"

    if-eqz p1, :cond_7

    .line 156
    check-cast p1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/BuyBookController;->setBookDescription(Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;)V

    .line 157
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    if-eqz p1, :cond_6

    check-cast p1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/BuyBookController;->setRatingAndReviews(Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;)V

    goto :goto_2

    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 156
    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 160
    :cond_8
    :goto_2
    iget-boolean p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->isOneTapEnabled:Z

    if-eqz p1, :cond_9

    .line 161
    invoke-direct {p0, p4}, Lcom/amazon/readingactions/ui/widget/BuyBookController;->inflateOneTapView(Landroid/view/View;)V

    goto :goto_3

    .line 163
    :cond_9
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/BuyBookController;->inflateLegacyView()V

    .line 166
    :goto_3
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object p1, p1, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    sget-object p2, Lcom/amazon/ea/metrics/GeneralWidgetActions;->RENDER:Lcom/amazon/ea/metrics/GeneralWidgetActions;

    invoke-static {p1, p2}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 168
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    if-eqz p1, :cond_b

    new-instance p2, Lcom/amazon/readingactions/ui/widget/BuyBookController$getView$1;

    invoke-direct {p2, p0}, Lcom/amazon/readingactions/ui/widget/BuyBookController$getView$1;-><init>(Lcom/amazon/readingactions/ui/widget/BuyBookController;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController;->view:Landroid/view/View;

    if-eqz p1, :cond_a

    return-object p1

    :cond_a
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 168
    :cond_b
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw p3

    .line 142
    :cond_c
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw p3

    .line 128
    :cond_e
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw p3
.end method

.method public onCompletion(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v0, "EndActionsPlugin.sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    const-string v0, "EndActionsPlugin.sdk.applicationManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAsyncTaskExecutor()Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    move-result-object p1

    new-instance v0, Lcom/amazon/readingactions/ui/widget/BuyBookController$onCompletion$1;

    invoke-direct {v0, p0, p2}, Lcom/amazon/readingactions/ui/widget/BuyBookController$onCompletion$1;-><init>(Lcom/amazon/readingactions/ui/widget/BuyBookController;Landroid/graphics/Bitmap;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;->postOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
