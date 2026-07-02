.class public Lcom/amazon/readingactions/ui/widget/BookGridWidget$DetailBubbleHolder;
.super Ljava/lang/Object;
.source "BookGridWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/BookGridWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DetailBubbleHolder"
.end annotation


# instance fields
.field public author:Landroid/widget/TextView;

.field public bottomBorder:Landroid/view/View;

.field public buyNow:Landroid/widget/Button;

.field public cancelView:Landroid/widget/Button;

.field public container:Landroid/view/View;

.field public description:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

.field public failureAsset:Landroid/widget/ImageView;

.field public failureView:Landroid/widget/Button;

.field public index:I

.field public kuBadge:Landroid/widget/ImageView;

.field public nullDescriptionPadding:Landroid/view/View;

.field public prBadge:Landroid/widget/ImageView;

.field public purchaseViewManager:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

.field public ratingBar:Landroid/widget/RatingBar;

.field public ratingContainer:Landroid/view/ViewGroup;

.field public ratingCount:Landroid/widget/TextView;

.field public seeInStore:Landroid/widget/Button;

.field public seeInStoreChevron:Landroid/widget/ImageView;

.field public shareButton:Landroid/widget/Button;

.field public title:Landroid/widget/TextView;

.field public topBorder:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/amazon/readingactions/ui/widget/BookGridWidget;)V
    .locals 0

    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
