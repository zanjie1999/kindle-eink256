.class public final Lcom/audible/hushpuppy/controller/audible/stats/receivers/TimeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimeChangeReceiver.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final filter:Landroid/content/IntentFilter;

.field private final handler:Lcom/audible/hushpuppy/common/system/IWorkerHandler;

.field private final listeningStatsManager:Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/audible/stats/receivers/TimeChangeReceiver;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/stats/receivers/TimeChangeReceiver;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;Lcom/audible/hushpuppy/common/system/IWorkerHandler;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "listeningStatsManager can\'t be null"

    .line 43
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "handler can\'t be null"

    .line 44
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/receivers/TimeChangeReceiver;->listeningStatsManager:Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;

    .line 47
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/audible/stats/receivers/TimeChangeReceiver;->handler:Lcom/audible/hushpuppy/common/system/IWorkerHandler;

    .line 49
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/receivers/TimeChangeReceiver;->filter:Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.TIMEZONE_CHANGED"

    .line 50
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/receivers/TimeChangeReceiver;->filter:Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.TIME_SET"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/audible/hushpuppy/controller/audible/stats/receivers/TimeChangeReceiver;)Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/audible/stats/receivers/TimeChangeReceiver;->listeningStatsManager:Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;

    return-object p0
.end method


# virtual methods
.method public getFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/receivers/TimeChangeReceiver;->filter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 57
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/stats/receivers/TimeChangeReceiver;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Received Time change event"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/receivers/TimeChangeReceiver;->handler:Lcom/audible/hushpuppy/common/system/IWorkerHandler;

    new-instance p2, Lcom/audible/hushpuppy/controller/audible/stats/receivers/TimeChangeReceiver$1;

    invoke-direct {p2, p0}, Lcom/audible/hushpuppy/controller/audible/stats/receivers/TimeChangeReceiver$1;-><init>(Lcom/audible/hushpuppy/controller/audible/stats/receivers/TimeChangeReceiver;)V

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/system/IWorkerHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method
