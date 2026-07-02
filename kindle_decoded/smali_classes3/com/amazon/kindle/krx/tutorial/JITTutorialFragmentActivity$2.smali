.class Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2;
.super Ljava/lang/Object;
.source "JITTutorialFragmentActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;

.field final synthetic val$tutorialHighlightView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;Landroid/view/View;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2;->this$0:Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;

    iput-object p2, p0, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2;->val$tutorialHighlightView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .line 70
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2;->this$0:Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;

    invoke-static {v0}, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;->access$100(Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;)V

    .line 71
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2;->val$tutorialHighlightView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 72
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2;->this$0:Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;

    invoke-static {v0}, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;->access$200(Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;)Lcom/amazon/kindle/krx/tutorial/JITTutorial;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2;->this$0:Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/tutorial/JITTutorial;->getTutorialView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 77
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2$1;-><init>(Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2$2;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2$2;-><init>(Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2;)V

    const-wide/16 v2, 0x1f4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :goto_0
    const/4 v0, 0x0

    return v0
.end method
