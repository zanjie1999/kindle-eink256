.class final Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;
.super Ljava/lang/Object;
.source "BookGridController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/BookGridController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DetailBubbleHolder"
.end annotation


# instance fields
.field private addToLib:Landroid/widget/Button;

.field private addToLibContainer:Landroid/view/View;

.field private author:Landroid/widget/TextView;

.field private bottomBorder:Landroid/view/View;

.field private buttonsOneTapContainer:Landroid/widget/LinearLayout;

.field private buyNow:Landroid/widget/Button;

.field private buySuccessAsset:Landroid/widget/ImageView;

.field private buySuccessToast:Landroid/widget/TextView;

.field private cancelAsset:Landroid/widget/ImageView;

.field private cancelButton:Landroid/widget/Button;

.field private cancelToast:Landroid/widget/TextView;

.field private cancelView:Landroid/widget/Button;

.field private container:Landroid/view/View;

.field private description:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

.field private failureAsset:Landroid/widget/ImageView;

.field private failureView:Landroid/widget/Button;

.field private inYourLibAsset:Landroid/widget/ImageView;

.field private inYourLibText:Landroid/widget/TextView;

.field private includedWithMembershipTextView:Landroid/widget/TextView;

.field private index:I

.field private kuBadge:Landroid/widget/ImageView;

.field private nullDescriptionPadding:Landroid/view/View;

.field private prBadge:Landroid/widget/ImageView;

.field private purchaseViewManager:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

.field private ratingBar:Landroid/widget/RatingBar;

.field private ratingContainer:Landroid/view/ViewGroup;

.field private ratingCount:Landroid/widget/TextView;

.field private readNow:Landroid/widget/Button;

.field private seeInStore:Landroid/widget/Button;

.field private seeInStoreChevron:Landroid/widget/ImageView;

.field private shareButton:Landroid/widget/Button;

.field private title:Landroid/widget/TextView;

.field private topBorder:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/amazon/readingactions/ui/widget/BookGridController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAddToLib()Landroid/widget/Button;
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->addToLib:Landroid/widget/Button;

    return-object v0
.end method

.method public final getAddToLibContainer()Landroid/view/View;
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->addToLibContainer:Landroid/view/View;

    return-object v0
.end method

.method public final getAuthor()Landroid/widget/TextView;
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->author:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getBottomBorder()Landroid/view/View;
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->bottomBorder:Landroid/view/View;

    return-object v0
.end method

.method public final getButtonsOneTapContainer()Landroid/widget/LinearLayout;
    .locals 1

    .line 720
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->buttonsOneTapContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final getBuyNow()Landroid/widget/Button;
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->buyNow:Landroid/widget/Button;

    return-object v0
.end method

.method public final getBuySuccessAsset()Landroid/widget/ImageView;
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->buySuccessAsset:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getBuySuccessToast()Landroid/widget/TextView;
    .locals 1

    .line 715
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->buySuccessToast:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getCancelAsset()Landroid/widget/ImageView;
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->cancelAsset:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getCancelButton()Landroid/widget/Button;
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->cancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method public final getCancelToast()Landroid/widget/TextView;
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->cancelToast:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getCancelView()Landroid/widget/Button;
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->cancelView:Landroid/widget/Button;

    return-object v0
.end method

.method public final getContainer()Landroid/view/View;
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->container:Landroid/view/View;

    return-object v0
.end method

.method public final getDescription()Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->description:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    return-object v0
.end method

.method public final getFailureAsset()Landroid/widget/ImageView;
    .locals 1

    .line 709
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->failureAsset:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getFailureView()Landroid/widget/Button;
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->failureView:Landroid/widget/Button;

    return-object v0
.end method

.method public final getInYourLibAsset()Landroid/widget/ImageView;
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->inYourLibAsset:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getInYourLibText()Landroid/widget/TextView;
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->inYourLibText:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getIncludedWithMembershipTextView()Landroid/widget/TextView;
    .locals 1

    .line 704
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->includedWithMembershipTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getKuBadge()Landroid/widget/ImageView;
    .locals 1

    .line 705
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->kuBadge:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getNullDescriptionPadding()Landroid/view/View;
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->nullDescriptionPadding:Landroid/view/View;

    return-object v0
.end method

.method public final getPrBadge()Landroid/widget/ImageView;
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->prBadge:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getPurchaseViewManager()Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    return-object v0
.end method

.method public final getRatingBar()Landroid/widget/RatingBar;
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->ratingBar:Landroid/widget/RatingBar;

    return-object v0
.end method

.method public final getRatingCount()Landroid/widget/TextView;
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->ratingCount:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getReadNow()Landroid/widget/Button;
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->readNow:Landroid/widget/Button;

    return-object v0
.end method

.method public final getSeeInStore()Landroid/widget/Button;
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->seeInStore:Landroid/widget/Button;

    return-object v0
.end method

.method public final getSeeInStoreChevron()Landroid/widget/ImageView;
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->seeInStoreChevron:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getShareButton()Landroid/widget/Button;
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->shareButton:Landroid/widget/Button;

    return-object v0
.end method

.method public final getTitle()Landroid/widget/TextView;
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTopBorder()Landroid/view/View;
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->topBorder:Landroid/view/View;

    return-object v0
.end method

.method public final setAddToLib(Landroid/widget/Button;)V
    .locals 0

    .line 711
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->addToLib:Landroid/widget/Button;

    return-void
