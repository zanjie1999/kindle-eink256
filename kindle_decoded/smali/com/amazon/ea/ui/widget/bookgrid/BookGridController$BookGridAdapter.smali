.class public Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;
.super Ljava/lang/Object;
.source "BookGridController.java"

# interfaces
.implements Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$BookGridAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BookGridAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;


# direct methods
.method public constructor <init>(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2000(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;)V
    .locals 0

    .line 418
    invoke-direct {p0, p1, p2}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->refreshView(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;)V

    return-void
.end method

.method private applyThemeRules(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;)V
    .locals 2

    .line 705
    sget-object v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->PURCHASE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    invoke-direct {p0, p1, v0}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->updateBuyNowTheme(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;)V

    .line 706
    iget-object v0, p1, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->readNow:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 707
    sget v1, Lcom/amazon/kindle/ea/R$array;->readingactions_read_now_button_background:I

    .line 708
    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 707
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 709
    iget-object v0, p1, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->readNow:Landroid/widget/Button;

    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_read_button_text_color:I

    .line 710
    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    .line 709
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 712
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->updateSeeInStoreTheme(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;)V

    return-void
.end method

.method private createCommmonHolder(Landroid/view/View;)Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;
    .locals 2

    .line 674
    new-instance v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-direct {v0, v1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;-><init>(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)V

    .line 676
    sget v1, Lcom/amazon/kindle/ea/R$id;->title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->title:Landroid/widget/TextView;

    .line 677
    sget v1, Lcom/amazon/kindle/ea/R$id;->author:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->author:Landroid/widget/TextView;

    .line 678
    sget v1, Lcom/amazon/kindle/ea/R$id;->rating_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->ratingContainer:Landroid/view/ViewGroup;

    .line 679
    sget v1, Lcom/amazon/kindle/ea/R$id;->rating_bar:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RatingBar;

    iput-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->ratingBar:Landroid/widget/RatingBar;

    .line 680
    sget v1, Lcom/amazon/kindle/ea/R$id;->rating_count:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->ratingCount:Landroid/widget/TextView;

    .line 681
    sget v1, Lcom/amazon/kindle/ea/R$id;->book_grid_share_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->shareButton:Landroid/widget/Button;

    .line 682
    sget v1, Lcom/amazon/kindle/ea/R$id;->description:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->description:Landroid/widget/TextView;

    return-object v0
.end method

.method private inflateBubbleView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 565
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$3600(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/startactions/ui/IAnyActionsUIController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$layout;->endactions_detail_bubble_content:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 568
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$3700(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->inflateOneTapPurchaseView(Landroid/view/View;)Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->inflateLegacyPurchaseView(Landroid/view/View;)Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;

    move-result-object v0

    .line 571
    :goto_0
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$3800(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-boolean v1, v1, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->buyButtonVisible:Z

    if-eqz v1, :cond_2

    .line 572
    new-instance v1, Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    iget-object v2, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->buyNow:Landroid/widget/Button;

    invoke-direct {v1, v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;-><init>(Landroid/widget/Button;)V

    iput-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    .line 573
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$3700(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 574
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    iget-object v2, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->readNow:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setReadButton(Landroid/widget/Button;)V

    .line 575
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    iget-object v2, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v2}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$3900(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/ea/R$color;->aa_amazon_blue:I

    .line 576
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 575
    invoke-virtual {v1, v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setActionMessageColor(I)V

    .line 577
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    iget-object v2, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v2}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$4000(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/ea/R$color;->anyactions_amazon_orange_light:I

    .line 578
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 577
    invoke-virtual {v1, v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setErrorMessageColor(I)V

    .line 579
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    iget-object v2, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->kuBadge:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->prBadge:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->includedWithMembershipTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setBorrowView(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 581
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    iget-object v2, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->addToLib:Landroid/widget/Button;

    iget-object v3, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->inYourLibText:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->inYourLibAsset:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setAddToLibViewSet(Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 582
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    iget-object v2, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->addToLibContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setAddToLibContainer(Landroid/view/View;)V

    .line 583
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    iget-object v2, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->cancelButton:Landroid/widget/Button;

    iget-object v3, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->cancelToast:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->cancelAsset:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setCancelView(Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 584
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    iget-object v2, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->buySuccessToast:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->buySuccessAsset:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setBuySuccessView(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_1

    .line 586
    :cond_1
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    iget-object v2, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v2}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$4100(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/ea/R$color;->anyactions_amazon_orange_light:I

    .line 587
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 586
    invoke-virtual {v1, v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setActionMessageColor(I)V

    .line 588
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    iget-object v2, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->kuBadge:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->prBadge:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setBorrowView(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 591
    :goto_1
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    iget-object v2, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->seeInStore:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setSeeInStoreButton(Landroid/widget/Button;)V

    .line 592
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    iget-object v2, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->seeInStoreChevron:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setSeeInStoreChevron(Landroid/widget/ImageView;)V

    .line 593
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    iget-object v2, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->cancelView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setCancelView(Landroid/widget/Button;)V

    .line 594
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    iget-object v2, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->failureView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setFailureView(Landroid/widget/Button;)V

    .line 595
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    iget-object v2, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->failureAsset:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setFailureAsset(Landroid/widget/ImageView;)V

    .line 596
    iget-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    iget-object v2, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v2}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$4200(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/ea/R$color;->endactions_amazon_black:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setStatusMessageColor(I)V

    .line 599
    :cond_2
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$3700(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 600
    invoke-direct {p0, v0}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->applyThemeRules(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;)V

    .line 603
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p1
.end method

.method private inflateLegacyPurchaseView(Landroid/view/View;)Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;
    .locals 2

    .line 608
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->createCommmonHolder(Landroid/view/View;)Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;

    move-result-object v0

    const/4 v1, 0x0

    .line 610
    invoke-virtual {p0, v0, p1, v1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->inflateSeeInStoreButton(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;Landroid/view/View;Z)V

    .line 611
    sget v1, Lcom/amazon/kindle/ea/R$id;->buy_now:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->buyNow:Landroid/widget/Button;

    .line 612
    sget v1, Lcom/amazon/kindle/ea/R$id;->endactions_ku_badge:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->kuBadge:Landroid/widget/ImageView;

    .line 613
    sget v1, Lcom/amazon/kindle/ea/R$id;->endactions_pr_badge:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->prBadge:Landroid/widget/ImageView;

    .line 614
    sget v1, Lcom/amazon/kindle/ea/R$id;->cancel_purchase:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->cancelView:Landroid/widget/Button;

    .line 615
    sget v1, Lcom/amazon/kindle/ea/R$id;->purchase_failure:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->failureView:Landroid/widget/Button;

    .line 616
    sget v1, Lcom/amazon/kindle/ea/R$id;->failure_asset:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->failureAsset:Landroid/widget/ImageView;

    return-object v0
.end method

.method private inflateOneTapPurchaseView(Landroid/view/View;)Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;
    .locals 3

    .line 622
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->createCommmonHolder(Landroid/view/View;)Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;

    move-result-object v0

    const/4 v1, 0x1

    .line 624
    invoke-virtual {p0, v0, p1, v1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->inflateSeeInStoreButton(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;Landroid/view/View;Z)V

    .line 625
    sget v1, Lcom/amazon/kindle/ea/R$id;->buy_now_one_tap:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->buyNow:Landroid/widget/Button;

    .line 626
    sget v1, Lcom/amazon/kindle/ea/R$id;->endactions_ku_badge_one_tap:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->kuBadge:Landroid/widget/ImageView;

    .line 627
    sget v1, Lcom/amazon/kindle/ea/R$id;->endactions_pr_badge_one_tap:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->prBadge:Landroid/widget/ImageView;

    .line 628
    sget v1, Lcom/amazon/kindle/ea/R$id;->cancel_purchase_one_tap:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->cancelView:Landroid/widget/Button;

    .line 629
    sget v1, Lcom/amazon/kindle/ea/R$id;->purchase_failure_one_tap:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->failureView:Landroid/widget/Button;

    .line 630
    sget v1, Lcom/amazon/kindle/ea/R$id;->failure_asset_one_tap:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->failureAsset:Landroid/widget/ImageView;

    .line 631
    sget v1, Lcom/amazon/kindle/ea/R$id;->read_now_one_tap:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->readNow:Landroid/widget/Button;

    .line 632
    sget v1, Lcom/amazon/kindle/ea/R$id;->included_blurb_one_tap:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->includedWithMembershipTextView:Landroid/widget/TextView;

    .line 634
    sget v1, Lcom/amazon/kindle/ea/R$id;->add_to_lib_one_tap:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->addToLib:Landroid/widget/Button;

    .line 635
    sget v1, Lcom/amazon/kindle/ea/R$id;->in_your_library:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->inYourLibText:Landroid/widget/TextView;

    .line 636
    sget v1, Lcom/amazon/kindle/ea/R$id;->save_to_lib_check_mark:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->inYourLibAsset:Landroid/widget/ImageView;

    .line 637
    sget v1, Lcom/amazon/kindle/ea/R$id;->save_to_lib_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->addToLibContainer:Landroid/view/View;

    .line 638
    sget v1, Lcom/amazon/kindle/ea/R$id;->buy_success_onetap_toast:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->buySuccessToast:Landroid/widget/TextView;

    .line 639
    sget v1, Lcom/amazon/kindle/ea/R$id;->buy_success_onetap_checkmark:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->buySuccessAsset:Landroid/widget/ImageView;

    .line 640
    sget v1, Lcom/amazon/kindle/ea/R$id;->cancel_purchase_one_tap:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->cancelButton:Landroid/widget/Button;

    .line 641
    sget v1, Lcom/amazon/kindle/ea/R$id;->cancel_onetap_complete:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->cancelToast:Landroid/widget/TextView;

    .line 642
    sget v1, Lcom/amazon/kindle/ea/R$id;->cancel_onetap_checkmark:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->cancelAsset:Landroid/widget/ImageView;

    .line 644
    iget-object p1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->seeInStore:Landroid/widget/Button;

    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_see_in_store_text_color:I

    .line 645
    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    .line 644
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 646
    iget-object p1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->seeInStoreChevron:Landroid/widget/ImageView;

    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_see_in_store_chevron:I

    .line 647
    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 646
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 648
    iget-object p1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->buyNow:Landroid/widget/Button;

    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_buy_button_bg:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedResourceId(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 649
    iget-object p1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->buyNow:Landroid/widget/Button;

    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_buy_button_text_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 650
    sget-object p1, Lcom/amazon/readingactions/ui/helpers/OrientationResizer;->Companion:Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$4300(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->buyNow:Landroid/widget/Button;

    invoke-virtual {p1, v1, v2}, Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;->setWidthOrientationListener(Landroid/content/Context;Landroid/view/View;)V

    .line 651
    iget-object p1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->readNow:Landroid/widget/Button;

    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_read_button_bg:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedResourceId(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 652
    iget-object p1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->readNow:Landroid/widget/Button;

    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_read_button_text_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 653
    sget-object p1, Lcom/amazon/readingactions/ui/helpers/OrientationResizer;->Companion:Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$4400(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->readNow:Landroid/widget/Button;

    invoke-virtual {p1, v1, v2}, Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;->setWidthOrientationListener(Landroid/content/Context;Landroid/view/View;)V

    .line 654
    iget-object p1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->kuBadge:Landroid/widget/ImageView;

    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_KU_badge:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 655
    iget-object p1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->includedWithMembershipTextView:Landroid/widget/TextView;

    sget v1, Lcom/amazon/kindle/ea/R$array;->endations_onetap_KU_badge_text_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 656
    iget-object p1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->addToLib:Landroid/widget/Button;

    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_add_to_lib_button_bg:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedResourceId(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 657
    iget-object p1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->addToLib:Landroid/widget/Button;

    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_add_to_lib_button_text_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 658
    sget-object p1, Lcom/amazon/readingactions/ui/helpers/OrientationResizer;->Companion:Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$4500(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->addToLib:Landroid/widget/Button;

    invoke-virtual {p1, v1, v2}, Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;->setWidthOrientationListener(Landroid/content/Context;Landroid/view/View;)V

    .line 659
    iget-object p1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->inYourLibText:Landroid/widget/TextView;

    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_in_you_lib_text:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 660
    iget-object p1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->inYourLibAsset:Landroid/widget/ImageView;

    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_checkmark:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 661
    iget-object p1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->addToLibContainer:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 662
    sget-object p1, Lcom/amazon/readingactions/ui/helpers/OrientationResizer;->Companion:Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$4600(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->addToLibContainer:Landroid/view/View;

    invoke-virtual {p1, v1, v2}, Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;->setWidthOrientationListener(Landroid/content/Context;Landroid/view/View;)V

    .line 663
    iget-object p1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->addToLibContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 664
    iget-object p1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->addToLibContainer:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_add_to_lib_button_bg:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 666
    :cond_0
    iget-object p1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->buySuccessToast:Landroid/widget/TextView;

    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_buy_success_toast_text:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 667
    iget-object p1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->buySuccessAsset:Landroid/widget/ImageView;

    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_checkmark:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 668
    iget-object p1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->cancelToast:Landroid/widget/TextView;

    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_buy_cancel_complete_text:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 669
    iget-object p1, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->cancelAsset:Landroid/widget/ImageView;

    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_checkmark:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private refreshView(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;)V
    .locals 0

    .line 758
    invoke-virtual {p2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;->getMode()Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->updateBuyNowTheme(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;)V

    return-void
.end method

.method private updateBuyNowTheme(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;)V
    .locals 1

    .line 716
    iget-object v0, p1, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->buyNow:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 720
    :cond_0
    sget-object v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$3;->$SwitchMap$com$amazon$readingactions$helpers$purchase$PurchaseMode:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    .line 732
    iget-object p2, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {p2}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$3700(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 733
    iget-object p2, p1, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->buyNow:Landroid/widget/Button;

    sget v0, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_buy_button_bg:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedResourceId(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 735
    :cond_1
    iget-object p2, p1, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->buyNow:Landroid/widget/Button;

    sget v0, Lcom/amazon/kindle/ea/R$array;->readingactions_purchase_button_background:I

    .line 736
    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 735
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 738
    :goto_0
    iget-object p1, p1, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->buyNow:Landroid/widget/Button;

    sget p2, Lcom/amazon/kindle/ea/R$array;->readingactions_purchase_button_text_color:I

    .line 739
    invoke-static {p2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 738
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    .line 722
    :cond_2
    iget-object p2, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {p2}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$3700(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 723
    iget-object p2, p1, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->buyNow:Landroid/widget/Button;

    sget v0, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_buy_button_bg:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedResourceId(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 725
    :cond_3
    iget-object p2, p1, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->buyNow:Landroid/widget/Button;

    sget v0, Lcom/amazon/kindle/ea/R$array;->readingactions_read_now_button_background:I

    .line 726
    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 725
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 728
    :goto_1
    iget-object p1, p1, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->buyNow:Landroid/widget/Button;

    sget p2, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_read_button_text_color:I

    .line 729
    invoke-static {p2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result p2

    .line 728
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    :goto_2
    return-void
.end method

.method private updateSeeInStoreTheme(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;)V
    .locals 2

    .line 745
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$3700(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 746
    iget-object v0, p1, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->seeInStore:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 747
    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_see_in_store_text_color:I

    .line 748
    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    .line 747
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 750
    :cond_0
    iget-object p1, p1, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->seeInStoreChevron:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 751
    sget v0, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_see_in_store_chevron:I

    .line 752
    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 751
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getBubbleContentView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    if-nez p2, :cond_0

    move-object/from16 v2, p3

    .line 458
    invoke-direct {v0, v2}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->inflateBubbleView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    .line 460
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;

    .line 462
    iget-object v4, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v4}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$1500(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v4

    check-cast v4, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v4, v4, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    .line 464
    iput v1, v3, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->index:I

    .line 466
    iget-object v5, v3, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->description:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 467
    iget-object v5, v3, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v5, v6}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 468
    iget-object v5, v3, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->ratingCount:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 470
    iget-object v5, v3, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->title:Landroid/widget/TextView;

    iget-object v7, v4, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->title:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v5, v3, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->author:Landroid/widget/TextView;

    iget-object v7, v4, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    invoke-static {v7}, Lcom/amazon/ea/util/AuthorNameFormatterUtil;->formatAuthorList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v5, v3, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->shareButton:Landroid/widget/Button;

    new-instance v7, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter$1;

    invoke-direct {v7, v0, v4, v1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter$1;-><init>(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;I)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    iget-object v5, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v5}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$1700(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    .line 482
    iget-object v5, v3, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->shareButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 484
    :cond_1
    iget-object v5, v3, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->shareButton:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 487
    :goto_1
    iget-object v5, v4, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 488
    iget-object v5, v3, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->description:Landroid/widget/TextView;

    iget-object v8, v4, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v5, v3, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 492
    :cond_2
    iget v5, v4, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->rating:F

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    cmpl-float v8, v5, v8

    if-ltz v8, :cond_3

    const/high16 v8, 0x40a00000    # 5.0f

    cmpg-float v8, v5, v8

    if-gtz v8, :cond_3

    .line 493
    iget-object v8, v3, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v8, v5}, Landroid/widget/RatingBar;->setRating(F)V

    .line 494
    iget-object v5, v3, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v5, v7}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 495
    iget v5, v4, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->numberOfReviews:I

    if-ltz v5, :cond_3

    .line 496
    iget-object v8, v3, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->ratingCount:Landroid/widget/TextView;

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v7

    const-string v5, "(%d)"

    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v5, v3, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->ratingCount:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 501
    :cond_3
    iget-object v5, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v5}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$1800(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v5

    check-cast v5, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-boolean v5, v5, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->buyButtonVisible:Z

    if-eqz v5, :cond_4

    .line 502
    invoke-static {v9}, Lcom/amazon/ea/guava/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v5

    .line 503
    iget-object v6, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v6}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$1900(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v6

    check-cast v6, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v6, v6, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v7, "MetricsTag"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    iget-object v6, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v6}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$000(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 506
    invoke-virtual/range {p0 .. p1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->getCoverDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 507
    invoke-virtual/range {p0 .. p1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->getCoverContentDescription(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 509
    new-instance v11, Lcom/amazon/ea/util/EABookShell;

    invoke-direct {v11, v4}, Lcom/amazon/ea/util/EABookShell;-><init>(Lcom/amazon/ea/sidecar/def/data/RecommendationData;)V

    .line 510
    new-instance v4, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter$2;

    invoke-direct {v4, v0, v3}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter$2;-><init>(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;)V

    .line 516
    iget-object v10, v3, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    iget-object v7, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v7}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$2100(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v7

    check-cast v7, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-boolean v12, v7, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->buyInStore:Z

    iget-object v7, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v7}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$2200(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v7

    check-cast v7, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-boolean v13, v7, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->oneClickBorrowSupported:Z

    iget-object v7, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    .line 517
    invoke-static {v7}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$2300(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v7

    check-cast v7, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v15, v7, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    iget-object v7, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    .line 518
    invoke-static {v7}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$2400(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v7

    check-cast v7, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v7, v7, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v9}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$2500(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v9

    check-cast v9, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v9, v9, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_pb_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    iget-object v7, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    .line 519
    invoke-static {v7}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$2600(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v7

    check-cast v7, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v7, v7, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v9}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$2700(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v9

    check-cast v9, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v9, v9, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_b_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    iget-object v7, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    .line 520
    invoke-static {v7}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$2800(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v7

    check-cast v7, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v7, v7, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v9}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$2900(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v9

    check-cast v9, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v9, v9, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_ub_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    iget-object v7, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    .line 521
    invoke-static {v7}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$3000(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v7

    check-cast v7, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v7, v7, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v9}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$3100(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v9

    check-cast v9, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v9, v9, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_ku_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v14, "BookGridWidget"

    const-string v20, "AnyActionsBookGridWidget"

    move-object/from16 v21, v5

    move-object/from16 v22, v4

    .line 516
    invoke-virtual/range {v10 .. v22}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->initialize(Lcom/amazon/ea/util/EABookShell;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/amazon/readingactions/helpers/purchase/IPurchaseStatusListener;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;

    move-result-object v4

    .line 523
    iget-object v5, v3, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-virtual {v5, v6}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setCurrentBookView(Landroid/view/View;)V

    .line 524
    invoke-direct {v0, v3, v4}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->refreshView(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;)V

    goto :goto_2

    .line 526
    :cond_4
    iget-object v4, v3, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->buyNow:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 529
    :goto_2
    new-instance v4, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter$3;

    invoke-direct {v4, v0, v1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter$3;-><init>(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;I)V

    .line 536
    iget-object v1, v3, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->seeInStore:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    iget-object v1, v3, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->seeInStoreChevron:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    .line 538
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-object v2
.end method

.method public getCount()I
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$700(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCoverContentDescription(I)Ljava/lang/String;
    .locals 5

    .line 451
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$1300(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    .line 452
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$1400(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$string;->endactions_title_by_author:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->title:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    .line 453
    invoke-static {p1}, Lcom/amazon/ea/util/AuthorNameFormatterUtil;->formatAuthorList(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 452
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCoverDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 426
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 427
    invoke-static {}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting cover drawable [index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "].  [reloaded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v2}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$800(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

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

    iget-object v2, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    .line 428
    invoke-static {v2}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$900(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/startactions/storage/ImageBatchDownloader;

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

    .line 427
    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_2
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$800(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 434
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$1000(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1

    .line 438
    :cond_3
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$900(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/startactions/storage/ImageBatchDownloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->get(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 440
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$1100(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1

    .line 444
    :cond_4
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$1200(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    .line 445
    new-instance v0, Lcom/amazon/ea/ui/PlaceholderCoverDrawable;

    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->title:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    .line 446
    invoke-static {p1}, Lcom/amazon/ea/util/AuthorNameFormatterUtil;->formatAuthorList(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/ea/ui/PlaceholderCoverDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public inflateSeeInStoreButton(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;Landroid/view/View;Z)V
    .locals 2

    .line 689
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$4700(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow;->getEABookStoreLabelText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 692
    sget p3, Lcom/amazon/kindle/ea/R$id;->see_in_store_one_tap:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    iput-object p3, p1, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->seeInStore:Landroid/widget/Button;

    .line 693
    sget p3, Lcom/amazon/kindle/ea/R$id;->see_in_store_one_tap_chevron:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->seeInStoreChevron:Landroid/widget/ImageView;

    .line 694
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 695
    iget-object p2, p1, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->seeInStoreChevron:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 697
    :cond_0
    sget p3, Lcom/amazon/kindle/ea/R$id;->see_in_store:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p1, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->seeInStore:Landroid/widget/Button;

    .line 700
    :goto_0
    iget-object p2, p1, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->seeInStore:Landroid/widget/Button;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 701
    iget-object p1, p1, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;->seeInStore:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAccessibilityCoverAction(I)V
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v0, p1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$3300(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;I)V

    return-void
.end method

.method public onExpand(I)V
    .locals 5

    .line 546
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "DidAnything"

    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 547
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "ExpandedGridCover"

    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 548
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v3, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v3}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$3400(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v3

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 549
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExpandedGridCover."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {v3}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$3500(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v3

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".%d"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    return-void
.end method
