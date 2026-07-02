.class public Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;
.super Ljava/lang/Object;
.source "BookGridWidget.java"

# interfaces
.implements Lcom/amazon/readingactions/ui/widget/BookGridView$BookGridAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/BookGridWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BookGridAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;


# direct methods
.method public constructor <init>(Lcom/amazon/readingactions/ui/widget/BookGridWidget;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;)V
    .locals 0

    .line 317
    invoke-direct {p0, p1, p2}, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->refreshView(Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;)V

    return-void
.end method

.method private applyThemeRules(Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;)V
    .locals 2

    .line 545
    sget-object v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->PURCHASE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    invoke-direct {p0, p1, v0}, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->updateBuyNowTheme(Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;)V

    .line 546
    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->updateSeeInStoreTheme(Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;)V

    .line 547
    iget-object v0, p1, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->shareButton:Landroid/widget/Button;

    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_button_text_color:I

    .line 548
    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 547
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 549
    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->shareButton:Landroid/widget/Button;

    sget v0, Lcom/amazon/kindle/ea/R$array;->anyactions_share_button:I

    .line 550
    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 549
    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private inflateBubbleView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 481
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    iget-object v0, v0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$layout;->readingactions_detail_bubble_content:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 484
    new-instance v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    invoke-direct {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;-><init>(Lcom/amazon/readingactions/ui/widget/BookGridWidget;)V

    .line 485
    sget v1, Lcom/amazon/kindle/ea/R$id;->book_detail_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->container:Landroid/view/View;

    .line 486
    sget v1, Lcom/amazon/kindle/ea/R$id;->title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->title:Landroid/widget/TextView;

    .line 487
    sget v1, Lcom/amazon/kindle/ea/R$id;->book_grid_share_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->shareButton:Landroid/widget/Button;

    .line 488
    sget v1, Lcom/amazon/kindle/ea/R$id;->author:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->author:Landroid/widget/TextView;

    .line 489
    sget v1, Lcom/amazon/kindle/ea/R$id;->rating_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->ratingContainer:Landroid/view/ViewGroup;

    .line 490
    sget v1, Lcom/amazon/kindle/ea/R$id;->rating_bar:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RatingBar;

    iput-object v1, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->ratingBar:Landroid/widget/RatingBar;

    .line 491
    sget v1, Lcom/amazon/kindle/ea/R$id;->rating_count:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->ratingCount:Landroid/widget/TextView;

    .line 492
    invoke-virtual {p0, v0, p1}, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->inflateSeeInStoreButton(Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;Landroid/view/View;)V

    .line 493
    sget v1, Lcom/amazon/kindle/ea/R$id;->description:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    iput-object v1, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->description:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    .line 494
    sget v1, Lcom/amazon/kindle/ea/R$id;->null_description_padding:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->nullDescriptionPadding:Landroid/view/View;

    .line 496
    sget v1, Lcom/amazon/kindle/ea/R$id;->startactions_ku_badge:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->kuBadge:Landroid/widget/ImageView;

    .line 497
    sget v1, Lcom/amazon/kindle/ea/R$id;->startactions_pr_badge:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->prBadge:Landroid/widget/ImageView;

    .line 498
    sget v1, Lcom/amazon/kindle/ea/R$id;->buy_now:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->buyNow:Landroid/widget/Button;

    .line 499
    sget v1, Lcom/amazon/kindle/ea/R$id;->cancel_purchase:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->cancelView:Landroid/widget/Button;

    .line 500
    sget v1, Lcom/amazon/kindle/ea/R$id;->purchase_failure:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->failureView:Landroid/widget/Button;

    .line 501
    sget v1, Lcom/amazon/kindle/ea/R$id;->failure_asset:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->failureAsset:Landroid/widget/ImageView;

    .line 504
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    iget-object v1, v1, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    iget-boolean v1, v1, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->buyButtonVisible:Z

    if-eqz v1, :cond_0

    .line 505
    new-instance v1, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    iget-object v2, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->buyNow:Landroid/widget/Button;

    invoke-direct {v1, v2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;-><init>(Landroid/widget/Button;)V

    iput-object v1, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    .line 506
    iget-object v2, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->kuBadge:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->prBadge:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setBorrowView(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 507
    iget-object v1, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    iget-object v2, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->seeInStore:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setSeeInStoreButton(Landroid/widget/Button;)V

    .line 508
    iget-object v1, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    iget-object v2, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->seeInStoreChevron:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setSeeInStoreChevron(Landroid/widget/ImageView;)V

    .line 509
    iget-object v1, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    iget-object v2, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->cancelView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setCancelView(Landroid/widget/Button;)V

    .line 510
    iget-object v1, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    iget-object v2, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->failureView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setFailureView(Landroid/widget/Button;)V

    .line 511
    iget-object v1, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    iget-object v2, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->failureAsset:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setFailureAsset(Landroid/widget/ImageView;)V

    .line 512
    iget-object v1, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    sget v2, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    .line 513
    invoke-static {v2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v2

    .line 512
    invoke-virtual {v1, v2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setStatusMessageColor(I)V

    .line 514
    iget-object v1, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    sget v2, Lcom/amazon/kindle/ea/R$array;->startactions_text_button_text_color_default:I

    .line 515
    invoke-static {v2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v2

    .line 514
    invoke-virtual {v1, v2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setActionMessageColor(I)V

    .line 518
    :cond_0
    sget v1, Lcom/amazon/kindle/ea/R$id;->top_border:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->topBorder:Landroid/view/View;

    .line 519
    sget v1, Lcom/amazon/kindle/ea/R$id;->bottom_border:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->bottomBorder:Landroid/view/View;

    .line 521
    invoke-direct {p0, v0}, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->applyThemeRules(Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;)V

    .line 523
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p1
.end method

.method private refreshView(Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;)V
    .locals 0

    .line 600
    invoke-virtual {p2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;->getMode()Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->updateBuyNowTheme(Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;)V

    return-void
.end method

.method private setBookDescription(Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 430
    iget-object v3, v2, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 431
    new-instance v3, Lcom/amazon/readingactions/ui/helpers/TextViewExpandClickListener;

    iget-object v7, v1, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->description:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    iget-object v8, v1, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->container:Landroid/view/View;

    iget-object v6, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    iget-object v9, v6, Lcom/amazon/readingactions/ui/widget/WidgetBase;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    iget-object v10, v6, Lcom/amazon/readingactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    iget-object v6, v6, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v6, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v11, v6, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v12, Lcom/amazon/ea/metrics/BookGridActions;->CLICK_SEE_MORE:Lcom/amazon/ea/metrics/BookGridActions;

    iget-object v13, v2, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    const v14, 0x7fffffff

    move-object v6, v3

    invoke-direct/range {v6 .. v14}, Lcom/amazon/readingactions/ui/helpers/TextViewExpandClickListener;-><init>(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Landroid/view/View;Lcom/amazon/ea/ui/AnimationCoordinator;Landroid/content/res/Resources;Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;Ljava/lang/String;I)V

    .line 434
    new-instance v6, Lcom/amazon/readingactions/ui/helpers/TextViewCollapseClickListener;

    iget-object v7, v1, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->description:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    iget-object v8, v1, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->container:Landroid/view/View;

    iget-object v9, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    iget-object v10, v9, Lcom/amazon/readingactions/ui/widget/WidgetBase;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    iget-object v11, v9, Lcom/amazon/readingactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    iget-object v9, v9, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v9, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v9, v9, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v21, Lcom/amazon/ea/metrics/BookGridActions;->CLICK_SEE_LESS:Lcom/amazon/ea/metrics/BookGridActions;

    iget-object v12, v2, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    sget v13, Lcom/amazon/kindle/ea/R$integer;->readingactions_detail_bubble_description_max_lines:I

    .line 437
    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v23

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v20, v9

    move-object/from16 v22, v12

    invoke-direct/range {v15 .. v23}, Lcom/amazon/readingactions/ui/helpers/TextViewCollapseClickListener;-><init>(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Landroid/view/View;Lcom/amazon/ea/ui/AnimationCoordinator;Landroid/content/res/Resources;Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;Ljava/lang/String;I)V

    .line 438
    invoke-virtual {v3, v6}, Lcom/amazon/readingactions/ui/helpers/TextViewExpandableOnClickListener;->setListener(Landroid/view/View$OnClickListener;)V

    .line 439
    invoke-virtual {v6, v3}, Lcom/amazon/readingactions/ui/helpers/TextViewExpandableOnClickListener;->setListener(Landroid/view/View$OnClickListener;)V

    .line 441
    iget-object v7, v1, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->description:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    iget-object v8, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    iget-object v8, v8, Lcom/amazon/readingactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v9, Lcom/amazon/kindle/ea/R$string;->startactions_widget_read_more:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTruncateLinkText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 443
    iget-object v3, v1, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->description:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    iget-object v7, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    iget-object v7, v7, Lcom/amazon/readingactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v8, Lcom/amazon/kindle/ea/R$string;->startactions_widget_read_less:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    iget-object v8, v8, Lcom/amazon/readingactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v9, Lcom/amazon/kindle/ea/R$string;->startactions_widget_read_less_content_description:I

    .line 444
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 443
    invoke-virtual {v3, v7, v8, v6}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setAppendLinkText(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 447
    iget-object v3, v1, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->description:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    iget-object v6, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    iget-object v6, v6, Lcom/amazon/readingactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v7, Lcom/amazon/kindle/ea/R$integer;->readingactions_detail_bubble_description_max_lines:I

    .line 448
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 447
    invoke-virtual {v3, v6}, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->setMaxLines(I)V

    .line 449
    iget-object v3, v1, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->description:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    invoke-virtual {v3, v2, v5}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTextWithLink(Ljava/lang/CharSequence;Z)V

    .line 450
    iget-object v2, v1, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->description:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 451
    iget-object v1, v1, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->nullDescriptionPadding:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 453
    :cond_0
    iget-object v2, v1, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->description:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 454
    iget-object v1, v1, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->nullDescriptionPadding:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateBuyNowTheme(Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;)V
    .locals 1

    .line 554
    sget-object v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$2;->$SwitchMap$com$amazon$readingactions$helpers$purchase$PurchaseMode:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 568
    iget-object p2, p1, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->buyNow:Landroid/widget/Button;

    sget v0, Lcom/amazon/kindle/ea/R$array;->readingactions_purchase_button_background:I

    .line 569
    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    .line 568
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 570
    iget-object p2, p1, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->buyNow:Landroid/widget/Button;

    sget v0, Lcom/amazon/kindle/ea/R$array;->readingactions_purchase_button_text_color:I

    .line 571
    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 570
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 562
    :cond_0
    iget-object p2, p1, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->buyNow:Landroid/widget/Button;

    sget v0, Lcom/amazon/kindle/ea/R$array;->readingactions_contrast_button:I

    .line 563
    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 562
    invoke-static {p2, v0}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 564
    iget-object p2, p1, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->buyNow:Landroid/widget/Button;

    sget v0, Lcom/amazon/kindle/ea/R$array;->readingactions_contrast_button_text_color:I

    .line 565
    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 564
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 556
    :cond_1
    iget-object p2, p1, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->buyNow:Landroid/widget/Button;

    sget v0, Lcom/amazon/kindle/ea/R$array;->readingactions_read_now_button_background:I

    .line 557
    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    .line 556
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 558
    iget-object p2, p1, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->buyNow:Landroid/widget/Button;

    sget v0, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_read_button_text_color:I

    .line 559
    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    .line 558
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 574
    :goto_0
    sget-object p2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object p2

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->buyNow:Landroid/widget/Button;

    invoke-static {p2, p1}, Lcom/amazon/readingactions/ui/widget/WidgetBase;->setOrientationListener(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getBubbleContentView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    if-nez p2, :cond_0

    move-object/from16 v2, p3

    .line 325
    invoke-direct {v0, v2}, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->inflateBubbleView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    .line 326
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;

    .line 328
    iget-object v4, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    iget-object v4, v4, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v4, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v4, v4, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    .line 330
    iput v1, v3, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->index:I

    .line 332
    iget-object v5, v3, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->ratingBar:Landroid/widget/RatingBar;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 333
    iget-object v5, v3, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->ratingCount:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    iget-object v5, v3, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->title:Landroid/widget/TextView;

    iget-object v7, v4, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->title:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v5, v3, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->author:Landroid/widget/TextView;

    iget-object v7, v4, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    invoke-static {v7}, Lcom/amazon/ea/util/AuthorNameFormatterUtil;->formatAuthorList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v5, v3, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->shareButton:Landroid/widget/Button;

    new-instance v7, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter$1;

    invoke-direct {v7, v0, v4, v1}, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter$1;-><init>(Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;I)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    iget-object v5, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    invoke-virtual {v5}, Lcom/amazon/readingactions/ui/widget/BookGridBase;->isSharingSupported()Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    .line 346
    iget-object v5, v3, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->shareButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 348
    :cond_1
    iget-object v5, v3, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->shareButton:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 351
    :goto_1
    new-instance v5, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter$2;

    invoke-direct {v5, v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter$2;-><init>(Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;I)V

    .line 358
    iget-object v8, v3, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->seeInStore:Landroid/widget/Button;

    invoke-virtual {v8, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object v8, v3, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->seeInStoreChevron:Landroid/widget/ImageView;

    if-eqz v8, :cond_2

    .line 360
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    :cond_2
    invoke-direct {v0, v3, v4}, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->setBookDescription(Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;)V

    .line 366
    iget v5, v4, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->rating:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, v5, v8

    if-ltz v8, :cond_3

    const/high16 v8, 0x40a00000    # 5.0f

    cmpg-float v8, v5, v8

    if-gtz v8, :cond_3

    .line 367
    iget-object v8, v3, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v8, v5}, Landroid/widget/RatingBar;->setRating(F)V

    .line 368
    iget-object v5, v3, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v5, v7}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 370
    iget v5, v4, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->numberOfReviews:I

    if-ltz v5, :cond_3

    .line 371
    iget-object v8, v3, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->ratingCount:Landroid/widget/TextView;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v7

    const-string v5, "(%d)"

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v5, v3, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->ratingCount:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    iget-object v5, v3, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->ratingCount:Landroid/widget/TextView;

    sget v7, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    .line 374
    invoke-static {v7}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v7

    .line 373
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 378
    :cond_3
    iget-object v5, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    iget-object v7, v5, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v7, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    iget-boolean v7, v7, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->buyButtonVisible:Z

    if-eqz v7, :cond_4

    .line 380
    iget-object v5, v5, Lcom/amazon/readingactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v5}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getWidgetRefTagFactory()Lcom/amazon/ea/reftag/WidgetRefTagFactory;

    move-result-object v5

    iget-object v6, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    .line 381
    invoke-virtual {v6}, Lcom/amazon/readingactions/ui/widget/WidgetBase;->getWidgetPlacementRefTag()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    iget-object v8, v8, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v8, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v8, v8, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_pb_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/amazon/ea/reftag/WidgetRefTagFactory;->createRefTag(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/reftag/RefTag;

    move-result-object v5

    .line 382
    invoke-virtual {v5}, Lcom/amazon/ea/reftag/RefTag;->getRefTag()Ljava/lang/String;

    move-result-object v12

    .line 383
    iget-object v5, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    iget-object v5, v5, Lcom/amazon/readingactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v5}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getWidgetRefTagFactory()Lcom/amazon/ea/reftag/WidgetRefTagFactory;

    move-result-object v5

    iget-object v6, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    .line 384
    invoke-virtual {v6}, Lcom/amazon/readingactions/ui/widget/WidgetBase;->getWidgetPlacementRefTag()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    iget-object v8, v8, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v8, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v8, v8, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_b_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/amazon/ea/reftag/WidgetRefTagFactory;->createRefTag(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/reftag/RefTag;

    move-result-object v5

    .line 385
    invoke-virtual {v5}, Lcom/amazon/ea/reftag/RefTag;->getRefTag()Ljava/lang/String;

    move-result-object v13

    .line 386
    iget-object v5, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    iget-object v5, v5, Lcom/amazon/readingactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v5}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getWidgetRefTagFactory()Lcom/amazon/ea/reftag/WidgetRefTagFactory;

    move-result-object v5

    iget-object v6, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    .line 387
    invoke-virtual {v6}, Lcom/amazon/readingactions/ui/widget/WidgetBase;->getWidgetPlacementRefTag()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    iget-object v8, v8, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v8, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v8, v8, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_ub_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/amazon/ea/reftag/WidgetRefTagFactory;->createRefTag(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/reftag/RefTag;

    move-result-object v5

    .line 388
    invoke-virtual {v5}, Lcom/amazon/ea/reftag/RefTag;->getRefTag()Ljava/lang/String;

    move-result-object v14

    .line 389
    iget-object v5, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    iget-object v5, v5, Lcom/amazon/readingactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v5}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getWidgetRefTagFactory()Lcom/amazon/ea/reftag/WidgetRefTagFactory;

    move-result-object v5

    iget-object v6, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    .line 390
    invoke-virtual {v6}, Lcom/amazon/readingactions/ui/widget/WidgetBase;->getWidgetPlacementRefTag()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    iget-object v8, v8, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v8, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v8, v8, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_ku_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/amazon/ea/reftag/WidgetRefTagFactory;->createRefTag(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/reftag/RefTag;

    move-result-object v5

    .line 391
    invoke-virtual {v5}, Lcom/amazon/ea/reftag/RefTag;->getRefTag()Ljava/lang/String;

    move-result-object v15

    .line 394
    iget-object v5, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    invoke-virtual {v5}, Lcom/amazon/readingactions/ui/widget/WidgetBase;->getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/ea/guava/Maps;->newHashMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v5

    .line 395
    iget-object v6, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    iget-object v6, v6, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v6, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v6, v6, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "RecommendationCount"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object v6, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    invoke-static {v6}, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->access$100(Lcom/amazon/readingactions/ui/widget/BookGridWidget;)Lcom/amazon/readingactions/ui/widget/BookGridView;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Landroid/widget/ImageView;

    .line 398
    iget-object v6, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    invoke-static {v6}, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->access$200(Lcom/amazon/readingactions/ui/widget/BookGridWidget;)Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    move-result-object v6

    iget-object v7, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    iget-object v7, v7, Lcom/amazon/readingactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    invoke-virtual {v6, v1, v7}, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->getCoverDrawable(ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    iget-object v6, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    invoke-static {v6}, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->access$200(Lcom/amazon/readingactions/ui/widget/BookGridWidget;)Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    move-result-object v6

    iget-object v7, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    iget-object v7, v7, Lcom/amazon/readingactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    invoke-virtual {v6, v1, v7}, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->getCoverContentDescription(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 401
    new-instance v7, Lcom/amazon/ea/util/EABookShell;

    invoke-direct {v7, v4}, Lcom/amazon/ea/util/EABookShell;-><init>(Lcom/amazon/ea/sidecar/def/data/RecommendationData;)V

    .line 402
    new-instance v1, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter$3;

    invoke-direct {v1, v0, v3}, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter$3;-><init>(Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;)V

    .line 408
    iget-object v6, v3, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    iget-object v4, v0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    iget-object v8, v4, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-object v9, v8

    check-cast v9, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    iget-boolean v9, v9, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->buyInStore:Z

    check-cast v8, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    iget-boolean v10, v8, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->oneClickBorrowSupported:Z

    .line 409
    invoke-virtual {v4}, Lcom/amazon/readingactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v4

    const-string v16, "BookGridWidget"

    const-string v17, "AnyActionsBookGridWidget"

    move v8, v9

    move v9, v10

    move-object/from16 v10, v16

    move-object/from16 p2, v2

    move-object v2, v11

    move-object v11, v4

    move-object/from16 v16, v17

    move-object/from16 v17, v5

    move-object/from16 v18, v1

    .line 408
    invoke-virtual/range {v6 .. v18}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->initialize(Lcom/amazon/ea/util/EABookShell;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/amazon/readingactions/helpers/purchase/IPurchaseStatusListener;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;

    move-result-object v1

    .line 411
    iget-object v4, v3, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    invoke-virtual {v4, v2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setCurrentBookView(Landroid/view/View;)V

    .line 412
    invoke-direct {v0, v3, v1}, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->refreshView(Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;)V

    goto :goto_2

    :cond_4
    move-object/from16 p2, v2

    .line 414
    iget-object v1, v3, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->buyNow:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 418
    :goto_2
    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    .line 419
    sget v2, Lcom/amazon/kindle/ea/R$array;->startactions_divider_line:I

    invoke-static {v2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 420
    iget-object v4, v3, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 421
    iget-object v4, v3, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->author:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 422
    iget-object v4, v3, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->description:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 423
    iget-object v1, v3, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->topBorder:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 424
    iget-object v1, v3, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->bottomBorder:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method

.method public getCount()I
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    iget-object v0, v0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v0, v0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public inflateSeeInStoreButton(Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;Landroid/view/View;)V
    .locals 3

    .line 529
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    iget-object v0, v0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow;->getSABookStoreLabelText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 531
    invoke-static {}, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 532
    sget v1, Lcom/amazon/kindle/ea/R$id;->see_in_store_one_tap:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->seeInStore:Landroid/widget/Button;

    .line 533
    sget v1, Lcom/amazon/kindle/ea/R$id;->see_in_store_one_tap_chevron:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->seeInStoreChevron:Landroid/widget/ImageView;

    .line 534
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 535
    iget-object p2, p1, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->seeInStoreChevron:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 537
    :cond_0
    sget v1, Lcom/amazon/kindle/ea/R$id;->see_in_store:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p1, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->seeInStore:Landroid/widget/Button;

    .line 540
    :goto_0
    iget-object p2, p1, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->seeInStore:Landroid/widget/Button;

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 541
    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->seeInStore:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAccessibilityCoverAction(I)V
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    invoke-static {v0, p1}, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->access$400(Lcom/amazon/readingactions/ui/widget/BookGridWidget;I)V

    return-void
.end method

.method public onExpand(I)V
    .locals 4

    .line 460
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    iget-object v0, v0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    const-string v1, "DidAnything"

    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/startactions/metrics/Metric;->setCount(Ljava/lang/String;I)V

    .line 461
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    iget-object v0, v0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    const-string v1, "ExpandedGridCover"

    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 462
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    iget-object v0, v0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    invoke-virtual {v3}, Lcom/amazon/readingactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 463
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    iget-object v0, v0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    invoke-virtual {v3}, Lcom/amazon/readingactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, p1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    return-void
.end method

.method public updateSeeInStoreTheme(Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;)V
    .locals 2

    .line 579
    invoke-static {}, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 580
    iget-object v0, p1, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->seeInStore:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 581
    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_see_in_store_text_color:I

    .line 582
    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    .line 581
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 584
    :cond_0
    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->seeInStoreChevron:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 585
    sget v0, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_see_in_store_chevron:I

    .line 586
    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 585
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 589
    :cond_1
    iget-object v0, p1, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->seeInStore:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 590
    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    .line 591
    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    .line 590
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 592
    iget-object v0, p1, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->seeInStore:Landroid/widget/Button;

    sget v1, Lcom/amazon/kindle/ea/R$array;->readingactions_default_button_background:I

    .line 593
    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    .line 592
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 594
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;->seeInStore:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/amazon/readingactions/ui/widget/WidgetBase;->setOrientationListener(Landroid/content/Context;Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method
