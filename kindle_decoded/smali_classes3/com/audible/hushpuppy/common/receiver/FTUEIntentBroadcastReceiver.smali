.class public final Lcom/audible/hushpuppy/common/receiver/FTUEIntentBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FTUEIntentBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/common/receiver/FTUEIntentBroadcastReceiver$FTUEIntentFilter;
    }
.end annotation


# static fields
.field public static final ACTION_FTUE_SYNC:Ljava/lang/String; = "com.amazon.kindle.tablet.ftue_free_for_all"

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final filter:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/common/receiver/FTUEIntentBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/common/receiver/FTUEIntentBroadcastReceiver;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 41
    new-instance v0, Lcom/audible/hushpuppy/common/receiver/FTUEIntentBroadcastReceiver$FTUEIntentFilter;

    invoke-direct {v0}, Lcom/audible/hushpuppy/common/receiver/FTUEIntentBroadcastReceiver$FTUEIntentFilter;-><init>()V

    iput-object v0, p0, Lcom/audible/hushpuppy/common/receiver/FTUEIntentBroadcastReceiver;->filter:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public getFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/audible/hushpuppy/common/receiver/FTUEIntentBroadcastReceiver;->filter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 48
    sget-object p2, Lcom/audible/hushpuppy/common/receiver/FTUEIntentBroadcastReceiver;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FTUEIntentBroadcastReceiver received an intent action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->eventBus()Lde/greenrobot/event/EventBus;

    move-result-object p1

    new-instance p2, Lcom/audible/hushpuppy/common/event/sync/FTUESyncEvent;

    invoke-direct {p2}, Lcom/audible/hushpuppy/common/event/sync/FTUESyncEvent;-><init>()V

    invoke-virtual {p1, p2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
