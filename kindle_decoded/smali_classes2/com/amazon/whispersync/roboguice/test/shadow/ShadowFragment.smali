.class public Lcom/amazon/whispersync/roboguice/test/shadow/ShadowFragment;
.super Ljava/lang/Object;
.source "ShadowFragment.java"


# annotations
.annotation runtime Lcom/xtremelabs/robolectric/internal/Implements;
    value = Lcom/amazon/whispersync/android/support/v4/app/Fragment;
.end annotation


# instance fields
.field protected activity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

.field protected view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivity()Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;
    .locals 1
    .annotation runtime Lcom/xtremelabs/robolectric/internal/Implementation;
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/test/shadow/ShadowFragment;->activity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation runtime Lcom/xtremelabs/robolectric/internal/Implementation;
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/test/shadow/ShadowFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Lcom/xtremelabs/robolectric/internal/Implementation;
    .end annotation

    .line 34
    check-cast p1, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/test/shadow/ShadowFragment;->activity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Lcom/xtremelabs/robolectric/internal/Implementation;
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/test/shadow/ShadowFragment;->view:Landroid/view/View;

    return-void
.end method
