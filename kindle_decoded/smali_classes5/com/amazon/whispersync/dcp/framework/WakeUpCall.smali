.class Lcom/amazon/whispersync/dcp/framework/WakeUpCall;
.super Ljava/lang/Object;
.source "WakeUpCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/WakeUpCall$WakeLockAcquireRequest;
    }
.end annotation


# static fields
.field static final MIN_TIME_TO_USE_ALARM_MANAGER_MS:Lcom/amazon/whispersync/dcp/settings/SettingInteger;


# instance fields
.field private mAlarmManager:Lcom/amazon/whispersync/dcp/framework/AlarmManagerWrapper;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mPendingIntentFactory:Lcom/amazon/whispersync/dcp/framework/PendingIntentFactory;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mSystem:Lcom/amazon/whispersync/dcp/framework/SystemWrapper;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private final mWakeLock:Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    const-string v1, "min_time_to_sleep_using_alarm_manager_ms"

    const/16 v2, 0x3a98

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/WakeUpCall;->MIN_TIME_TO_USE_ALARM_MANAGER_MS:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;)V
    .locals 1
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/WakeUpCall;->mWakeLock:Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;

    return-void

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The lock should be held before calling"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getTimeToWait(J)J
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WakeUpCall;->mSystem:Lcom/amazon/whispersync/dcp/framework/SystemWrapper;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SystemWrapper;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method private getTimeToWakeUp(JLjava/util/concurrent/TimeUnit;)J
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WakeUpCall;->mSystem:Lcom/amazon/whispersync/dcp/framework/SystemWrapper;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SystemWrapper;->elapsedRealtime()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private registerReceiverAndSetAlarm(JLandroid/content/BroadcastReceiver;)V
    .locals 4

    .line 142
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/WakeUpCall;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    iget-object p3, p0, Lcom/amazon/whispersync/dcp/framework/WakeUpCall;->mPendingIntentFactory:Lcom/amazon/whispersync/dcp/framework/PendingIntentFactory;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/WakeUpCall;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p3, v1, v0, v2, v3}, Lcom/amazon/whispersync/dcp/framework/PendingIntentFactory;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;

    move-result-object p3

    .line 147
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WakeUpCall;->mAlarmManager:Lcom/amazon/whispersync/dcp/framework/AlarmManagerWrapper;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/AlarmManagerWrapper;->set(IJLcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;)V

    return-void
.end method

.method private sleepUntil(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/WakeUpCall;->getTimeToWait(J)J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 107
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/WakeUpCall;->getTimeToWait(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private waitForLatch(JLjava/util/concurrent/CountDownLatch;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/WakeUpCall;->getTimeToWait(J)J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 153
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/WakeUpCall;->getTimeToWait(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private waitUsingAlarmManager(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 115
    new-instance v1, Lcom/amazon/whispersync/dcp/framework/WakeUpCall$WakeLockAcquireRequest;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/WakeUpCall;->mWakeLock:Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;

    invoke-direct {v1, v2}, Lcom/amazon/whispersync/dcp/framework/WakeUpCall$WakeLockAcquireRequest;-><init>(Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;)V

    .line 116
    new-instance v2, Lcom/amazon/whispersync/dcp/framework/WakeUpCall$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/amazon/whispersync/dcp/framework/WakeUpCall$1;-><init>(Lcom/amazon/whispersync/dcp/framework/WakeUpCall;Lcom/amazon/whispersync/dcp/framework/WakeUpCall$WakeLockAcquireRequest;Ljava/util/concurrent/CountDownLatch;)V

    .line 126
    invoke-direct {p0, p1, p2, v2}, Lcom/amazon/whispersync/dcp/framework/WakeUpCall;->registerReceiverAndSetAlarm(JLandroid/content/BroadcastReceiver;)V

    .line 127
    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/WakeUpCall;->mWakeLock:Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;

    invoke-virtual {v3}, Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;->release()V

    .line 131
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/whispersync/dcp/framework/WakeUpCall;->waitForLatch(JLjava/util/concurrent/CountDownLatch;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/WakeUpCall$WakeLockAcquireRequest;->acquire()V

    .line 136
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/WakeUpCall;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :catchall_0
    move-exception p1

    .line 135
    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/WakeUpCall$WakeLockAcquireRequest;->acquire()V

    .line 136
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/WakeUpCall;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw p1
.end method


# virtual methods
.method public sleep(JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/WakeUpCall;->getTimeToWakeUp(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    .line 67
    iget-object p3, p0, Lcom/amazon/whispersync/dcp/framework/WakeUpCall;->mWakeLock:Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;

    invoke-virtual {p3}, Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;->release()V

    .line 70
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/WakeUpCall;->sleepUntil(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/WakeUpCall;->mWakeLock:Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;->acquire()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/WakeUpCall;->mWakeLock:Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;

    invoke-virtual {p2}, Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;->acquire()V

    throw p1
.end method

.method public wakeUpIn(JLjava/util/concurrent/TimeUnit;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/WakeUpCall;->getTimeToWakeUp(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/WakeUpCall;->getTimeToWait(J)J

    move-result-wide v0

    .line 83
    :goto_0
    sget-object p3, Lcom/amazon/whispersync/dcp/framework/WakeUpCall;->MIN_TIME_TO_USE_ALARM_MANAGER_MS:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    invoke-virtual {p3}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->getValue()I

    move-result p3

    int-to-long v2, p3

    cmp-long p3, v0, v2

    if-lez p3, :cond_0

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/WakeUpCall;->waitUsingAlarmManager(J)V

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/WakeUpCall;->getTimeToWait(J)J

    move-result-wide v0

    goto :goto_0

    .line 89
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/WakeUpCall;->sleepUntil(J)V

    return-void
.end method
