.class Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$PowerSourceChangeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DevicePowerMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PowerSourceChangeBroadcastReceiver"
.end annotation


# instance fields
.field private final mDevicePowerMonitor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;)V
    .locals 1

    .line 172
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 173
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$PowerSourceChangeBroadcastReceiver;->mDevicePowerMonitor:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 178
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$PowerSourceChangeBroadcastReceiver;->mDevicePowerMonitor:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$PowerSourceChangeBroadcastReceiver;->mDevicePowerMonitor:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;

    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;)Landroid/content/IntentFilter;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->matchAction(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 183
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Intent doesn\'t match desired power intent filter"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 186
    :cond_1
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$PowerSourceChangeBroadcastReceiver;->mDevicePowerMonitor:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;

    monitor-enter p1

    .line 187
    :try_start_0
    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$PowerSourceChangeBroadcastReceiver;->mDevicePowerMonitor:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$PowerSourceChangeBroadcastReceiver;->mDevicePowerMonitor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatusProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatusProvider;->getDevicePowerStatus()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->access$202(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;

    .line 188
    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$PowerSourceChangeBroadcastReceiver;->mDevicePowerMonitor:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$PowerSourceChangeBroadcastReceiver;->mDevicePowerMonitor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;)V

    .line 189
    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$PowerSourceChangeBroadcastReceiver;->mDevicePowerMonitor:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;

    invoke-static {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->access$500(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;)V

    .line 190
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
