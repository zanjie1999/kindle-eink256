.class public Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;
.super Ljava/lang/Object;
.source "BookGridController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DetailBubbleHolder"
.end annotation


# instance fields
.field public addToLib:Landroid/widget/Button;

.field public addToLibContainer:Landroid/view/View;

.field public author:Landroid/widget/TextView;

.field public buyNow:Landroid/widget/Button;

.field public buySuccessAsset:Landroid/widget/ImageView;

.field public buySuccessToast:Landroid/widget/TextView;

.field public cancelAsset:Landroid/widget/ImageView;

.field public cancelButton:Landroid/widget/Button;

.field public cancelToast:Landroid/widget/TextView;

.field public cancelView:Landroid/widget/Button;

.field public description:Landroid/widget/TextView;

.field public failureAsset:Landroid/widget/ImageView;

.field public failureView:Landroid/widget/Button;

.field public inYourLibAsset:Landroid/widget/ImageView;

.field public inYourLibText:Landroid/widget/TextView;

.field public includedWithMembershipTextView:Landroid/widget/TextView;

.field public index:I

.field public kuBadge:Landroid/widget/ImageView;

.field public prBadge:Landroid/widget/ImageView;

.field public purchaseViewManager:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

.field public ratingBar:Landroid/widget/RatingBar;

.field public ratingContainer:Landroid/view/ViewGroup;

.field public ratingCount:Landroid/widget/TextView;

.field public readNow:Landroid/widget/Button;

.field public seeInStore:Landroid/widget/Button;

.field public seeInStoreChevron:Landroid/widget/ImageView;

.field public shareButton:Landroid/widget/Button;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)V
    .locals 0

    .line 766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
