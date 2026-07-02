.class final Lcom/amazon/readingactions/ui/widget/webview/WebViewController$3;
.super Ljava/lang/Object;
.source "WebViewController.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/webview/WebViewController;-><init>(Landroid/app/Activity;Lcom/amazon/ea/model/widget/webview/WebViewModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebViewController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebViewController.kt\ncom/amazon/readingactions/ui/widget/webview/WebViewController$3\n*L\n1#1,166:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/webview/WebViewController;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/webview/WebViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController$3;->this$0:Lcom/amazon/readingactions/ui/widget/webview/WebViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const-string v0, "event"

    .line 67
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const-string/jumbo v2, "v"

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    const/4 v4, 0x0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p2, 0x3

    if-eq v0, p2, :cond_5

    goto/16 :goto_2

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController$3;->this$0:Lcom/amazon/readingactions/ui/widget/webview/WebViewController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->access$getVelocityTracker$p(Lcom/amazon/readingactions/ui/widget/webview/WebViewController;)Landroid/view/VelocityTracker;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 82
    :cond_1
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController$3;->this$0:Lcom/amazon/readingactions/ui/widget/webview/WebViewController;

    invoke-static {p2}, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->access$getVelocityTracker$p(Lcom/amazon/readingactions/ui/widget/webview/WebViewController;)Landroid/view/VelocityTracker;

    move-result-object p2

    if-eqz p2, :cond_2

    const/16 v0, 0x3e8

    invoke-virtual {p2, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 83
    :cond_2
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController$3;->this$0:Lcom/amazon/readingactions/ui/widget/webview/WebViewController;

    invoke-static {p2}, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->access$getVelocityTracker$p(Lcom/amazon/readingactions/ui/widget/webview/WebViewController;)Landroid/view/VelocityTracker;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    goto :goto_0

    :cond_3
    move-object p2, v4

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController$3;->this$0:Lcom/amazon/readingactions/ui/widget/webview/WebViewController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->access$getVelocityTracker$p(Lcom/amazon/readingactions/ui/widget/webview/WebViewController;)Landroid/view/VelocityTracker;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    :cond_4
    if-eqz p2, :cond_b

    if-eqz v4, :cond_b

    .line 87
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_b

    .line 88
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    .line 92
    :cond_5
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController$3;->this$0:Lcom/amazon/readingactions/ui/widget/webview/WebViewController;

    invoke-static {p2}, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->access$getVelocityTracker$p(Lcom/amazon/readingactions/ui/widget/webview/WebViewController;)Landroid/view/VelocityTracker;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->recycle()V

    .line 93
    :cond_6
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController$3;->this$0:Lcom/amazon/readingactions/ui/widget/webview/WebViewController;

    invoke-static {p2, v4}, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->access$setVelocityTracker$p(Lcom/amazon/readingactions/ui/widget/webview/WebViewController;Landroid/view/VelocityTracker;)V

    .line 94
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    .line 69
    :cond_7
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 70
    :cond_8
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController$3;->this$0:Lcom/amazon/readingactions/ui/widget/webview/WebViewController;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->access$getVelocityTracker$p(Lcom/amazon/readingactions/ui/widget/webview/WebViewController;)Landroid/view/VelocityTracker;

    move-result-object p1

    if-nez p1, :cond_9

    .line 71
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController$3;->this$0:Lcom/amazon/readingactions/ui/widget/webview/WebViewController;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->access$setVelocityTracker$p(Lcom/amazon/readingactions/ui/widget/webview/WebViewController;Landroid/view/VelocityTracker;)V

    goto :goto_1

    .line 73
    :cond_9
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController$3;->this$0:Lcom/amazon/readingactions/ui/widget/webview/WebViewController;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->access$getVelocityTracker$p(Lcom/amazon/readingactions/ui/widget/webview/WebViewController;)Landroid/view/VelocityTracker;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 75
    :cond_a
    :goto_1
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController$3;->this$0:Lcom/amazon/readingactions/ui/widget/webview/WebViewController;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->access$getVelocityTracker$p(Lcom/amazon/readingactions/ui/widget/webview/WebViewController;)Landroid/view/VelocityTracker;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_b
    :goto_2
    return v3
.end method
