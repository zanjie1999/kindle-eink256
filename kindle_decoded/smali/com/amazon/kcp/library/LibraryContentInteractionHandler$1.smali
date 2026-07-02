.class Lcom/amazon/kcp/library/LibraryContentInteractionHandler$1;
.super Ljava/lang/Object;
.source "LibraryContentInteractionHandler.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LibraryContentInteractionHandler;-><init>(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/FragmentManager;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/LibraryContentInteractionHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$1;->this$0:Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 1

    .line 204
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$1;->this$0:Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

    invoke-static {p1}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->access$000(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;)Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 207
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$1;->this$0:Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

    invoke-static {p1}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->access$000(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 208
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$1;->this$0:Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->access$002(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
