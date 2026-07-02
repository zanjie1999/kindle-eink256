.class final Lcom/amazon/kindle/recaps/activity/RecapsActivity$updateBookView$1;
.super Ljava/lang/Object;
.source "RecapsActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/recaps/activity/RecapsActivity;->updateBookView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lcom/amazon/kindle/recaps/activity/RecapsActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/recaps/activity/RecapsActivity;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$updateBookView$1;->this$0:Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    iput-object p2, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$updateBookView$1;->$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 429
    iget-object v0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$updateBookView$1;->this$0:Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    invoke-static {v0}, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->access$getBookViewRoot$p(Lcom/amazon/kindle/recaps/activity/RecapsActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$updateBookView$1;->this$0:Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    invoke-static {v1}, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->access$getBookOverlayView$p(Lcom/amazon/kindle/recaps/activity/RecapsActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 430
    iget-object v0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$updateBookView$1;->this$0:Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    invoke-static {v0}, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->access$getBookViewFrame$p(Lcom/amazon/kindle/recaps/activity/RecapsActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$updateBookView$1;->this$0:Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    invoke-static {v1}, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->access$getBookView$p(Lcom/amazon/kindle/recaps/activity/RecapsActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 431
    iget-object v0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$updateBookView$1;->this$0:Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    iget-object v1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$updateBookView$1;->$view:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->access$setBookView$p(Lcom/amazon/kindle/recaps/activity/RecapsActivity;Landroid/view/View;)V

    .line 432
    iget-object v0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$updateBookView$1;->this$0:Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    invoke-static {v0}, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->access$getBookViewFrame$p(Lcom/amazon/kindle/recaps/activity/RecapsActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$updateBookView$1;->this$0:Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    invoke-static {v1}, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->access$getBookView$p(Lcom/amazon/kindle/recaps/activity/RecapsActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 434
    iget-object v0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$updateBookView$1;->this$0:Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    invoke-static {v0}, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->access$setBookOverlayViewAccessibilityDelegate(Lcom/amazon/kindle/recaps/activity/RecapsActivity;)V

    return-void
.end method
