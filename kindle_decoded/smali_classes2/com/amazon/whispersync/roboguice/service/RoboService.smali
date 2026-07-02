.class public abstract Lcom/amazon/whispersync/roboguice/service/RoboService;
.super Landroid/app/Service;
.source "RoboService.java"

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
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/roboguice/service/RoboService;->scopedObjects:Ljava/util/HashMap;

    .line 62
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/service/RoboService;->namespace:Ljava/lang/String;

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

    .line 103
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/service/RoboService;->scopedObjects:Ljava/util/HashMap;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 96
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 97
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 98
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/service/RoboService;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    new-instance v2, Lcom/amazon/whispersync/roboguice/service/event/OnConfigurationChangedEvent;

    invoke-direct {v2, v0, p1}, Lcom/amazon/whispersync/roboguice/service/event/OnConfigurationChangedEvent;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/service/RoboService;->namespace:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/amazon/whispersync/roboguice/RoboGuice;->getInjector(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/whispersync/roboguice/inject/RoboInjector;

    move-result-object v0

    .line 68
    const-class v1, Lcom/amazon/whispersync/roboguice/event/EventManager;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/Injector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/roboguice/event/EventManager;

    iput-object v1, p0, Lcom/amazon/whispersync/roboguice/service/RoboService;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    .line 69
    invoke-interface {v0, p0}, Lcom/amazon/whispersync/com/google/inject/Injector;->injectMembers(Ljava/lang/Object;)V

    .line 70
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 71
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/service/RoboService;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    new-instance v1, Lcom/amazon/whispersync/roboguice/service/event/OnCreateEvent;

    invoke-direct {v1}, Lcom/amazon/whispersync/roboguice/service/event/OnCreateEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/roboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/service/RoboService;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/service/RoboService;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    new-instance v1, Lcom/amazon/whispersync/roboguice/service/event/OnDestroyEvent;

    invoke-direct {v1}, Lcom/amazon/whispersync/roboguice/service/event/OnDestroyEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/roboguice/event/EventManager;->fire(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 87
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/service/RoboService;->namespace:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/amazon/whispersync/roboguice/RoboGuice;->destroyInjector(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    throw v0

    :catchall_1
    move-exception v0

    .line 87
    :try_start_2
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/service/RoboService;->namespace:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/amazon/whispersync/roboguice/RoboGuice;->destroyInjector(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 89
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    throw v0

    :catchall_2
    move-exception v0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    throw v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    .line 76
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 77
    iget-object p1, p0, Lcom/amazon/whispersync/roboguice/service/RoboService;->eventManager:Lcom/amazon/whispersync/roboguice/event/EventManager;

    new-instance p2, Lcom/amazon/whispersync/roboguice/service/event/OnStartEvent;

    invoke-direct {p2}, Lcom/amazon/whispersync/roboguice/service/event/OnStartEvent;-><init>()V

    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/roboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    return-void
.end method
