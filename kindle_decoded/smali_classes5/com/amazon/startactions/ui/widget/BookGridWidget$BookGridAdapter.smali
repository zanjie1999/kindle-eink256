.class public Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;
.super Ljava/lang/Object;
.source "BookGridWidget.java"

# interfaces
.implements Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$BookGridAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/ui/widget/BookGridWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BookGridAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;


# direct methods
.method public constructor <init>(Lcom/amazon/startactions/ui/widget/BookGridWidget;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;)V
    .locals 0

    .line 366
    invoke-direct {p0, p1, p2}, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->refreshView(Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;)V

    return-void
.end method

.method private applyThemeRules(Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;)V
    .locals 2

    .line 591
    sget-object v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->PURCHASE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    invoke-direct {p0, p1, v0}, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->updateBuyNowTheme(Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;)V

    .line 592
    iget-object v0, p1, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->seeInStore:Landroid/widget/Button;

    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_button_text_color:I

    .line 593
    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 592
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 594
    iget-object v0, p1, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->shareButton:Landroid/widget/Button;

    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_button_text_color:I

    .line 595
    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 594
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 596
    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->shareButton:Landroid/widget/Button;

    sget v0, Lcom/amazon/kindle/ea/R$array;->anyactions_share_button:I

    .line 597
    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 596
    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private inflateBubbleView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 538
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$layout;->startactions_detail_bubble_content:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 541
    new-instance v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;-><init>(Lcom/amazon/startactions/ui/widget/BookGridWidget;Lcom/amazon/startactions/ui/widget/BookGridWidget$1;)V

    .line 542
    sget v1, Lcom/amazon/kindle/ea/R$id;->title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->title:Landroid/widget/TextView;

    .line 543
    sget v1, Lcom/amazon/kindle/ea/R$id;->book_grid_share_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->shareButton:Landroid/widget/Button;

    .line 544
    sget v1, Lcom/amazon/kindle/ea/R$id;->author:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->author:Landroid/widget/TextView;

    .line 545
    sget v1, Lcom/amazon/kindle/ea/R$id;->rating_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->ratingContainer:Landroid/view/ViewGroup;

    .line 546
    sget v1, Lcom/amazon/kindle/ea/R$id;->rating_bar:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RatingBar;

    iput-object v1, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->ratingBar:Landroid/widget/RatingBar;

    .line 547
    sget v1, Lcom/amazon/kindle/ea/R$id;->rating_count:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->ratingCount:Landroid/widget/TextView;

    .line 548
    sget v1, Lcom/amazon/kindle/ea/R$id;->see_in_store:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->seeInStore:Landroid/widget/Button;

    .line 549
    sget v1, Lcom/amazon/kindle/ea/R$id;->description:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->description:Landroid/widget/TextView;

    .line 550
    sget v1, Lcom/amazon/kindle/ea/R$id;->null_description_padding:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->nullDescriptionPadding:Landroid/view/View;

    .line 552
    sget v1, Lcom/amazon/kindle/ea/R$id;->startactions_ku_badge:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->kuBadge:Landroid/widget/ImageView;

    .line 553
    sget v1, Lcom/amazon/kindle/ea/R$id;->startactions_pr_badge:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->prBadge:Landroid/widget/ImageView;

    .line 554
    sget v1, Lcom/amazon/kindle/ea/R$id;->buy_now:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->buyNow:Landroid/widget/Button;

    .line 555
    sget v1, Lcom/amazon/kindle/ea/R$id;->cancel_purchase:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->cancelView:Landroid/widget/Button;

    .line 556
    sget v1, Lcom/amazon/kindle/ea/R$id;->purchase_failure:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->failureView:Landroid/widget/Button;

    .line 557
    sget v1, Lcom/amazon/kindle/ea/R$id;->failure_asset:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->failureAsset:Landroid/widget/ImageView;

    .line 559
    iget-object v1, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->seeInStore:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 560
    invoke-virtual {p0, v1}, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->setSeeInStoreLabelText(Landroid/widget/Button;)V

    .line 563
    :cond_0
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    iget-object v1, v1, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-boolean v1, v1, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->buyButtonVisible:Z

    if-eqz v1, :cond_1

    .line 564
    new-instance v1, Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    iget-object v2, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->buyNow:Landroid/widget/Button;

    invoke-direct {v1, v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;-><init>(Landroid/widget/Button;)V

    iput-object v1, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    .line 565
    iget-object v2, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->kuBadge:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->prBadge:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setBorrowView(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 566
    iget-object v1, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    iget-object v2, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->seeInStore:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setSeeInStoreButton(Landroid/widget/Button;)V

    .line 567
    iget-object v1, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    iget-object v2, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->cancelView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setCancelView(Landroid/widget/Button;)V

    .line 568
    iget-object v1, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    iget-object v2, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->failureView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setFailureView(Landroid/widget/Button;)V

    .line 569
    iget-object v1, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    iget-object v2, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->failureAsset:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setFailureAsset(Landroid/widget/ImageView;)V

    .line 570
    iget-object v1, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    sget v2, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    .line 571
    invoke-static {v2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v2

    .line 570
    invoke-virtual {v1, v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setStatusMessageColor(I)V

    .line 572
    iget-object v1, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    sget v2, Lcom/amazon/kindle/ea/R$array;->startactions_text_button_text_color_default:I

    .line 573
    invoke-static {v2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v2

    .line 572
    invoke-virtual {v1, v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setActionMessageColor(I)V

    .line 576
    :cond_1
    sget v1, Lcom/amazon/kindle/ea/R$id;->top_border:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->topBorder:Landroid/view/View;

    .line 577
    sget v1, Lcom/amazon/kindle/ea/R$id;->bottom_border:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->bottomBorder:Landroid/view/View;

    .line 579
    invoke-direct {p0, v0}, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->applyThemeRules(Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;)V

    .line 581
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p1
.end method

.method private refreshView(Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;)V
    .locals 0

    .line 622
    invoke-virtual {p2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;->getMode()Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->updateBuyNowTheme(Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;)V

    return-void
.end method

.method private updateBuyNowTheme(Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;)V
    .locals 1

    .line 601
    iget-object v0, p1, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->buyNow:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 605
    :cond_0
    sget-object v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$3;->$SwitchMap$com$amazon$readingactions$helpers$purchase$PurchaseMode:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    .line 613
    iget-object p2, p1, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->buyNow:Landroid/widget/Button;

    sget v0, Lcom/amazon/kindle/ea/R$array;->readingactions_purchase_button_background:I

    .line 614
    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 613
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 615
    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->buyNow:Landroid/widget/Button;

    sget p2, Lcom/amazon/kindle/ea/R$array;->readingactions_purchase_button_text_color:I

    .line 616
    invoke-static {p2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 615
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 607
    :cond_1
    iget-object p2, p1, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->buyNow:Landroid/widget/Button;

    sget v0, Lcom/amazon/kindle/ea/R$array;->readingactions_read_now_button_background:I

    .line 608
    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 607
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 609
    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->buyNow:Landroid/widget/Button;

    sget p2, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_read_button_text_color:I

    .line 610
    invoke-static {p2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result p2

    .line 609
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getBubbleContentView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    if-nez p2, :cond_0

    move-object/from16 v2, p3

    .line 406
    invoke-direct {v0, v2}, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->inflateBubbleView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    .line 407
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;

    .line 409
    iget-object v4, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    iget-object v4, v4, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v4, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v4, v4, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    .line 411
    iput v1, v3, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->index:I

    .line 413
    iget-object v5, v3, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->ratingBar:Landroid/widget/RatingBar;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 414
    iget-object v5, v3, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->ratingCount:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 416
    iget-object v5, v3, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->title:Landroid/widget/TextView;

    iget-object v7, v4, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->title:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v5, v3, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->author:Landroid/widget/TextView;

    iget-object v7, v4, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    invoke-static {v7}, Lcom/amazon/ea/util/AuthorNameFormatterUtil;->formatAuthorList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v5, v3, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->shareButton:Landroid/widget/Button;

    new-instance v7, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter$1;

    invoke-direct {v7, v0, v4, v1}, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter$1;-><init>(Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;I)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    iget-object v5, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    invoke-static {v5}, Lcom/amazon/startactions/ui/widget/BookGridWidget;->access$900(Lcom/amazon/startactions/ui/widget/BookGridWidget;)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    .line 427
    iget-object v5, v3, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->shareButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 429
    :cond_1
    iget-object v5, v3, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->shareButton:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 432
    :goto_1
    iget-object v5, v3, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->seeInStore:Landroid/widget/Button;

    new-instance v8, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter$2;

    invoke-direct {v8, v0, v1}, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter$2;-><init>(Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;I)V

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    iget-object v5, v4, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 442
    iget-object v5, v3, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->description:Landroid/widget/TextView;

    iget-object v8, v4, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v5, v3, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->description:Landroid/widget/TextView;

    sget v8, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    .line 444
    invoke-static {v8}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v8

    .line 443
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 445
    iget-object v5, v3, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 446
    iget-object v5, v3, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->nullDescriptionPadding:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 448
    :cond_2
    iget-object v5, v3, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 449
    iget-object v5, v3, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->nullDescriptionPadding:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 452
    :goto_2
    iget v5, v4, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->rating:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, v5, v8

    if-ltz v8, :cond_3

    const/high16 v8, 0x40a00000    # 5.0f

    cmpg-float v8, v5, v8

    if-gtz v8, :cond_3

    .line 453
    iget-object v8, v3, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v8, v5}, Landroid/widget/RatingBar;->setRating(F)V

    .line 454
    iget-object v5, v3, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v5, v7}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 456
    iget v5, v4, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->numberOfReviews:I

    if-ltz v5, :cond_3

    .line 457
    iget-object v8, v3, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->ratingCount:Landroid/widget/TextView;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v7

    const-string v5, "(%d)"

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v5, v3, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->ratingCount:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 459
    iget-object v5, v3, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->ratingCount:Landroid/widget/TextView;

    sget v7, Lcom/amazon/kindle/ea/R$array;->startactions_text_secondary_color:I

    .line 460
    invoke-static {v7}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v7

    .line 459
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 464
    :cond_3
    iget-object v5, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    iget-object v7, v5, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v7, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-boolean v7, v7, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->buyButtonVisible:Z

    if-eqz v7, :cond_4

    .line 466
    iget-object v5, v5, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v5}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getWidgetRefTagFactory()Lcom/amazon/ea/reftag/WidgetRefTagFactory;

    move-result-object v5

    iget-object v6, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    .line 467
    invoke-virtual {v6}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getWidgetPlacementRefTag()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    iget-object v8, v8, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v8, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v8, v8, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_pb_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/amazon/ea/reftag/WidgetRefTagFactory;->createRefTag(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/reftag/RefTag;

    move-result-object v5

    .line 468
    invoke-virtual {v5}, Lcom/amazon/ea/reftag/RefTag;->getRefTag()Ljava/lang/String;

    move-result-object v12

    .line 469
    iget-object v5, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    iget-object v5, v5, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v5}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getWidgetRefTagFactory()Lcom/amazon/ea/reftag/WidgetRefTagFactory;

    move-result-object v5

    iget-object v6, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    .line 470
    invoke-virtual {v6}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getWidgetPlacementRefTag()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    iget-object v8, v8, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v8, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v8, v8, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_b_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/amazon/ea/reftag/WidgetRefTagFactory;->createRefTag(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/reftag/RefTag;

    move-result-object v5

    .line 471
    invoke-virtual {v5}, Lcom/amazon/ea/reftag/RefTag;->getRefTag()Ljava/lang/String;

    move-result-object v13

    .line 472
    iget-object v5, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    iget-object v5, v5, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v5}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getWidgetRefTagFactory()Lcom/amazon/ea/reftag/WidgetRefTagFactory;

    move-result-object v5

    iget-object v6, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    .line 473
    invoke-virtual {v6}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getWidgetPlacementRefTag()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    iget-object v8, v8, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v8, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v8, v8, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_ub_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/amazon/ea/reftag/WidgetRefTagFactory;->createRefTag(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/reftag/RefTag;

    move-result-object v5

    .line 474
    invoke-virtual {v5}, Lcom/amazon/ea/reftag/RefTag;->getRefTag()Ljava/lang/String;

    move-result-object v14

    .line 475
    iget-object v5, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    iget-object v5, v5, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v5}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getWidgetRefTagFactory()Lcom/amazon/ea/reftag/WidgetRefTagFactory;

    move-result-object v5

    iget-object v6, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    .line 476
    invoke-virtual {v6}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getWidgetPlacementRefTag()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    iget-object v8, v8, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v8, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v8, v8, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_ku_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/amazon/ea/reftag/WidgetRefTagFactory;->createRefTag(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/reftag/RefTag;

    move-result-object v5

    .line 477
    invoke-virtual {v5}, Lcom/amazon/ea/reftag/RefTag;->getRefTag()Ljava/lang/String;

    move-result-object v15

    .line 480
    iget-object v5, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    invoke-virtual {v5}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/ea/guava/Maps;->newHashMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v5

    .line 481
    iget-object v6, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    iget-object v6, v6, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v6, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v6, v6, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "RecommendationCount"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    iget-object v6, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    invoke-static {v6}, Lcom/amazon/startactions/ui/widget/BookGridWidget;->access$000(Lcom/amazon/startactions/ui/widget/BookGridWidget;)Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Landroid/widget/ImageView;

    .line 484
    invoke-virtual/range {p0 .. p1}, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->getCoverDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 485
    invoke-virtual/range {p0 .. p1}, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->getCoverContentDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 487
    new-instance v7, Lcom/amazon/ea/util/EABookShell;

    invoke-direct {v7, v4}, Lcom/amazon/ea/util/EABookShell;-><init>(Lcom/amazon/ea/sidecar/def/data/RecommendationData;)V

    .line 488
    new-instance v1, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter$3;

    invoke-direct {v1, v0, v3}, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter$3;-><init>(Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;)V

    .line 494
    iget-object v6, v3, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    iget-object v4, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    iget-object v8, v4, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-object v9, v8

    check-cast v9, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-boolean v9, v9, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->buyInStore:Z

    check-cast v8, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-boolean v10, v8, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->oneClickBorrowSupported:Z

    .line 495
    invoke-virtual {v4}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

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

    .line 494
    invoke-virtual/range {v6 .. v18}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->initialize(Lcom/amazon/ea/util/EABookShell;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/amazon/readingactions/helpers/purchase/IPurchaseStatusListener;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;

    move-result-object v1

    .line 497
    iget-object v4, v3, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-virtual {v4, v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setCurrentBookView(Landroid/view/View;)V

    .line 498
    invoke-direct {v0, v3, v1}, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->refreshView(Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;)V

    goto :goto_3

    :cond_4
    move-object/from16 p2, v2

    .line 500
    iget-object v1, v3, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->buyNow:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 504
    :goto_3
    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    .line 505
    sget v2, Lcom/amazon/kindle/ea/R$array;->startactions_divider_line:I

    invoke-static {v2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 506
    iget-object v4, v3, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 507
    iget-object v4, v3, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->author:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 508
    iget-object v4, v3, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 509
    iget-object v1, v3, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->topBorder:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 510
    iget-object v1, v3, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;->bottomBorder:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method

.method public getCount()I
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCoverContentDescription(I)Ljava/lang/String;
    .locals 5

    .line 399
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    .line 400
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/ea/R$string;->endactions_title_by_author:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->title:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    .line 401
    invoke-static {p1}, Lcom/amazon/ea/util/AuthorNameFormatterUtil;->formatAuthorList(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 400
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCoverDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 374
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 375
    invoke-static {}, Lcom/amazon/startactions/ui/widget/BookGridWidget;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting cover drawable [index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "].  [reloaded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    invoke-static {v2}, Lcom/amazon/startactions/ui/widget/BookGridWidget;->access$600(Lcom/amazon/startactions/ui/widget/BookGridWidget;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] [recImages="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    .line 376
    invoke-static {v2}, Lcom/amazon/startactions/ui/widget/BookGridWidget;->access$700(Lcom/amazon/startactions/ui/widget/BookGridWidget;)Lcom/amazon/startactions/storage/ImageBatchDownloader;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->get(I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 375
    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :cond_2
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    invoke-static {v0}, Lcom/amazon/startactions/ui/widget/BookGridWidget;->access$600(Lcom/amazon/startactions/ui/widget/BookGridWidget;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 382
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    iget-object v1, v1, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    invoke-direct {p1, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1

    .line 386
    :cond_3
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    invoke-static {v0}, Lcom/amazon/startactions/ui/widget/BookGridWidget;->access$700(Lcom/amazon/startactions/ui/widget/BookGridWidget;)Lcom/amazon/startactions/storage/ImageBatchDownloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->get(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 388
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    iget-object v1, v1, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    invoke-direct {p1, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1

    .line 392
    :cond_4
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    .line 393
    new-instance v0, Lcom/amazon/ea/ui/PlaceholderCoverDrawable;

    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->title:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    .line 394
    invoke-static {p1}, Lcom/amazon/ea/util/AuthorNameFormatterUtil;->formatAuthorList(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/ea/ui/PlaceholderCoverDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onAccessibilityCoverAction(I)V
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    invoke-static {v0, p1}, Lcom/amazon/startactions/ui/widget/BookGridWidget;->access$1000(Lcom/amazon/startactions/ui/widget/BookGridWidget;I)V

    return-void
.end method

.method public onExpand(I)V
    .locals 4

    .line 517
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    const-string v1, "DidAnything"

    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/startactions/metrics/Metric;->setCount(Ljava/lang/String;I)V

    .line 518
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    const-string v1, "ExpandedGridCover"

    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 519
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    invoke-virtual {v3}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 520
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    invoke-virtual {v3}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, p1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSeeInStoreLabelText(Landroid/widget/Button;)V
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow;->getSABookStoreLabelText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
