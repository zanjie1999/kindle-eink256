.class Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$7;
.super Ljava/lang/Object;
.source "TooltipTutorialLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->setupButtons(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;)V
    .locals 0

    .line 520
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$7;->this$0:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 523
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$7;->this$0:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 524
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$7;->this$0:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;

    invoke-static {v0}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->access$200(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;)Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->getAction()Lcom/amazon/kindle/tutorial/model/ActionConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 528
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$7$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$7$1;-><init>(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$7;Lcom/amazon/kindle/tutorial/model/ActionConfig;)V

    const-wide/16 v3, 0xa

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->scheduleOnMainThread(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    .line 536
    :cond_0
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
