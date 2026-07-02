.class public final Lcom/audible/hushpuppy/common/debug/DebugBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DebugBroadcastReceiver.java"


# static fields
.field private static final DEBUG_DUMP_INTENT_FILTER:Ljava/lang/String; = "com.audible.hushpuppy.DEBUG_DUMP"

.field public static final DEBUG_INTENT_FILTER:Landroid/content/IntentFilter;

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final START_DEBUG_ACTIVITY_INTENT_FILTER:Ljava/lang/String; = "com.audible.hushpuppy.START_AUDIBLE_DEBUG_ACTIVITY"


# instance fields
.field private final eventBus:Lde/greenrobot/event/EventBus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/audible/hushpuppy/common/debug/DebugBroadcastReceiver;->DEBUG_INTENT_FILTER:Landroid/content/IntentFilter;

    .line 30
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/common/debug/DebugBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/common/debug/DebugBroadcastReceiver;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lde/greenrobot/event/EventBus;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/audible/hushpuppy/common/debug/DebugBroadcastReceiver;->eventBus:Lde/greenrobot/event/EventBus;

    .line 56
    sget-object p1, Lcom/audible/hushpuppy/common/debug/DebugBroadcastReceiver;->DEBUG_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v0, "com.audible.hushpuppy.DEBUG_DUMP"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    sget-object p1, Lcom/audible/hushpuppy/common/debug/DebugBroadcastReceiver;->DEBUG_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v0, "com.audible.hushpuppy.START_AUDIBLE_DEBUG_ACTIVITY"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method private dumpDeviceState(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    const-string v1, "Dumping model state ..."

    .line 85
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 86
    iget-object v1, p0, Lcom/audible/hushpuppy/common/debug/DebugBroadcastReceiver;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/audible/hushpuppy/common/event/debug/ModelDumpEvent;

    invoke-direct {v2}, Lcom/audible/hushpuppy/common/event/debug/ModelDumpEvent;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    const-string v1, "Dumping database ..."

    .line 88
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 89
    iget-object p1, p0, Lcom/audible/hushpuppy/common/debug/DebugBroadcastReceiver;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/audible/hushpuppy/common/event/debug/DbDumpEvent;

    invoke-direct {v0}, Lcom/audible/hushpuppy/common/event/debug/DbDumpEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private startDebugActivity(Landroid/content/Context;)V
    .locals 2

    .line 94
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/audible/hushpuppy/common/debug/AudibleDebugActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 95
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 96
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-eqz p2, :cond_6

    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 69
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x1ad1f535

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x74972caa

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "com.audible.hushpuppy.START_AUDIBLE_DEBUG_ACTIVITY"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v1, "com.audible.hushpuppy.DEBUG_DUMP"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    .line 78
    sget-object p1, Lcom/audible/hushpuppy/common/debug/DebugBroadcastReceiver;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Missing correct intent action"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 74
    :cond_4
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/common/debug/DebugBroadcastReceiver;->dumpDeviceState(Landroid/content/Context;)V

    goto :goto_1

    .line 71
    :cond_5
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/common/debug/DebugBroadcastReceiver;->startDebugActivity(Landroid/content/Context;)V

    :goto_1
    return-void

    .line 65
    :cond_6
    :goto_2
    sget-object p1, Lcom/audible/hushpuppy/common/debug/DebugBroadcastReceiver;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Intent or Intent action is null "

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void
.end method
