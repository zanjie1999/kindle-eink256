.class public Lcom/amazon/whispersync/dcp/framework/IntentEvent;
.super Ljava/lang/Object;
.source "IntentEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/IntentEvent$Factory;
    }
.end annotation


# static fields
.field private static final ACTION_STATE_CHANGED:Ljava/lang/String; = "com.amazon.whispersync.dcp.framework.IntentEvent.STATE_CHANGED"

.field static final DEFAULT_SPURIOUS_WAKEUP_INTERVAL_MILLIS:J

.field static final DYN_CONFIG_INTENTEVENT_SPURIOUS_WAKEUP_INTERVAL:Ljava/lang/String; = "dcp.intentevent.spurious_wakeup_interval_ms"

.field private static final INTENT_EVENT_SPURIOUS_WAKEUP_INTERVAL_SETTINGS:Lcom/amazon/whispersync/dcp/settings/SettingLong;

.field private static final LOG_LEVEL:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlarmManager:Lcom/amazon/whispersync/dcp/framework/AlarmManagerWrapper;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private final mIntentFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mSpuriousWakeupIntervalMillis:Ljava/lang/Long;

.field private mStateChanged:Lcom/amazon/whispersync/dcp/framework/AutoResetEvent;

.field private mStateChangedIntent:Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;

