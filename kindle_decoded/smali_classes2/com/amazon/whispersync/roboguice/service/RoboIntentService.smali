.class public abstract Lcom/amazon/whispersync/roboguice/service/RoboIntentService;
.super Landroid/app/IntentService;
.source "RoboIntentService.java"

# interfaces
.implements Lcom/amazon/whispersync/roboguice/util/RoboContext;


# instance fields
.field protected eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

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
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 46
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/service/RoboIntentService;->scopedObjects:Ljava/util/HashMap;

    .line 53
    iput-object p2, p0, Lcom/amazon/whispersync/roboguice/service/RoboIntentService;->namespace:Ljava/lang/String;

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

    .line 96
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/service/RoboIntentService;->scopedObjects:Ljava/util/HashMap;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 89
    invoke-virtual {p0}, Landroid/app/IntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 90
    invoke-super {p0, p1}, Landroid/app/IntentService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 91
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/service/RoboIntentService;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    new-instance v2, Lcom/amazon/whispersync/roboguice/service/event/OnConfigurationChangedEvent;

    invoke-direct {v2, v0, p1}, Lcom/amazon/whispersync/roboguice/service/event/OnConfigurationChangedEvent;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/service/RoboIntentService;->namespace:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/amazon/whispersync/roboguice/RoboGuice;->getInjector(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/whispersync/roboguice/inject/RoboInjector;

    move-result-object v0

    .line 60
    const-class v1, Lcom/amazon/whispersync/roboguice/event/EventManager;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/Injector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/roboguice/event/EventManager;

    iput-object v1, p0, Lcom/amazon/whispersync/roboguice/service/RoboIntentService;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    .line 61
    invoke-interface {v0, p0}, Lcom/amazon/whispersync/com/google/inject/Injector;->injectMembers(Ljava/lang/Object;)V

    .line 62
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 63
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/service/RoboIntentService;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    new-instance v1, Lcom/amazon/whispersync/roboguice/service/event/OnCreateEvent;

    invoke-direct {v1}, Lcom/amazon/whispersync/roboguice/service/event/OnCreateEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/roboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/service/RoboIntentService;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/service/RoboIntentService;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    new-instance v1, Lcom/amazon/whispersync/roboguice/service/event/OnDestroyEvent;

    invoke-direct {v1}, Lcom/amazon/whispersync/roboguice/service/event/OnDestroyEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/roboguice/event/EventManager;->fire(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 80
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/service/RoboIntentService;->namespace:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/amazon/whispersync/roboguice/RoboGuice;->destroyInjector(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    throw v0

    :catchall_1
    move-exception v0

    .line 80
    :try_start_2
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/service/RoboIntentService;->namespace:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/amazon/whispersync/roboguice/RoboGuice;->destroyInjector(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 82
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    throw v0

    :catchall_2
    move-exception v0

    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    throw v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    .line 68
    invoke-super {p0, p1, p2}, Landroid/app/IntentService;->onStart(Landroid/content/Intent;I)V

    .line 69
    iget-object p1, p0, Lcom/amazon/whispersync/roboguice/service/RoboIntentService;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    new-instance p2, Lcom/amazon/whispersync/roboguice/service/event/OnStartEvent;

    invoke-direct {p2}, Lcom/amazon/whispersync/roboguice/service/event/OnStartEvent;-><init>()V

    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/roboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    return-void
.end method
