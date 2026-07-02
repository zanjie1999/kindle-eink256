.class Lcom/amazon/kcp/library/TransientActivity$4;
.super Ljava/lang/Object;
.source "TransientActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/TransientActivity;->onDownloadStateChanged(Lcom/amazon/kindle/services/download/IDownloadService$DownloadStateUpdateEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/TransientActivity;

.field final synthetic val$currentActivity:Landroid/app/Activity;

.field final synthetic val$errorIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/TransientActivity;Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/amazon/kcp/library/TransientActivity$4;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    iput-object p2, p0, Lcom/amazon/kcp/library/TransientActivity$4;->val$currentActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/amazon/kcp/library/TransientActivity$4;->val$errorIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 245
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$4;->val$currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 246
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$4;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/TransientActivity;->access$300(Lcom/amazon/kcp/library/TransientActivity;)Lcom/amazon/kcp/library/ui/BookCoverView;

    move-result-object v0

    const-string v2, "activity_transition_with_animation"

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTransitionName(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$4;->val$currentActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/amazon/kcp/library/TransientActivity$4;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    .line 248
    invoke-static {v3}, Lcom/amazon/kcp/library/TransientActivity;->access$300(Lcom/amazon/kcp/library/TransientActivity;)Lcom/amazon/kcp/library/ui/BookCoverView;

    move-result-object v3

    .line 247
    invoke-static {v0, v3, v2}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 249
    iget-object v2, p0, Lcom/amazon/kcp/library/TransientActivity$4;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    iget-object v3, p0, Lcom/amazon/kcp/library/TransientActivity$4;->val$errorIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 250
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$4;->val$currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method
