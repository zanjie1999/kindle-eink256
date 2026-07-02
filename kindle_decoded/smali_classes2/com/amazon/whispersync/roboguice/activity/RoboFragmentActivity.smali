.class public Lcom/amazon/whispersync/roboguice/activity/RoboFragmentActivity;
.super Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;
.source "RoboFragmentActivity.java"

# interfaces
.implements Lcom/amazon/whispersync/roboguice/util/RoboContext;


# instance fields
.field protected eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

.field ignored:Lcom/amazon/whispersync/roboguice/inject/ContentViewListener;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field protected final namespace:Ljava/lang/String;

.field protected scopedObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/roboguice/activity/RoboFragmentActivity;->scopedObjects:Ljava/util/HashMap;

    .line 46
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/activity/RoboFragmentActivity;->namespace:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getScopedObjectMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/activity/RoboFragmentActivity;->scopedObjects:Ljava/util/HashMap;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 126
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 127
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/activity/RoboFragmentActivity;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    new-instance v1, Lcom/amazon/whispersync/roboguice/activity/event/OnActivityResultEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/amazon/whispersync/roboguice/activity/event/OnActivityResultEvent;-><init>(IILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/roboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 112
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 113
    invoke-super {p0, p1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 114
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/activity/RoboFragmentActivity;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    new-instance v2, Lcom/amazon/whispersync/roboguice/activity/event/OnConfigurationChangedEvent;

    invoke-direct {v2, v0, p1}, Lcom/amazon/whispersync/roboguice/activity/event/OnConfigurationChangedEvent;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 120
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/activity/RoboFragmentActivity;->namespace:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/amazon/whispersync/roboguice/RoboGuice;->getInjector(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/whispersync/roboguice/inject/RoboInjector;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/whispersync/roboguice/inject/RoboInjector;->injectViewMembers(Landroid/app/Activity;)V

    .line 121
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/activity/RoboFragmentActivity;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    new-instance v1, Lcom/amazon/whispersync/roboguice/activity/event/OnContentChangedEvent;

    invoke-direct {v1}, Lcom/amazon/whispersync/roboguice/activity/event/OnContentChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/roboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/activity/RoboFragmentActivity;->namespace:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/amazon/whispersync/roboguice/RoboGuice;->getInjector(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/whispersync/roboguice/inject/RoboInjector;

    move-result-object v0

    .line 52
    const-class v1, Lcom/amazon/whispersync/roboguice/event/EventManager;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/Injector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/roboguice/event/EventManager;

    iput-object v1, p0, Lcom/amazon/whispersync/roboguice/activity/RoboFragmentActivity;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    .line 53
    invoke-interface {v0, p0}, Lcom/amazon/whispersync/roboguice/inject/RoboInjector;->injectMembersWithoutViews(Ljava/lang/Object;)V

    .line 54
    invoke-super {p0, p1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/activity/RoboFragmentActivity;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    new-instance v1, Lcom/amazon/whispersync/roboguice/activity/event/OnCreateEvent;

    invoke-direct {v1, p1}, Lcom/amazon/whispersync/roboguice/activity/event/OnCreateEvent;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/roboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/activity/RoboFragmentActivity;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    new-instance v1, Lcom/amazon/whispersync/roboguice/activity/event/OnDestroyEvent;

    invoke-direct {v1}, Lcom/amazon/whispersync/roboguice/activity/event/OnDestroyEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/roboguice/event/EventManager;->fire(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 103
    :try_start_1
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/activity/RoboFragmentActivity;->namespace:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/amazon/whispersync/roboguice/RoboGuice;->destroyInjector(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    invoke-super {p0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->onDestroy()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->onDestroy()V

    throw v0

    :catchall_1
    move-exception v0

    .line 103
    :try_start_2
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/activity/RoboFragmentActivity;->namespace:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/amazon/whispersync/roboguice/RoboGuice;->destroyInjector(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 105
    invoke-super {p0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->onDestroy()V

    throw v0

    :catchall_2
    move-exception v0

    invoke-super {p0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->onDestroy()V

    throw v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 85
    iget-object p1, p0, Lcom/amazon/whispersync/roboguice/activity/RoboFragmentActivity;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    new-instance v0, Lcom/amazon/whispersync/roboguice/activity/event/OnNewIntentEvent;

    invoke-direct {v0}, Lcom/amazon/whispersync/roboguice/activity/event/OnNewIntentEvent;-><init>()V

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/roboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 78
    invoke-super {p0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->onPause()V

    .line 79
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/activity/RoboFragmentActivity;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    new-instance v1, Lcom/amazon/whispersync/roboguice/activity/event/OnPauseEvent;

    invoke-direct {v1}, Lcom/amazon/whispersync/roboguice/activity/event/OnPauseEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/roboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 61
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/activity/RoboFragmentActivity;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    new-instance v1, Lcom/amazon/whispersync/roboguice/activity/event/OnRestartEvent;

    invoke-direct {v1}, Lcom/amazon/whispersync/roboguice/activity/event/OnRestartEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/roboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 72
    invoke-super {p0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->onResume()V

    .line 73
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/activity/RoboFragmentActivity;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    new-instance v1, Lcom/amazon/whispersync/roboguice/activity/event/OnResumeEvent;

    invoke-direct {v1}, Lcom/amazon/whispersync/roboguice/activity/event/OnResumeEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/roboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 66
    invoke-super {p0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->onStart()V

    .line 67
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/activity/RoboFragmentActivity;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    new-instance v1, Lcom/amazon/whispersync/roboguice/activity/event/OnStartEvent;

    invoke-direct {v1}, Lcom/amazon/whispersync/roboguice/activity/event/OnStartEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/roboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/activity/RoboFragmentActivity;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    new-instance v1, Lcom/amazon/whispersync/roboguice/activity/event/OnStopEvent;

    invoke-direct {v1}, Lcom/amazon/whispersync/roboguice/activity/event/OnStopEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/roboguice/event/EventManager;->fire(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-super {p0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->onStop()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->onStop()V

    throw v0
.end method
