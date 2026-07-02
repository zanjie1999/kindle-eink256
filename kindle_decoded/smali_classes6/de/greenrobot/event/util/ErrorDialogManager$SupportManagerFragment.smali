.class public Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;
.super Landroidx/fragment/app/Fragment;
.source "ErrorDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/greenrobot/event/util/ErrorDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SupportManagerFragment"
.end annotation


# instance fields
.field protected argumentsForErrorDialog:Landroid/os/Bundle;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private executionScope:Ljava/lang/Object;

.field protected finishAfterDialog:Z

.field private skipRegisterOnNextResume:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    sget-object p1, Lde/greenrobot/event/util/ErrorDialogManager;->factory:Lde/greenrobot/event/util/ErrorDialogFragmentFactory;

    iget-object p1, p1, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;

    invoke-virtual {p1}, Lde/greenrobot/event/util/ErrorDialogConfig;->getEventBus()Lde/greenrobot/event/EventBus;

    const/4 p1, 0x0

    throw p1
.end method

.method public onEventMainThread(Lde/greenrobot/event/util/ThrowableFailureEvent;)V
    .locals 5

    .line 65
    iget-object v0, p0, Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;->executionScope:Ljava/lang/Object;

    invoke-static {v0, p1}, Lde/greenrobot/event/util/ErrorDialogManager;->access$000(Ljava/lang/Object;Lde/greenrobot/event/util/ThrowableFailureEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-static {p1}, Lde/greenrobot/event/util/ErrorDialogManager;->checkLogException(Lde/greenrobot/event/util/ThrowableFailureEvent;)V

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    const-string v1, "de.greenrobot.eventbus.error_dialog"

    .line 73
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/DialogFragment;

    if-eqz v2, :cond_1

    .line 76
    invoke-virtual {v2}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 79
    :cond_1
    sget-object v2, Lde/greenrobot/event/util/ErrorDialogManager;->factory:Lde/greenrobot/event/util/ErrorDialogFragmentFactory;

    iget-boolean v3, p0, Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;->finishAfterDialog:Z

    iget-object v4, p0, Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;->argumentsForErrorDialog:Landroid/os/Bundle;

    invoke-virtual {v2, p1, v3, v4}, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->prepareErrorFragment(Lde/greenrobot/event/util/ThrowableFailureEvent;ZLandroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/DialogFragment;

    if-eqz p1, :cond_2

    .line 82
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 60
    iget-object v0, p0, Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 61
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 48
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 49
    iget-boolean v0, p0, Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;->skipRegisterOnNextResume:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;->skipRegisterOnNextResume:Z

    return-void

    .line 53
    :cond_0
    sget-object v0, Lde/greenrobot/event/util/ErrorDialogManager;->factory:Lde/greenrobot/event/util/ErrorDialogFragmentFactory;

    iget-object v0, v0, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;

    invoke-virtual {v0}, Lde/greenrobot/event/util/ErrorDialogConfig;->getEventBus()Lde/greenrobot/event/EventBus;

    const/4 v0, 0x0

    throw v0
.end method