.end method

.method public final setAddToLibContainer(Landroid/view/View;)V
    .locals 0

    .line 714
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->addToLibContainer:Landroid/view/View;

    return-void
.end method

.method public final setAuthor(Landroid/widget/TextView;)V
    .locals 0

    .line 690
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->author:Landroid/widget/TextView;

    return-void
.end method

.method public final setBottomBorder(Landroid/view/View;)V
    .locals 0

    .line 723
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->bottomBorder:Landroid/view/View;

    return-void
.end method

.method public final setButtonsOneTapContainer(Landroid/widget/LinearLayout;)V
    .locals 0

    .line 720
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->buttonsOneTapContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method public final setBuyNow(Landroid/widget/Button;)V
    .locals 0

    .line 702
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->buyNow:Landroid/widget/Button;

    return-void
.end method

.method public final setBuySuccessAsset(Landroid/widget/ImageView;)V
    .locals 0

    .line 716
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->buySuccessAsset:Landroid/widget/ImageView;

    return-void
.end method

.method public final setBuySuccessToast(Landroid/widget/TextView;)V
    .locals 0

    .line 715
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->buySuccessToast:Landroid/widget/TextView;

    return-void
.end method

.method public final setCancelAsset(Landroid/widget/ImageView;)V
    .locals 0

    .line 719
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->cancelAsset:Landroid/widget/ImageView;

    return-void
.end method

.method public final setCancelButton(Landroid/widget/Button;)V
    .locals 0

    .line 717
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->cancelButton:Landroid/widget/Button;

    return-void
.end method

.method public final setCancelToast(Landroid/widget/TextView;)V
    .locals 0

    .line 718
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->cancelToast:Landroid/widget/TextView;

    return-void
.end method

.method public final setCancelView(Landroid/widget/Button;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->cancelView:Landroid/widget/Button;

    return-void
.end method

.method public final setContainer(Landroid/view/View;)V
    .locals 0

    .line 688
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->container:Landroid/view/View;

    return-void
.end method

.method public final setDescription(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;)V
    .locals 0

    .line 695
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->description:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    return-void
.end method

.method public final setFailureAsset(Landroid/widget/ImageView;)V
    .locals 0

    .line 709
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->failureAsset:Landroid/widget/ImageView;

    return-void
.end method

.method public final setFailureView(Landroid/widget/Button;)V
    .locals 0

    .line 708
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->failureView:Landroid/widget/Button;

    return-void
.end method

.method public final setInYourLibAsset(Landroid/widget/ImageView;)V
    .locals 0

    .line 713
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->inYourLibAsset:Landroid/widget/ImageView;

    return-void
.end method

.method public final setInYourLibText(Landroid/widget/TextView;)V
    .locals 0

    .line 712
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->inYourLibText:Landroid/widget/TextView;

    return-void
.end method

.method public final setIncludedWithMembershipTextView(Landroid/widget/TextView;)V
    .locals 0

    .line 704
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->includedWithMembershipTextView:Landroid/widget/TextView;

    return-void
.end method

.method public final setIndex(I)V
    .locals 0

    .line 686
    iput p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->index:I

    return-void
.end method

.method public final setKuBadge(Landroid/widget/ImageView;)V
    .locals 0

    .line 705
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->kuBadge:Landroid/widget/ImageView;

    return-void
.end method

.method public final setNullDescriptionPadding(Landroid/view/View;)V
    .locals 0

    .line 696
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->nullDescriptionPadding:Landroid/view/View;

    return-void
.end method

.method public final setPrBadge(Landroid/widget/ImageView;)V
    .locals 0

    .line 706
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->prBadge:Landroid/widget/ImageView;

    return-void
.end method

.method public final setPurchaseViewManager(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)V
    .locals 0

    .line 701
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->purchaseViewManager:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    return-void
.end method

.method public final setRatingBar(Landroid/widget/RatingBar;)V
    .locals 0

    .line 692
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->ratingBar:Landroid/widget/RatingBar;

    return-void
.end method

.method public final setRatingContainer(Landroid/view/ViewGroup;)V
    .locals 0

    .line 691
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->ratingContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public final setRatingCount(Landroid/widget/TextView;)V
    .locals 0

    .line 693
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->ratingCount:Landroid/widget/TextView;

    return-void
.end method

.method public final setReadNow(Landroid/widget/Button;)V
    .locals 0

    .line 703
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->readNow:Landroid/widget/Button;

    return-void
.end method

.method public final setSeeInStore(Landroid/widget/Button;)V
    .locals 0

    .line 697
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->seeInStore:Landroid/widget/Button;

    return-void
.end method

.method public final setSeeInStoreChevron(Landroid/widget/ImageView;)V
    .locals 0

    .line 698
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->seeInStoreChevron:Landroid/widget/ImageView;

    return-void
.end method

.method public final setShareButton(Landroid/widget/Button;)V
    .locals 0

    .line 694
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->shareButton:Landroid/widget/Button;

    return-void
.end method

.method public final setTitle(Landroid/widget/TextView;)V
    .locals 0

    .line 689
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->title:Landroid/widget/TextView;

    return-void
.end method

.method public final setTopBorder(Landroid/view/View;)V
    .locals 0

    .line 722
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->topBorder:Landroid/view/View;

    return-void
.end method
