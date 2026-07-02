.class Lcom/amazon/kcp/reader/ui/InfoCardContainer$4;
.super Landroid/view/animation/Animation;
.source "InfoCardContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/InfoCardContainer;->animateFullyShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

.field final synthetic val$initialBottomMargin:I

.field final synthetic val$initialTopMargin:I

.field final synthetic val$verticalPadding:I


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/InfoCardContainer;III)V
    .locals 0

    .line 616
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer$4;->this$0:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    iput p2, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer$4;->val$initialTopMargin:I

    iput p3, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer$4;->val$initialBottomMargin:I

    iput p4, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer$4;->val$verticalPadding:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .line 619
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer$4;->this$0:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    .line 621
    invoke-virtual {p2}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    .line 625
    iget v2, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer$4;->val$initialTopMargin:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 626
    iget v2, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer$4;->val$initialBottomMargin:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    iget v2, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer$4;->val$verticalPadding:I

    int-to-float v2, v2

    mul-float v2, v2, p1

    float-to-int p1, v2

    add-int/2addr v1, p1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 628
    invoke-virtual {p2, v0}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
