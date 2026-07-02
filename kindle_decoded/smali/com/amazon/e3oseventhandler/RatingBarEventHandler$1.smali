.class Lcom/amazon/e3oseventhandler/RatingBarEventHandler$1;
.super Ljava/lang/Object;
.source "RatingBarEventHandler.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/e3oseventhandler/RatingBarEventHandler;->setFilter(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/e3oseventhandler/RatingBarEventHandler;


# direct methods
.method constructor <init>(Lcom/amazon/e3oseventhandler/RatingBarEventHandler;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/amazon/e3oseventhandler/RatingBarEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/RatingBarEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 110
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/RatingBarEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/RatingBarEventHandler;

    invoke-static {p1}, Lcom/amazon/e3oseventhandler/RatingBarEventHandler;->access$000(Lcom/amazon/e3oseventhandler/RatingBarEventHandler;)Landroid/widget/RatingBar;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/e3oseventhandler/RatingBarEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/RatingBarEventHandler;

    invoke-static {p1}, Lcom/amazon/e3oseventhandler/RatingBarEventHandler;->access$000(Lcom/amazon/e3oseventhandler/RatingBarEventHandler;)Landroid/widget/RatingBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RatingBar;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/e3oseventhandler/RatingBarEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/RatingBarEventHandler;

    invoke-static {p1}, Lcom/amazon/e3oseventhandler/RatingBarEventHandler;->access$100(Lcom/amazon/e3oseventhandler/RatingBarEventHandler;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    return v0

    .line 129
    :cond_1
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/RatingBarEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/RatingBarEventHandler;

    invoke-static {p1}, Lcom/amazon/e3oseventhandler/RatingBarEventHandler;->access$000(Lcom/amazon/e3oseventhandler/RatingBarEventHandler;)Landroid/widget/RatingBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RatingBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    .line 130
    iget-object v2, p0, Lcom/amazon/e3oseventhandler/RatingBarEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/RatingBarEventHandler;

    invoke-static {v2, p2, p1}, Lcom/amazon/e3oseventhandler/RatingBarEventHandler;->access$200(Lcom/amazon/e3oseventhandler/RatingBarEventHandler;Landroid/view/MotionEvent;I)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v0
.end method
