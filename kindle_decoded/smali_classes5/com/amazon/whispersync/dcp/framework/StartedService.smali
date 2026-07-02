.class public abstract Lcom/amazon/whispersync/dcp/framework/StartedService;
.super Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;
.source "StartedService.java"


# static fields
.field private static final EXTRA_INTENT_COUNTER:Ljava/lang/String; = "StartedService_intentCounter"


# instance fields
.field private mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final mIntentCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mIntentStarted:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/ConditionVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/framework/StartedService;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/StartedService;->mIntentStarted:Ljava/util/Map;

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/StartedService;->mIntentCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez p1, :cond_0

    .line 29
    const-class p1, Lcom/amazon/whispersync/dcp/framework/StartedService;

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/StartedService;->mClass:Ljava/lang/Class;

    goto :goto_0

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/StartedService;->mClass:Ljava/lang/Class;

    :goto_0
    return-void
.end method


# virtual methods
.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string v0, "StartedService_intentCounter"

    .line 40
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;->onStartCommand(Landroid/content/Intent;II)I

    const/4 v1, 0x0

    .line 44
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/StartedService;->protectedOnStartCommand(Landroid/content/Intent;II)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    if-lez p3, :cond_1

    .line 56
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/StartedService;->mIntentStarted:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/ConditionVariable;

    if-eqz p3, :cond_0

    .line 59
    invoke-virtual {p3}, Landroid/os/ConditionVariable;->open()V

    .line 61
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_1
    return p2

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_3

    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    if-lez p3, :cond_3

    .line 56
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/StartedService;->mIntentStarted:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/ConditionVariable;

    if-eqz p3, :cond_2

    .line 59
    invoke-virtual {p3}, Landroid/os/ConditionVariable;->open()V

    .line 61
    :cond_2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 63
    :cond_3
    throw p2
.end method

.method protected abstract protectedOnStartCommand(Landroid/content/Intent;II)I
.end method

.method protected startSelfAndWait(Landroid/content/Intent;)V
    .locals 3

    .line 69
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/StartedService;->mClass:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 71
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/StartedService;->mIntentCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const-string v1, "StartedService_intentCounter"

    .line 72
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    new-instance v1, Landroid/os/ConditionVariable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    .line 75
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/StartedService;->mIntentStarted:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {p0, p1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 78
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method
