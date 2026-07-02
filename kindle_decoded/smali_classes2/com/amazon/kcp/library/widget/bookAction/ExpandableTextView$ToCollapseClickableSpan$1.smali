.class Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToCollapseClickableSpan$1;
.super Ljava/lang/Object;
.source "ExpandableTextView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToCollapseClickableSpan;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToCollapseClickableSpan;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToCollapseClickableSpan;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToCollapseClickableSpan$1;->this$1:Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToCollapseClickableSpan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 177
    iget-object p1, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToCollapseClickableSpan$1;->this$1:Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToCollapseClickableSpan;

    iget-object p1, p1, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToCollapseClickableSpan;->this$0:Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;

    invoke-static {p1}, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->access$500(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
