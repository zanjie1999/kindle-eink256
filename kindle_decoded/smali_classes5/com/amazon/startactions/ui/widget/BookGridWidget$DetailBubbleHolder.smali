.class Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;
.super Ljava/lang/Object;
.source "BookGridWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/ui/widget/BookGridWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetailBubbleHolder"
.end annotation


# instance fields
.field public author:Landroid/widget/TextView;

.field public bottomBorder:Landroid/view/View;

.field public buyNow:Landroid/widget/Button;

.field public cancelView:Landroid/widget/Button;

.field public description:Landroid/widget/TextView;

.field public failureAsset:Landroid/widget/ImageView;

.field public failureView:Landroid/widget/Button;

.field public index:I

.field public kuBadge:Landroid/widget/ImageView;

.field public nullDescriptionPadding:Landroid/view/View;

.field public prBadge:Landroid/widget/ImageView;

.field public purchaseViewManager:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

.field public ratingBar:Landroid/widget/RatingBar;

.field public ratingContainer:Landroid/view/ViewGroup;

.field public ratingCount:Landroid/widget/TextView;

.field public seeInStore:Landroid/widget/Button;

.field public shareButton:Landroid/widget/Button;

.field public title:Landroid/widget/TextView;

.field public topBorder:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/amazon/startactions/ui/widget/BookGridWidget;)V
    .locals 0

    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/startactions/ui/widget/BookGridWidget;Lcom/amazon/startactions/ui/widget/BookGridWidget$1;)V
    .locals 0

    .line 629
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;-><init>(Lcom/amazon/startactions/ui/widget/BookGridWidget;)V

    return-void
.end method
