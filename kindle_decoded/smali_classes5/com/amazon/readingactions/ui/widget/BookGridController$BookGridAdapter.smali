.class final Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;
.super Ljava/lang/Object;
.source "BookGridController.kt"

# interfaces
.implements Lcom/amazon/readingactions/ui/widget/BookGridView$BookGridAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/BookGridController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BookGridAdapter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBookGridController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BookGridController.kt\ncom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter\n*L\n1#1,726:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;


# direct methods
.method public constructor <init>(Lcom/amazon/readingactions/ui/widget/BookGridController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 300
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$refreshView(Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;)V
    .locals 0

    .line 300
    invoke-direct {p0, p1, p2}, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->refreshView(Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;)V

    return-void
.end method

.method private final applyThemeRules(Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;)V
    .locals 3

    .line 604
    sget-object v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->PURCHASE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    invoke-direct {p0, p1, v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->updateButtonsTheme(Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;)V

    .line 605
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getShareButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 607
    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_button_text_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 606
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 609
    sget v1, Lcom/amazon/kindle/ea/R$array;->anyactions_share_button:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    .line 608
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 611
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getReadNow()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 613
    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_read_button_text_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    .line 612
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 615
    sget v1, Lcom/amazon/kindle/ea/R$array;->readingactions_read_now_button_background:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    .line 614
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 617
    sget-object v1, Lcom/amazon/readingactions/ui/helpers/OrientationResizer;->Companion:Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;

    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;->setWidthOrientationListener(Landroid/content/Context;Landroid/view/View;)V

    .line 619
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->updateSeeInStoreTheme(Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;)V

    return-void
.end method

.method private final createCommmonHolder(Landroid/view/View;)Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;
    .locals 2

    .line 572
    new-instance v0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-direct {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;-><init>(Lcom/amazon/readingactions/ui/widget/BookGridController;)V

    .line 574
    sget v1, Lcom/amazon/kindle/ea/R$id;->book_detail_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setContainer(Landroid/view/View;)V

    .line 575
    sget v1, Lcom/amazon/kindle/ea/R$id;->title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setTitle(Landroid/widget/TextView;)V

    .line 576
    sget v1, Lcom/amazon/kindle/ea/R$id;->author:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setAuthor(Landroid/widget/TextView;)V

    .line 577
    sget v1, Lcom/amazon/kindle/ea/R$id;->rating_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setRatingContainer(Landroid/view/ViewGroup;)V

    .line 578
    sget v1, Lcom/amazon/kindle/ea/R$id;->rating_bar:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RatingBar;

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setRatingBar(Landroid/widget/RatingBar;)V

    .line 579
    sget v1, Lcom/amazon/kindle/ea/R$id;->rating_count:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setRatingCount(Landroid/widget/TextView;)V

    .line 580
    sget v1, Lcom/amazon/kindle/ea/R$id;->book_grid_share_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setShareButton(Landroid/widget/Button;)V

    .line 581
    sget v1, Lcom/amazon/kindle/ea/R$id;->description:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setDescription(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;)V

    .line 582
    sget v1, Lcom/amazon/kindle/ea/R$id;->null_description_padding:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setNullDescriptionPadding(Landroid/view/View;)V

    return-object v0
.end method

.method private final inflateBubbleView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 439
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getController$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/startactions/ui/IAnyActionsUIController;

    move-result-object v0

    const-string v1, "controller"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$layout;->readingactions_ea_detail_bubble_content:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 442
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$isOneTapEnabled$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Z

    move-result v0

    const-string v1, "bubbleView"

    if-eqz v0, :cond_0

    .line 443
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->inflateOneTapPurchaseView(Landroid/view/View;)Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;

    move-result-object v0

    goto :goto_0

    .line 445
    :cond_0
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->inflateLegacyPurchaseView(Landroid/view/View;)Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;

    move-result-object v0

    .line 447
    :goto_0
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    move-result-object v1

    iget-boolean v1, v1, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->buyButtonVisible:Z

    if-eqz v1, :cond_22

    .line 448
    new-instance v1, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getBuyNow()Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_21

    invoke-direct {v1, v2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;-><init>(Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setPurchaseViewManager(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)V

    .line 449
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$isOneTapEnabled$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 450
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getPurchaseViewManager()Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getReadNow()Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v1, v2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setReadButton(Landroid/widget/Button;)V

    .line 451
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getPurchaseViewManager()Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v2}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getResources$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/amazon/kindle/ea/R$color;->aa_amazon_blue:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setActionMessageColor(I)V

    .line 452
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getPurchaseViewManager()Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v2}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getResources$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Landroid/content/res/Resources;

    move-result-object v2

    .line 453
    sget v4, Lcom/amazon/kindle/ea/R$color;->anyactions_amazon_orange_light:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 452
    invoke-virtual {v1, v2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setErrorMessageColor(I)V

    .line 454
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getPurchaseViewManager()Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getKuBadge()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getPrBadge()Landroid/widget/ImageView;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 455
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getIncludedWithMembershipTextView()Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 454
    invoke-virtual {v1, v2, v4, v5}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setBorrowView(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 456
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getPurchaseViewManager()Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getAddToLib()Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getInYourLibText()Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getInYourLibAsset()Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v2, v4, v5}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setAddToLibViewSet(Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 457
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getPurchaseViewManager()Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getAddToLibContainer()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setAddToLibContainer(Landroid/view/View;)V

    .line 458
    :cond_5
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getPurchaseViewManager()Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getCancelButton()Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getCancelToast()Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getCancelAsset()Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v1, v2, v4, v5}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setCancelView(Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_2

    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    :cond_7
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    :cond_8
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 459
    :cond_9
    :goto_2
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getPurchaseViewManager()Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getBuySuccessToast()Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getBuySuccessAsset()Landroid/widget/ImageView;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v1, v2, v4}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setBuySuccessView(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_3

    :cond_a
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    :cond_b
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 455
    :cond_c
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 454
    :cond_d
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    :cond_e
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    :cond_f
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 452
    :cond_10
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 451
    :cond_11
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 450
    :cond_12
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    :cond_13
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 461
    :cond_14
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getPurchaseViewManager()Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v2}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getResources$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Landroid/content/res/Resources;

    move-result-object v2

    .line 462
    sget v4, Lcom/amazon/kindle/ea/R$color;->anyactions_amazon_orange_light:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 461
    invoke-virtual {v1, v2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setActionMessageColor(I)V

    .line 463
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getPurchaseViewManager()Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getKuBadge()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getPrBadge()Landroid/widget/ImageView;

    move-result-object v4

    if-eqz v4, :cond_1d

    invoke-virtual {v1, v2, v4}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setBorrowView(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 466
    :cond_15
    :goto_3
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getPurchaseViewManager()Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getSeeInStore()Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setSeeInStoreButton(Landroid/widget/Button;)V

    .line 467
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getPurchaseViewManager()Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getSeeInStoreChevron()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setSeeInStoreChevron(Landroid/widget/ImageView;)V

    .line 468
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getPurchaseViewManager()Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getCancelView()Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-virtual {v1, v2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setCancelView(Landroid/widget/Button;)V

    .line 469
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getPurchaseViewManager()Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getFailureView()Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setFailureView(Landroid/widget/Button;)V

    .line 470
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getPurchaseViewManager()Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getFailureAsset()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setFailureAsset(Landroid/widget/ImageView;)V

    .line 471
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getPurchaseViewManager()Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 472
    sget v2, Lcom/amazon/kindle/ea/R$array;->readingactions_text_primary_color:I

    invoke-static {v2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v2

    .line 471
    invoke-virtual {v1, v2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setStatusMessageColor(I)V

    goto :goto_4

    :cond_16
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 470
    :cond_17
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 469
    :cond_18
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 468
    :cond_19
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    :cond_1a
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 467
    :cond_1b
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 466
    :cond_1c
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 463
    :cond_1d
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    :cond_1e
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    :cond_1f
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 461
    :cond_20
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 448
    :cond_21
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 475
    :cond_22
    :goto_4
    sget v1, Lcom/amazon/kindle/ea/R$id;->top_border:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setTopBorder(Landroid/view/View;)V

    .line 476
    sget v1, Lcom/amazon/kindle/ea/R$id;->bottom_border:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setBottomBorder(Landroid/view/View;)V

    .line 478
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$isOneTapEnabled$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 479
    invoke-direct {p0, v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->applyThemeRules(Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;)V

    .line 482
    :cond_23
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 484
    new-instance v1, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$inflateBubbleView$delegate$1;

    invoke-direct {v1, v0, p1}, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$inflateBubbleView$delegate$1;-><init>(Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;Landroid/view/View;)V

    .line 497
    sget-object v0, Lcom/amazon/readingactions/ui/helpers/OrientationResizer;->Companion:Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;

    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v2}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getContext$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p1, v1}, Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;->setAlignmentOrientationListener(Landroid/content/Context;Landroid/view/View;Lcom/amazon/readingactions/helpers/AlignmentChangeDelegate;)V

    return-object p1
.end method

.method private final inflateLegacyPurchaseView(Landroid/view/View;)Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;
    .locals 3

    .line 502
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->createCommmonHolder(Landroid/view/View;)Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;

    move-result-object v0

    const/4 v1, 0x0

    .line 504
    invoke-direct {p0, v0, p1, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->inflateSeeInStoreButton(Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;Landroid/view/View;Z)V

    .line 505
    sget v1, Lcom/amazon/kindle/ea/R$id;->buy_now:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setBuyNow(Landroid/widget/Button;)V

    .line 506
    sget v1, Lcom/amazon/kindle/ea/R$id;->endactions_ku_badge:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setKuBadge(Landroid/widget/ImageView;)V

    .line 507
    sget v1, Lcom/amazon/kindle/ea/R$id;->endactions_pr_badge:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setPrBadge(Landroid/widget/ImageView;)V

    .line 508
    sget v1, Lcom/amazon/kindle/ea/R$id;->cancel_purchase:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setCancelView(Landroid/widget/Button;)V

    .line 509
    sget v1, Lcom/amazon/kindle/ea/R$id;->purchase_failure:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setFailureView(Landroid/widget/Button;)V

    .line 510
    sget v1, Lcom/amazon/kindle/ea/R$id;->failure_asset:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setFailureAsset(Landroid/widget/ImageView;)V

    .line 512
    sget-object p1, Lcom/amazon/readingactions/ui/helpers/OrientationResizer;->Companion:Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getContext$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getBuyNow()Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1, v2}, Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;->setWidthOrientationListener(Landroid/content/Context;Landroid/view/View;)V

    return-object v0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method private final inflateOneTapPurchaseView(Landroid/view/View;)Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;
    .locals 4

    .line 518
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->createCommmonHolder(Landroid/view/View;)Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;

    move-result-object v0

    const/4 v1, 0x1

    .line 520
    invoke-direct {p0, v0, p1, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->inflateSeeInStoreButton(Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;Landroid/view/View;Z)V

    .line 521
    sget v1, Lcom/amazon/kindle/ea/R$id;->buy_now_one_tap:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setBuyNow(Landroid/widget/Button;)V

    .line 522
    sget v1, Lcom/amazon/kindle/ea/R$id;->endactions_ku_badge_one_tap:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setKuBadge(Landroid/widget/ImageView;)V

    .line 523
    sget v1, Lcom/amazon/kindle/ea/R$id;->endactions_pr_badge_one_tap:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setPrBadge(Landroid/widget/ImageView;)V

    .line 524
    sget v1, Lcom/amazon/kindle/ea/R$id;->cancel_purchase_one_tap:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setCancelView(Landroid/widget/Button;)V

    .line 525
    sget v1, Lcom/amazon/kindle/ea/R$id;->purchase_failure_one_tap:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setFailureView(Landroid/widget/Button;)V

    .line 526
    sget v1, Lcom/amazon/kindle/ea/R$id;->failure_asset_one_tap:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setFailureAsset(Landroid/widget/ImageView;)V

    .line 527
    sget v1, Lcom/amazon/kindle/ea/R$id;->read_now_one_tap:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setReadNow(Landroid/widget/Button;)V

    .line 528
    sget v1, Lcom/amazon/kindle/ea/R$id;->included_blurb_one_tap:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setIncludedWithMembershipTextView(Landroid/widget/TextView;)V

    .line 530
    sget v1, Lcom/amazon/kindle/ea/R$id;->add_to_lib_one_tap:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setAddToLib(Landroid/widget/Button;)V

    .line 531
    sget v1, Lcom/amazon/kindle/ea/R$id;->in_your_library:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setInYourLibText(Landroid/widget/TextView;)V

    .line 532
    sget v1, Lcom/amazon/kindle/ea/R$id;->save_to_lib_check_mark:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setInYourLibAsset(Landroid/widget/ImageView;)V

    .line 533
    sget v1, Lcom/amazon/kindle/ea/R$id;->save_to_lib_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setAddToLibContainer(Landroid/view/View;)V

    .line 534
    sget v1, Lcom/amazon/kindle/ea/R$id;->buy_success_onetap_toast:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setBuySuccessToast(Landroid/widget/TextView;)V

    .line 535
    sget v1, Lcom/amazon/kindle/ea/R$id;->buy_success_onetap_checkmark:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setBuySuccessAsset(Landroid/widget/ImageView;)V

    .line 536
    sget v1, Lcom/amazon/kindle/ea/R$id;->cancel_purchase_one_tap:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setCancelButton(Landroid/widget/Button;)V

    .line 537
    sget v1, Lcom/amazon/kindle/ea/R$id;->cancel_onetap_complete:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setCancelToast(Landroid/widget/TextView;)V

    .line 538
    sget v1, Lcom/amazon/kindle/ea/R$id;->cancel_onetap_checkmark:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setCancelAsset(Landroid/widget/ImageView;)V

    .line 539
    sget v1, Lcom/amazon/kindle/ea/R$id;->buttons_one_tap_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setButtonsOneTapContainer(Landroid/widget/LinearLayout;)V

    .line 541
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getSeeInStore()Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 542
    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_see_in_store_text_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    .line 541
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 543
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getSeeInStoreChevron()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 544
    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_see_in_store_chevron:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 543
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 545
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getBuyNow()Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_2

    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_buy_button_bg:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedResourceId(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 546
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getBuyNow()Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_3

    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_buy_button_text_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 547
    :cond_3
    sget-object p1, Lcom/amazon/readingactions/ui/helpers/OrientationResizer;->Companion:Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getContext$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getBuyNow()Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_15

    invoke-virtual {p1, v1, v2}, Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;->setWidthOrientationListener(Landroid/content/Context;Landroid/view/View;)V

    .line 548
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getReadNow()Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_4

    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_read_button_bg:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedResourceId(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 549
    :cond_4
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getReadNow()Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_5

    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_read_button_text_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 550
    :cond_5
    sget-object p1, Lcom/amazon/readingactions/ui/helpers/OrientationResizer;->Companion:Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getContext$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getReadNow()Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {p1, v1, v2}, Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;->setWidthOrientationListener(Landroid/content/Context;Landroid/view/View;)V

    .line 551
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getKuBadge()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_6

    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_KU_badge:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 552
    :cond_6
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getIncludedWithMembershipTextView()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_7

    sget v1, Lcom/amazon/kindle/ea/R$array;->endations_onetap_KU_badge_text_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 553
    :cond_7
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getAddToLib()Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_8

    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_add_to_lib_button_bg:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedResourceId(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 554
    :cond_8
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getAddToLib()Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_9

    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_add_to_lib_button_text_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 555
    :cond_9
    sget-object p1, Lcom/amazon/readingactions/ui/helpers/OrientationResizer;->Companion:Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getContext$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getAddToLib()Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {p1, v1, v2}, Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;->setWidthOrientationListener(Landroid/content/Context;Landroid/view/View;)V

    .line 556
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getInYourLibText()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_a

    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_in_you_lib_text:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 557
    :cond_a
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getInYourLibAsset()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_b

    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_checkmark:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 558
    :cond_b
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getAddToLibContainer()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 559
    sget-object p1, Lcom/amazon/readingactions/ui/helpers/OrientationResizer;->Companion:Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getContext$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getAddToLibContainer()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {p1, v1, v2}, Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;->setWidthOrientationListener(Landroid/content/Context;Landroid/view/View;)V

    .line 560
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getAddToLibContainer()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_c

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 561
    :cond_c
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getAddToLibContainer()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_e

    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_add_to_lib_button_bg:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 559
    :cond_d
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 563
    :cond_e
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getBuySuccessToast()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_f

    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_buy_success_toast_text:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 564
    :cond_f
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getBuySuccessAsset()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_10

    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_checkmark:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 565
    :cond_10
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getCancelToast()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_11

    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_buy_cancel_complete_text:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 566
    :cond_11
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getCancelAsset()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_12

    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_checkmark:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_12
    return-object v0

    .line 555
    :cond_13
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 550
    :cond_14
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 547
    :cond_15
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3
.end method

.method private final inflateSeeInStoreButton(Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;Landroid/view/View;Z)V
    .locals 6

    .line 588
    sget-object v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow;->Companion:Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow$Companion;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getResources$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "resources"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow$Companion;->getEABookStoreLabelText$default(Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow$Companion;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p3, :cond_1

    .line 590
    sget-object p3, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow;->Companion:Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow$Companion;

    invoke-virtual {p3}, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow$Companion;->isEnabled()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 596
    :cond_0
    sget p3, Lcom/amazon/kindle/ea/R$id;->see_in_store:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    invoke-virtual {p1, p2}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setSeeInStore(Landroid/widget/Button;)V

    goto :goto_1

    .line 591
    :cond_1
    :goto_0
    sget p3, Lcom/amazon/kindle/ea/R$id;->see_in_store_one_tap:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    invoke-virtual {p1, p3}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setSeeInStore(Landroid/widget/Button;)V

    .line 592
    sget p3, Lcom/amazon/kindle/ea/R$id;->see_in_store_one_tap_chevron:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setSeeInStoreChevron(Landroid/widget/ImageView;)V

    .line 593
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getSeeInStoreChevron()Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 594
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getSeeInStoreChevron()Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 599
    :goto_1
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getSeeInStore()Landroid/widget/Button;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 600
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getSeeInStore()Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 599
    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 594
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 593
    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2
.end method

.method private final refreshView(Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;)V
    .locals 0

    .line 677
    invoke-virtual {p2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;->getMode()Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->updateButtonsTheme(Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;)V

    return-void
.end method

.method private final setBookDescription(Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 391
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getDescription()Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 392
    iget-object v2, v1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 393
    new-instance v15, Lcom/amazon/readingactions/ui/helpers/TextViewExpandClickListener;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getContainer()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 394
    iget-object v2, v0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v2}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getAnimationCoordinator$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/ea/ui/AnimationCoordinator;

    move-result-object v5

    const-string v10, "animationCoordinator"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v2}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getResources$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Landroid/content/res/Resources;

    move-result-object v6

    const-string/jumbo v9, "resources"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v2}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    move-result-object v2

    iget-object v7, v2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v8, "def.metricsTag"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v16, Lcom/amazon/ea/metrics/BookGridActions;->CLICK_SEE_MORE:Lcom/amazon/ea/metrics/BookGridActions;

    .line 395
    iget-object v3, v1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    const-string/jumbo v2, "recommendation.description"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v17, 0x7fffffff

    move-object v14, v2

    move-object v2, v15

    move-object/from16 v18, v3

    move-object v3, v11

    move-object v12, v8

    move-object/from16 v8, v16

    move-object v13, v9

    move-object/from16 v9, v18

    move-object/from16 v18, v15

    move-object v15, v10

    move/from16 v10, v17

    .line 393
    invoke-direct/range {v2 .. v10}, Lcom/amazon/readingactions/ui/helpers/TextViewExpandClickListener;-><init>(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Landroid/view/View;Lcom/amazon/ea/ui/AnimationCoordinator;Landroid/content/res/Resources;Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;Ljava/lang/String;I)V

    .line 396
    new-instance v10, Lcom/amazon/readingactions/ui/helpers/TextViewCollapseClickListener;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getContainer()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 397
    iget-object v2, v0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v2}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getAnimationCoordinator$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/ea/ui/AnimationCoordinator;

    move-result-object v5

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v2}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getResources$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v2}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    move-result-object v2

    iget-object v7, v2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lcom/amazon/ea/metrics/BookGridActions;->CLICK_SEE_LESS:Lcom/amazon/ea/metrics/BookGridActions;

    .line 398
    iget-object v9, v1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    invoke-static {v9, v14}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v2}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getResources$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/ea/R$integer;->readingactions_detail_bubble_description_max_lines:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    move-object v2, v10

    move-object v3, v11

    move-object v13, v10

    move v10, v12

    .line 396
    invoke-direct/range {v2 .. v10}, Lcom/amazon/readingactions/ui/helpers/TextViewCollapseClickListener;-><init>(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Landroid/view/View;Lcom/amazon/ea/ui/AnimationCoordinator;Landroid/content/res/Resources;Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;Ljava/lang/String;I)V

    move-object/from16 v2, v18

    .line 399
    invoke-virtual {v2, v13}, Lcom/amazon/readingactions/ui/helpers/TextViewExpandableOnClickListener;->setListener(Landroid/view/View$OnClickListener;)V

    .line 400
    invoke-virtual {v13, v2}, Lcom/amazon/readingactions/ui/helpers/TextViewExpandableOnClickListener;->setListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v3}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getResources$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/ea/R$string;->startactions_widget_read_more:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3, v2}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTruncateLinkText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 404
    iget-object v2, v0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v2}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getResources$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/ea/R$string;->startactions_widget_read_less:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 405
    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v3}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getResources$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/ea/R$string;->startactions_widget_read_less_content_description:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 404
    invoke-virtual {v11, v2, v3, v13}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setAppendLinkText(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 408
    iget-object v2, v0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v2}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getResources$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Landroid/content/res/Resources;

    move-result-object v2

    .line 409
    sget v3, Lcom/amazon/kindle/ea/R$integer;->readingactions_detail_bubble_description_max_lines:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->setMaxLines(I)V

    .line 410
    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTextWithLink(Ljava/lang/CharSequence;Z)V

    .line 411
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 412
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getNullDescriptionPadding()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v1, 0x0

    throw v1

    :cond_1
    const/4 v1, 0x0

    .line 396
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_2
    const/4 v1, 0x0

    .line 393
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_3
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 414
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 415
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getNullDescriptionPadding()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_5
    :goto_0
    return-void
.end method

.method private final updateButtonsTheme(Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;)V
    .locals 1

    .line 623
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getBuyNow()Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 624
    sget-object v0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    .line 645
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {p2}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$isOneTapEnabled$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 646
    sget p2, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_buy_button_bg:I

    invoke-static {p2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedResourceId(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 649
    :cond_0
    sget p2, Lcom/amazon/kindle/ea/R$array;->readingactions_purchase_button_background:I

    invoke-static {p2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result p2

    .line 648
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 651
    sget p2, Lcom/amazon/kindle/ea/R$array;->readingactions_purchase_button_text_color:I

    invoke-static {p2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 650
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 637
    :cond_1
    sget p2, Lcom/amazon/kindle/ea/R$array;->readingactions_contrast_button_text_color:I

    invoke-static {p2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 636
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 638
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {p2}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$isOneTapEnabled$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 639
    sget p2, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_buy_button_bg:I

    invoke-static {p2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedResourceId(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 641
    :cond_2
    sget p2, Lcom/amazon/kindle/ea/R$array;->readingactions_contrast_button:I

    invoke-static {p2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 627
    :cond_3
    sget p2, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_read_button_text_color:I

    invoke-static {p2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result p2

    .line 626
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    .line 628
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {p2}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$isOneTapEnabled$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 629
    sget p2, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_buy_button_bg:I

    invoke-static {p2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedResourceId(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 632
    :cond_4
    sget p2, Lcom/amazon/kindle/ea/R$array;->readingactions_read_now_button_background:I

    invoke-static {p2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result p2

    .line 631
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackgroundColor(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method private final updateSeeInStoreTheme(Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;)V
    .locals 2

    .line 659
    sget-object v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow;->Companion:Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow$Companion;

    invoke-virtual {v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow$Companion;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 660
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getSeeInStore()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 661
    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_see_in_store_text_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    .line 660
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 662
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getSeeInStoreChevron()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 663
    sget v0, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_see_in_store_chevron:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 662
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 665
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getSeeInStore()Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 667
    sget v0, Lcom/amazon/kindle/ea/R$array;->readingactions_text_primary_color:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    .line 666
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 669
    sget v0, Lcom/amazon/kindle/ea/R$array;->readingactions_default_button_background:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    .line 668
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 671
    sget-object v0, Lcom/amazon/readingactions/ui/helpers/OrientationResizer;->Companion:Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;

    invoke-virtual {p1}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;->setWidthOrientationListener(Landroid/content/Context;Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getBubbleContentView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    const-string/jumbo v3, "parent"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    move-object/from16 v2, p2

    goto :goto_0

    .line 306
    :cond_0
    invoke-direct {v0, v2}, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->inflateBubbleView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 308
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1b

    check-cast v3, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;

    .line 310
    iget-object v4, v0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v4}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    move-result-object v4

    iget-object v4, v4, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    .line 312
    invoke-virtual {v3, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->setIndex(I)V

    .line 314
    invoke-virtual {v3}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getDescription()Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1a

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    invoke-virtual {v3}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getRatingBar()Landroid/widget/RatingBar;

    move-result-object v5

    if-eqz v5, :cond_19

    invoke-virtual {v5, v7}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 316
    invoke-virtual {v3}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getRatingCount()Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_18

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    invoke-virtual {v3}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_17

    iget-object v8, v4, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->title:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    invoke-virtual {v3}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getAuthor()Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_16

    iget-object v8, v4, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    invoke-static {v8}, Lcom/amazon/ea/util/AuthorNameFormatterUtil;->formatAuthorList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    invoke-virtual {v3}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getShareButton()Landroid/widget/Button;

    move-result-object v5

    if-eqz v5, :cond_15

    new-instance v8, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$getBubbleContentView$1;

    invoke-direct {v8, v0, v4, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$getBubbleContentView$1;-><init>(Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;I)V

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    iget-object v5, v0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v5}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$isSharingSupported(Lcom/amazon/readingactions/ui/widget/BookGridController;)Z

    move-result v5

    const/4 v8, 0x0

    if-eqz v5, :cond_2

    .line 325
    invoke-virtual {v3}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getShareButton()Landroid/widget/Button;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v6

    .line 327
    :cond_2
    invoke-virtual {v3}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getShareButton()Landroid/widget/Button;

    move-result-object v5

    if-eqz v5, :cond_14

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    const-string/jumbo v5, "rec"

    .line 330
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v3, v4}, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->setBookDescription(Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;)V

    .line 332
    iget v5, v4, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->rating:F

    float-to-double v9, v5

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const/4 v5, 0x1

    cmpl-double v13, v9, v11

    if-ltz v13, :cond_8

    const-wide/high16 v11, 0x4014000000000000L    # 5.0

    cmpg-double v13, v9, v11

    if-gtz v13, :cond_8

    .line 333
    invoke-virtual {v3}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getRatingBar()Landroid/widget/RatingBar;

    move-result-object v9

    if-eqz v9, :cond_7

    iget v10, v4, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->rating:F

    invoke-virtual {v9, v10}, Landroid/widget/RatingBar;->setRating(F)V

    .line 334
    invoke-virtual {v3}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getRatingBar()Landroid/widget/RatingBar;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v9, v8}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 336
    iget v9, v4, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->numberOfReviews:I

    if-ltz v9, :cond_8

    .line 337
    invoke-virtual {v3}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getRatingCount()Landroid/widget/TextView;

    move-result-object v9

    if-eqz v9, :cond_5

    sget-object v10, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v10, v5, [Ljava/lang/Object;

    iget v11, v4, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->numberOfReviews:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v10, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    const-string v11, "(%d)"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "java.lang.String.format(format, *args)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    invoke-virtual {v3}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getRatingCount()Landroid/widget/TextView;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    invoke-virtual {v3}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getRatingCount()Landroid/widget/TextView;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 340
    sget v9, Lcom/amazon/kindle/ea/R$array;->readingactions_text_primary_color:I

    invoke-static {v9}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v9

    .line 339
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v6

    .line 338
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v6

    .line 337
    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v6

    .line 334
    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v6

    .line 333
    :cond_7
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v6

    .line 344
    :cond_8
    :goto_2
    iget-object v8, v0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v8}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    move-result-object v8

    iget-boolean v8, v8, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->buyButtonVisible:Z

    if-eqz v8, :cond_d

    .line 345
    invoke-static {v5}, Lcom/amazon/ea/guava/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v5

    const-string/jumbo v7, "rsMetadata"

    .line 346
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v7}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    move-result-object v7

    iget-object v7, v7, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v8, "MetricsTag"

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object v7, v0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v7}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getBookGridView$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/readingactions/ui/widget/BookGridView;

    move-result-object v7

    if-eqz v7, :cond_c

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_b

    check-cast v7, Landroid/widget/ImageView;

    .line 349
    iget-object v8, v0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v8}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getRecommendationsBookCoverImageHelper$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    move-result-object v8

    iget-object v9, v0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v9}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getResources$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Landroid/content/res/Resources;

    move-result-object v9

    const-string/jumbo v10, "resources"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v1, v9}, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->getCoverDrawable(ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 350
    iget-object v8, v0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v8}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getRecommendationsBookCoverImageHelper$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    move-result-object v8

    iget-object v9, v0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v9}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getResources$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v1, v9}, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->getCoverContentDescription(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 352
    new-instance v10, Lcom/amazon/ea/util/EABookShell;

    invoke-direct {v10, v4}, Lcom/amazon/ea/util/EABookShell;-><init>(Lcom/amazon/ea/sidecar/def/data/RecommendationData;)V

    .line 353
    new-instance v4, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$getBubbleContentView$purchaseStatusListener$1;

    invoke-direct {v4, v0, v3}, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$getBubbleContentView$purchaseStatusListener$1;-><init>(Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;)V

    .line 358
    invoke-virtual {v3}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getPurchaseViewManager()Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    move-result-object v9

    if-eqz v9, :cond_a

    iget-object v8, v0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v8}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    move-result-object v8

    iget-boolean v11, v8, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->buyInStore:Z

    iget-object v8, v0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v8}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    move-result-object v8

    iget-boolean v12, v8, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->oneClickBorrowSupported:Z

    .line 359
    iget-object v8, v0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v8}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    move-result-object v8

    iget-object v14, v8, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    .line 360
    iget-object v8, v0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v8}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    move-result-object v8

    iget-object v8, v8, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v15}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    move-result-object v15

    iget-object v15, v15, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "_pb_"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 361
    iget-object v8, v0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v8}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    move-result-object v8

    iget-object v8, v8, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v6}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    move-result-object v6

    iget-object v6, v6, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_b_"

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 362
    iget-object v6, v0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v6}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    move-result-object v6

    iget-object v6, v6, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v13}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    move-result-object v13

    iget-object v13, v13, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "_ub_"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 363
    iget-object v6, v0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v6}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    move-result-object v6

    iget-object v6, v6, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v13}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    move-result-object v13

    iget-object v13, v13, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "_ku_"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v13, "BookGridWidget"

    const-string v19, "AnyActionsBookGridWidget"

    move-object/from16 v20, v5

    move-object/from16 v21, v4

    .line 358
    invoke-virtual/range {v9 .. v21}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->initialize(Lcom/amazon/ea/util/EABookShell;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/amazon/readingactions/helpers/purchase/IPurchaseStatusListener;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;

    move-result-object v4

    .line 365
    invoke-virtual {v3}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getPurchaseViewManager()Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v5, v7}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setCurrentBookView(Landroid/view/View;)V

    const-string/jumbo v5, "purchaseStatus"

    .line 366
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v3, v4}, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->refreshView(Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;)V

    goto :goto_3

    .line 365
    :cond_9
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v1, 0x0

    throw v1

    :cond_a
    move-object v1, v6

    .line 358
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 348
    :cond_b
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    move-object v1, v6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 368
    :cond_d
    invoke-virtual {v3}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getBuyNow()Landroid/widget/Button;

    move-result-object v4

    if-eqz v4, :cond_13

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 372
    :goto_3
    sget v4, Lcom/amazon/kindle/ea/R$array;->readingactions_text_primary_color:I

    invoke-static {v4}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v4

    .line 373
    sget v5, Lcom/amazon/kindle/ea/R$array;->readingactions_divider_line:I

    invoke-static {v5}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 374
    invoke-virtual {v3}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v6

    if-eqz v6, :cond_12

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 375
    invoke-virtual {v3}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getAuthor()Landroid/widget/TextView;

    move-result-object v6

    if-eqz v6, :cond_11

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 376
    invoke-virtual {v3}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getDescription()Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    move-result-object v6

    if-eqz v6, :cond_10

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 377
    invoke-virtual {v3}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getTopBorder()Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 378
    invoke-virtual {v3}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getBottomBorder()Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 380
    new-instance v4, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$getBubbleContentView$seeInStoreHandler$1;

    invoke-direct {v4, v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$getBubbleContentView$seeInStoreHandler$1;-><init>(Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;I)V

    .line 384
    invoke-virtual {v3}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getSeeInStore()Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_f

    new-instance v5, Lcom/amazon/readingactions/ui/widget/BookGridControllerKt$sam$OnClickListener$a1b01d0b;

    invoke-direct {v5, v4}, Lcom/amazon/readingactions/ui/widget/BookGridControllerKt$sam$OnClickListener$a1b01d0b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    invoke-virtual {v3}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getSeeInStoreChevron()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_e

    new-instance v3, Lcom/amazon/readingactions/ui/widget/BookGridControllerKt$sam$OnClickListener$a1b01d0b;

    invoke-direct {v3, v4}, Lcom/amazon/readingactions/ui/widget/BookGridControllerKt$sam$OnClickListener$a1b01d0b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    return-object v2

    .line 384
    :cond_f
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v1, 0x0

    throw v1

    :cond_10
    const/4 v1, 0x0

    .line 376
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_11
    const/4 v1, 0x0

    .line 375
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_12
    const/4 v1, 0x0

    .line 374
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_13
    const/4 v1, 0x0

    .line 368
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_14
    move-object v1, v6

    .line 327
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_15
    move-object v1, v6

    .line 322
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_16
    move-object v1, v6

    .line 319
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_17
    move-object v1, v6

    .line 318
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_18
    move-object v1, v6

    .line 316
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_19
    move-object v1, v6

    .line 315
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_1a
    move-object v1, v6

    .line 314
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 308
    :cond_1b
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type com.amazon.readingactions.ui.widget.BookGridController.DetailBubbleHolder"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getCount()I
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onAccessibilityCoverAction(I)V
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v0, p1}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$loadDetailPage(Lcom/amazon/readingactions/ui/widget/BookGridController;I)V

    return-void
.end method

.method public onExpand(I)V
    .locals 5

    .line 421
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "DidAnything"

    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 422
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "ExpandedGridCover"

    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 423
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v3}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    move-result-object v3

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 424
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExpandedGridCover."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {v3}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    move-result-object v3

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

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    return-void
.end method
