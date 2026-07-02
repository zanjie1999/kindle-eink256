.class public Lcom/amazon/whispersync/roboguice/activity/RoboAccountAuthenticatorActivity;
.super Landroid/accounts/AccountAuthenticatorActivity;
.source "RoboAccountAuthenticatorActivity.java"

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

    .line 52
    invoke-direct {p0}, Landroid/accounts/AccountAuthenticatorActivity;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/roboguice/activity/RoboAccountAuthenticatorActivity;->scopedObjects:Ljava/util/HashMap;

    .line 53
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/activity/RoboAccountAuthenticatorActivity;->namespace:Ljava/lang/String;

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

    .line 139
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/activity/RoboAccountAuthenticatorActivity;->scopedObjects:Ljava/util/HashMap;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 133
    invoke-super {p0, p1, p2, p3}, Landroid/accounts/AccountAuthenticatorActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 134
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/activity/RoboAccountAuthenticatorActivity;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    new-instance v1, Lcom/amazon/whispersync/roboguice/activity/event/OnActivityResultEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/amazon/whispersync/roboguice/activity/event/OnActivityResultEvent;-><init>(IILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/roboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 119
    invoke-virtual {p0}, Landroid/accounts/AccountAuthenticatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 120
    invoke-super {p0, p1}, Landroid/accounts/AccountAuthenticatorActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 121
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/activity/RoboAccountAuthenticatorActivity;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    new-instance v2, Lcom/amazon/whispersync/roboguice/activity/event/OnConfigurationChangedEvent;

    invoke-direct {v2, v0, p1}, Lcom/amazon/whispersync/roboguice/activity/event/OnConfigurationChangedEvent;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .line 126
    invoke-super {p0}, Landroid/accounts/AccountAuthenticatorActivity;->onContentChanged()V

    .line 127
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/activity/RoboAccountAuthenticatorActivity;->namespace:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/amazon/whispersync/roboguice/RoboGuice;->getInjector(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/whispersync/roboguice/inject/RoboInjector;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/whispersync/roboguice/inject/RoboInjector;->injectViewMembers(Landroid/app/Activity;)V

    .line 128
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/activity/RoboAccountAuthenticatorActivity;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    new-instance v1, Lcom/amazon/whispersync/roboguice/activity/event/OnContentChangedEvent;

    invoke-direct {v1}, Lcom/amazon/whispersync/roboguice/activity/event/OnContentChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/roboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/activity/RoboAccountAuthenticatorActivity;->namespace:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/amazon/whispersync/roboguice/RoboGuice;->getInjector(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/whispersync/roboguice/inject/RoboInjector;

    move-result-object v0

    .line 59
    const-class v1, Lcom/amazon/whispersync/roboguice/event/EventManager;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/Injector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/roboguice/event/EventManager;

    iput-object v1, p0, Lcom/amazon/whispersync/roboguice/activity/RoboAccountAuthenticatorActivity;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    .line 60
    invoke-interface {v0, p0}, Lcom/amazon/whispersync/roboguice/inject/RoboInjector;->injectMembersWithoutViews(Ljava/lang/Object;)V

    .line 61
    invoke-super {p0, p1}, Landroid/accounts/AccountAuthenticatorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/activity/RoboAccountAuthenticatorActivity;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    new-instance v1, Lcom/amazon/whispersync/roboguice/activity/event/OnCreateEvent;

    invoke-direct {v1, p1}, Lcom/amazon/whispersync/roboguice/activity/event/OnCreateEvent;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/roboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/activity/RoboAccountAuthenticatorActivity;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    new-instance v1, Lcom/amazon/whispersync/roboguice/activity/event/OnDestroyEvent;

    invoke-direct {v1}, Lcom/amazon/whispersync/roboguice/activity/event/OnDestroyEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/roboguice/event/EventManager;->fire(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 110
    :try_start_1
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/activity/RoboAccountAuthenticatorActivity;->namespace:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/amazon/whispersync/roboguice/RoboGuice;->destroyInjector(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    invoke-super {p0}, Landroid/accounts/AccountAuthenticatorActivity;->onDestroy()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/accounts/AccountAuthenticatorActivity;->onDestroy()V

    throw v0

    :catchall_1
    move-exception v0

    .line 110
    :try_start_2
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/activity/RoboAccountAuthenticatorActivity;->namespace:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/amazon/whispersync/roboguice/RoboGuice;->destroyInjector(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 112
    invoke-super {p0}, Landroid/accounts/AccountAuthenticatorActivity;->onDestroy()V

    throw v0

    :catchall_2
    move-exception v0

    invoke-super {p0}, Landroid/accounts/AccountAuthenticatorActivity;->onDestroy()V

    throw v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 91
    invoke-super {p0, p1}, Landroid/accounts/AccountAuthenticatorActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 92
    iget-object p1, p0, Lcom/amazon/whispersync/roboguice/activity/RoboAccountAuthenticatorActivity;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    new-instance v0, Lcom/amazon/whispersync/roboguice/activity/event/OnNewIntentEvent;

    invoke-direct {v0}, Lcom/amazon/whispersync/roboguice/activity/event/OnNewIntentEvent;-><init>()V

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/roboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 85
    invoke-super {p0}, Landroid/accounts/AccountAuthenticatorActivity;->onPause()V

    .line 86
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/activity/RoboAccountAuthenticatorActivity;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    new-instance v1, Lcom/amazon/whispersync/roboguice/activity/event/OnPauseEvent;

    invoke-direct {v1}, Lcom/amazon/whispersync/roboguice/activity/event/OnPauseEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/roboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    .line 67
    invoke-super {p0}, Landroid/accounts/AccountAuthenticatorActivity;->onRestart()V

    .line 68
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/activity/RoboAccountAuthenticatorActivity;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    new-instance v1, Lcom/amazon/whispersync/roboguice/activity/event/OnRestartEvent;

    invoke-direct {v1}, Lcom/amazon/whispersync/roboguice/activity/event/OnRestartEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/roboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 79
    invoke-super {p0}, Landroid/accounts/AccountAuthenticatorActivity;->onResume()V

    .line 80
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/activity/RoboAccountAuthenticatorActivity;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    new-instance v1, Lcom/amazon/whispersync/roboguice/activity/event/OnResumeEvent;

    invoke-direct {v1}, Lcom/amazon/whispersync/roboguice/activity/event/OnResumeEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/roboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 73
    invoke-super {p0}, Landroid/accounts/AccountAuthenticatorActivity;->onStart()V

    .line 74
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/activity/RoboAccountAuthenticatorActivity;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    new-instance v1, Lcom/amazon/whispersync/roboguice/activity/event/OnStartEvent;

    invoke-direct {v1}, Lcom/amazon/whispersync/roboguice/activity/event/OnStartEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/roboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/activity/RoboAccountAuthenticatorActivity;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    new-instance v1, Lcom/amazon/whispersync/roboguice/activity/event/OnStopEvent;

    invoke-direct {v1}, Lcom/amazon/whispersync/roboguice/activity/event/OnStopEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/roboguice/event/EventManager;->fire(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-super {p0}, Landroid/accounts/AccountAuthenticatorActivity;->onStop()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/accounts/AccountAuthenticatorActivity;->onStop()V

    throw v0
.end method