.field private final mStateChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mSystem:Lcom/amazon/whispersync/dcp/framework/SystemWrapper;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 25
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->DEFAULT_SPURIOUS_WAKEUP_INTERVAL_MILLIS:J

    .line 30
    const-class v0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    const-string v1, "com.amazon.whispersync.dcp.framework.IntentEvent.LOG_LEVEL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->LOG_LEVEL:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    .line 35
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingLong;

    sget-wide v1, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->DEFAULT_SPURIOUS_WAKEUP_INTERVAL_MILLIS:J

    const-string v3, "dcp.intentevent.spurious_wakeup_interval_ms"

    invoke-direct {v0, v3, v1, v2}, Lcom/amazon/whispersync/dcp/settings/SettingLong;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->INTENT_EVENT_SPURIOUS_WAKEUP_INTERVAL_SETTINGS:Lcom/amazon/whispersync/dcp/settings/SettingLong;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/IntentEvent$1;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/dcp/framework/IntentEvent$1;-><init>(Lcom/amazon/whispersync/dcp/framework/IntentEvent;)V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->mStateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->mIntentFilters:Ljava/util/List;

    .line 112
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.amazon.whispersync.dcp.framework.IntentEvent.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/whispersync/dcp/framework/SystemWrapper;Lcom/amazon/whispersync/dcp/framework/AlarmManagerWrapper;Lcom/amazon/whispersync/dcp/framework/SynchronizationFactory;Lcom/amazon/whispersync/dcp/framework/PendingIntentFactory;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 90
    invoke-direct/range {v0 .. v6}, Lcom/amazon/whispersync/dcp/framework/IntentEvent;-><init>(Landroid/content/Context;Lcom/amazon/whispersync/dcp/framework/SystemWrapper;Lcom/amazon/whispersync/dcp/framework/AlarmManagerWrapper;Lcom/amazon/whispersync/dcp/framework/SynchronizationFactory;Lcom/amazon/whispersync/dcp/framework/PendingIntentFactory;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/whispersync/dcp/framework/SystemWrapper;Lcom/amazon/whispersync/dcp/framework/AlarmManagerWrapper;Lcom/amazon/whispersync/dcp/framework/SynchronizationFactory;Lcom/amazon/whispersync/dcp/framework/PendingIntentFactory;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/IntentEvent$1;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/dcp/framework/IntentEvent$1;-><init>(Lcom/amazon/whispersync/dcp/framework/IntentEvent;)V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->mStateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->mIntentFilters:Ljava/util/List;

    .line 101
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->mContext:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->mSystem:Lcom/amazon/whispersync/dcp/framework/SystemWrapper;

    .line 103
    iput-object p3, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->mAlarmManager:Lcom/amazon/whispersync/dcp/framework/AlarmManagerWrapper;

    .line 104
    invoke-virtual {p4, p6}, Lcom/amazon/whispersync/dcp/framework/SynchronizationFactory;->newAutoResetEvent(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/AutoResetEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->mStateChanged:Lcom/amazon/whispersync/dcp/framework/AutoResetEvent;

    .line 105
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->mIntentFilters:Ljava/util/List;

    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "com.amazon.whispersync.dcp.framework.IntentEvent.STATE_CHANGED"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-virtual {p5, p1, p3, p2, p3}, Lcom/amazon/whispersync/dcp/framework/PendingIntentFactory;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->mStateChangedIntent:Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/dcp/framework/IntentEvent;Lcom/amazon/whispersync/dcp/framework/SynchronizationFactory;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->setup(Lcom/amazon/whispersync/dcp/framework/SynchronizationFactory;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Lcom/amazon/whispersync/dcp/settings/SettingInteger;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->LOG_LEVEL:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/whispersync/dcp/framework/IntentEvent;)Lcom/amazon/whispersync/dcp/framework/AutoResetEvent;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->mStateChanged:Lcom/amazon/whispersync/dcp/framework/AutoResetEvent;

    return-object p0
.end method

.method private setIntentFactory(Lcom/amazon/whispersync/dcp/framework/PendingIntentFactory;)V
    .locals 3
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.amazon.whispersync.dcp.framework.IntentEvent.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Lcom/amazon/whispersync/dcp/framework/PendingIntentFactory;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->mStateChangedIntent:Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;

    return-void
.end method

.method private setup(Lcom/amazon/whispersync/dcp/framework/SynchronizationFactory;Ljava/lang/String;)V
    .locals 0

    .line 123
    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/dcp/framework/SynchronizationFactory;->newAutoResetEvent(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/AutoResetEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->mStateChanged:Lcom/amazon/whispersync/dcp/framework/AutoResetEvent;

    return-void
.end method

.method private startSpuriousWakeupAlarm()V
    .locals 9

    .line 209
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->mSpuriousWakeupIntervalMillis:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 215
    :cond_0
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->INTENT_EVENT_SPURIOUS_WAKEUP_INTERVAL_SETTINGS:Lcom/amazon/whispersync/dcp/settings/SettingLong;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/settings/SettingLong;->getValue()J

    move-result-wide v0

    .line 218
    :goto_0
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->mAlarmManager:Lcom/amazon/whispersync/dcp/framework/AlarmManagerWrapper;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->mSystem:Lcom/amazon/whispersync/dcp/framework/SystemWrapper;

    invoke-virtual {v4}, Lcom/amazon/whispersync/dcp/framework/SystemWrapper;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v0

    iget-object v8, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->mStateChangedIntent:Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;

    move-wide v6, v0

    invoke-virtual/range {v2 .. v8}, Lcom/amazon/whispersync/dcp/framework/AlarmManagerWrapper;->setRepeating(IJJLcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;)V

    .line 223
    sget-object v2, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->LOG_LEVEL:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->getValue()I

    move-result v2

    sget-object v3, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wakeup alarm set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms from now"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private stopSpuriousWakeupAlarm()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->mAlarmManager:Lcom/amazon/whispersync/dcp/framework/AlarmManagerWrapper;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->mStateChangedIntent:Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/AlarmManagerWrapper;->cancel(Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;)V

    return-void
.end method


# virtual methods
.method public addIntentFilter(Landroid/content/IntentFilter;)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->mIntentFilters:Ljava/util/List;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, p1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getSpuriousWakeupIntervalMillis()J
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->mSpuriousWakeupIntervalMillis:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 145
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->INTENT_EVENT_SPURIOUS_WAKEUP_INTERVAL_SETTINGS:Lcom/amazon/whispersync/dcp/settings/SettingLong;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/settings/SettingLong;->getValue()J

    move-result-wide v0

    return-wide v0

    .line 148
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public resetSpuriousWakeupIntervalMillis()V
    .locals 1

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->mSpuriousWakeupIntervalMillis:Ljava/lang/Long;

    return-void
.end method

.method public setSpuriousWakeupIntervalMillis(J)V
    .locals 0

    .line 133
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->mSpuriousWakeupIntervalMillis:Ljava/lang/Long;

    return-void
.end method

.method public signalEvent()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->mStateChanged:Lcom/amazon/whispersync/dcp/framework/AutoResetEvent;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/AutoResetEvent;->signalEvent()V

    return-void
.end method

.method public startListening()V
    .locals 4

    .line 153
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->mIntentFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    .line 155
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->mStateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public stopListening()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->mStateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public waitEvent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 168
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->startSpuriousWakeupAlarm()V

    .line 169
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->waitForStateChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->stopSpuriousWakeupAlarm()V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->stopSpuriousWakeupAlarm()V

    throw v0
.end method

.method public waitEvent(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 181
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->startSpuriousWakeupAlarm()V

    .line 182
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->waitForStateChanged(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->stopSpuriousWakeupAlarm()V

    return p1

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->stopSpuriousWakeupAlarm()V

    throw p1
.end method

.method protected waitForStateChanged()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->mStateChanged:Lcom/amazon/whispersync/dcp/framework/AutoResetEvent;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/AutoResetEvent;->waitEvent()V

    return-void
.end method

.method protected waitForStateChanged(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->mStateChanged:Lcom/amazon/whispersync/dcp/framework/AutoResetEvent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/AutoResetEvent;->waitEvent(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method
