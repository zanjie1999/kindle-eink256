.class Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "RelatedEntitySentenceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutParams"
.end annotation


# instance fields
.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 431
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 427
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 435
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;)I
    .locals 0

    .line 421
    iget p0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;->x:I

    return p0
.end method

.method static synthetic access$302(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;I)I
    .locals 0

    .line 421
    iput p1, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;->x:I

    return p1
.end method

.method static synthetic access$400(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;)I
    .locals 0

    .line 421
    iget p0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;->y:I

    return p0
.end method

.method static synthetic access$402(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;I)I
    .locals 0

    .line 421
    iput p1, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;->y:I

    return p1
.end method
