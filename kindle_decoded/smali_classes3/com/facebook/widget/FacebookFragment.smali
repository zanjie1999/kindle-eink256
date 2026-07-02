.class Lcom/facebook/widget/FacebookFragment;
.super Landroidx/fragment/app/Fragment;
.source "FacebookFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/FacebookFragment$DefaultSessionStatusCallback;
    }
.end annotation


# instance fields
.field private sessionTracker:Lcom/facebook/internal/SessionTracker;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getSession()Lcom/facebook/Session;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final isSessionOpen()Z
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 48
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 49
    new-instance p1, Lcom/facebook/internal/SessionTracker;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/facebook/widget/FacebookFragment$DefaultSessionStatusCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/widget/FacebookFragment$DefaultSessionStatusCallback;-><init>(Lcom/facebook/widget/FacebookFragment;Lcom/facebook/widget/FacebookFragment$1;)V

    invoke-direct {p1, v0, v1}, Lcom/facebook/internal/SessionTracker;-><init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;)V

    iput-object p1, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 59
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 60
    iget-object v0, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 65
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 66
    iget-object v0, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->stopTracking()V

    return-void
.end method

.method protected onSessionStateChange(Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method
