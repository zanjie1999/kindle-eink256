.class public Lcom/facebook/BoltsMeasurementEventListener;
.super Landroid/content/BroadcastReceiver;
.source "BoltsMeasurementEventListener.java"


# static fields
.field private static final BOLTS_MEASUREMENT_EVENT_PREFIX:Ljava/lang/String; = "bf_"

.field private static final MEASUREMENT_EVENT_ARGS_KEY:Ljava/lang/String; = "event_args"

.field private static final MEASUREMENT_EVENT_NAME_KEY:Ljava/lang/String; = "event_name"

.field private static final MEASUREMENT_EVENT_NOTIFICATION_NAME:Ljava/lang/String; = "com.parse.bolts.measurement_event"

.field private static _instance:Lcom/facebook/BoltsMeasurementEventListener;


# instance fields
.field private applicationContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/BoltsMeasurementEventListener;->applicationContext:Landroid/content/Context;

    return-void
.end method

.method private close()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/facebook/BoltsMeasurementEventListener;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 30
    invoke-virtual {v0, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/facebook/BoltsMeasurementEventListener;
    .locals 1

    .line 34
    sget-object v0, Lcom/facebook/BoltsMeasurementEventListener;->_instance:Lcom/facebook/BoltsMeasurementEventListener;

    if-eqz v0, :cond_0

    return-object v0

    .line 37
    :cond_0
    new-instance v0, Lcom/facebook/BoltsMeasurementEventListener;

    invoke-direct {v0, p0}, Lcom/facebook/BoltsMeasurementEventListener;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/BoltsMeasurementEventListener;->_instance:Lcom/facebook/BoltsMeasurementEventListener;

    .line 38
    invoke-direct {v0}, Lcom/facebook/BoltsMeasurementEventListener;->open()V

    .line 39
    sget-object p0, Lcom/facebook/BoltsMeasurementEventListener;->_instance:Lcom/facebook/BoltsMeasurementEventListener;

    return-object p0
.end method

.method private open()V
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/facebook/BoltsMeasurementEventListener;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 25
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.parse.bolts.measurement_event"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 44
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/BoltsMeasurementEventListener;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 52
    invoke-static {p1}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/AppEventsLogger;

    move-result-object p1

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bf_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "event_name"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "event_args"

    .line 54
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
