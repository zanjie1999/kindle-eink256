.class public Lcom/amazon/whispersync/dcp/framework/IntentEvent$Factory;
.super Ljava/lang/Object;
.source "IntentEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/IntentEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field protected mInjector:Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/amazon/whispersync/dcp/framework/IntentEvent;
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/dcp/framework/IntentEvent$Factory;->create(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/IntentEvent;

    move-result-object v0

    return-object v0
.end method

.method public create(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/IntentEvent;
    .locals 3

    .line 55
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/framework/IntentEvent;-><init>()V

    .line 57
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent$Factory;->mInjector:Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;

    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->injectMembers(Ljava/lang/Object;)V

    .line 59
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent$Factory;->mInjector:Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;

    const-class v2, Lcom/amazon/whispersync/dcp/framework/SynchronizationFactory;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/dcp/framework/SynchronizationFactory;

    .line 60
    invoke-static {v0, v1, p1}, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->access$000(Lcom/amazon/whispersync/dcp/framework/IntentEvent;Lcom/amazon/whispersync/dcp/framework/SynchronizationFactory;Ljava/lang/String;)V

    return-object v0
.end method
