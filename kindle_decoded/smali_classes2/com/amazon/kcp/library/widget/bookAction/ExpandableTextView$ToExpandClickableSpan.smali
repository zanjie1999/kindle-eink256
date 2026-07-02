.class Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToExpandClickableSpan;
.super Landroid/text/style/ClickableSpan;
.source "ExpandableTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToExpandClickableSpan"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToExpandClickableSpan;->this$0:Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$1;)V
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToExpandClickableSpan;-><init>(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 203
    iget-object p1, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToExpandClickableSpan;->this$0:Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;

    invoke-static {p1}, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->access$700(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-nez p1, :cond_0

    .line 204
    iget-object p1, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToExpandClickableSpan;->this$0:Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 205
    iget-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToExpandClickableSpan;->this$0:Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 206
    iget-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToExpandClickableSpan;->this$0:Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object p1, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToExpandClickableSpan;->this$0:Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;

    invoke-static {p1}, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->access$800(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object p1, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToExpandClickableSpan;->this$0:Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->measure(II)V

    .line 209
    iget-object p1, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToExpandClickableSpan;->this$0:Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p1

    .line 210
    iget-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToExpandClickableSpan;->this$0:Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->access$400(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;II)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->access$702(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 211
    iget-object p1, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToExpandClickableSpan;->this$0:Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;

    invoke-static {p1}, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->access$700(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToExpandClickableSpan$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToExpandClickableSpan$1;-><init>(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToExpandClickableSpan;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 233
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToExpandClickableSpan;->this$0:Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;

    invoke-static {p1}, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->access$700(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToExpandClickableSpan;->this$0:Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;

    invoke-static {v0}, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->access$600(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
