.class Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity$1;
.super Landroid/os/Handler;
.source "FragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity$1;->this$0:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 93
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity$1;->this$0:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    iget-object p1, p1, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->mFragments:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->dispatchResume()V

    .line 90
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity$1;->this$0:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    iget-object p1, p1, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->mFragments:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    goto :goto_0

    .line 84
    :cond_1
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity$1;->this$0:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    iget-boolean v0, p1, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->mStopped:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->doReallyStop(Z)V

    :cond_2
    :goto_0
    return-void
.end method
