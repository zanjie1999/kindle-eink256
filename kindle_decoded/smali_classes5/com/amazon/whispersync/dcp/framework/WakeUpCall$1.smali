.class Lcom/amazon/whispersync/dcp/framework/WakeUpCall$1;
.super Landroid/content/BroadcastReceiver;
.source "WakeUpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/WakeUpCall;->waitUsingAlarmManager(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/WakeUpCall;

.field final synthetic val$acquireRequest:Lcom/amazon/whispersync/dcp/framework/WakeUpCall$WakeLockAcquireRequest;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/WakeUpCall;Lcom/amazon/whispersync/dcp/framework/WakeUpCall$WakeLockAcquireRequest;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/WakeUpCall$1;->this$0:Lcom/amazon/whispersync/dcp/framework/WakeUpCall;

    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/WakeUpCall$1;->val$acquireRequest:Lcom/amazon/whispersync/dcp/framework/WakeUpCall$WakeLockAcquireRequest;

    iput-object p3, p0, Lcom/amazon/whispersync/dcp/framework/WakeUpCall$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 121
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/WakeUpCall$1;->val$acquireRequest:Lcom/amazon/whispersync/dcp/framework/WakeUpCall$WakeLockAcquireRequest;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/WakeUpCall$WakeLockAcquireRequest;->acquire()V

    .line 122
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/WakeUpCall$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
