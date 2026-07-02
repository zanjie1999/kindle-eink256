.class Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$1;
.super Ljava/lang/Object;
.source "ExpandableTextView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->getAnimator(II)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$1;->this$0:Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$1;->this$0:Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 144
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 145
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 146
    iget-object p1, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$1;->this$0:Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget-object p1, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$1;->this$0:Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method
