.class public abstract Lcom/amazon/whispersync/roboguice/fragment/RoboListFragment;
.super Lcom/amazon/whispersync/android/support/v4/app/ListFragment;
.source "RoboListFragment.java"


# instance fields
.field protected final namespace:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/app/ListFragment;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/fragment/RoboListFragment;->namespace:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 18
    invoke-super {p0, p1}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 19
    iget-object p1, p0, Lcom/amazon/whispersync/roboguice/fragment/RoboListFragment;->namespace:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->getActivity()Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/whispersync/roboguice/RoboGuice;->getInjector(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/whispersync/roboguice/inject/RoboInjector;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/whispersync/roboguice/inject/RoboInjector;->injectMembersWithoutViews(Ljava/lang/Object;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 24
    invoke-super {p0, p1, p2}, Lcom/amazon/whispersync/android/support/v4/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 25
    iget-object p1, p0, Lcom/amazon/whispersync/roboguice/fragment/RoboListFragment;->namespace:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->getActivity()Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/whispersync/roboguice/RoboGuice;->getInjector(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/whispersync/roboguice/inject/RoboInjector;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/whispersync/roboguice/inject/RoboInjector;->injectViewMembers(Lcom/amazon/whispersync/android/support/v4/app/Fragment;)V

    return-void
.end method
