.class Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToCollapseClickableSpan;
.super Landroid/text/style/ClickableSpan;
.source "ExpandableTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToCollapseClickableSpan"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToCollapseClickableSpan;->this$0:Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$1;)V
    .locals 0

    .line 164
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToCollapseClickableSpan;-><init>(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 167
    iget-object p1, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToCollapseClickableSpan;->this$0:Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;

    invoke-static {p1}, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->access$200(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-nez p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToCollapseClickableSpan;->this$0:Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToCollapseClickableSpan;->this$0:Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;

    invoke-static {v1}, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->access$300(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->access$400(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->access$202(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 169
    iget-object p1, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToCollapseClickableSpan;->this$0:Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;

    invoke-static {p1}, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->access$200(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToCollapseClickableSpan$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToCollapseClickableSpan$1;-><init>(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToCollapseClickableSpan;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 191
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToCollapseClickableSpan;->this$0:Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;

    invoke-static {p1}, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->access$200(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToCollapseClickableSpan;->this$0:Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;

    invoke-static {v0}, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->access$600(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
