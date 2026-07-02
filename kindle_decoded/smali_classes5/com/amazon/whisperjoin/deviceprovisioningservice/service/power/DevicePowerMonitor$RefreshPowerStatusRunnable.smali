.class Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$RefreshPowerStatusRunnable;
.super Ljava/lang/Object;
.source "DevicePowerMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefreshPowerStatusRunnable"
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

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$RefreshPowerStatusRunnable;->mDevicePowerMonitor:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 201
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$RefreshPowerStatusRunnable;->mDevicePowerMonitor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$RefreshPowerStatusRunnable;->mDevicePowerMonitor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;

    monitor-enter v0

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$RefreshPowerStatusRunnable;->mDevicePowerMonitor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;

    invoke-static {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatusProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatusProvider;->getDevicePowerStatus()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;

    move-result-object v1

    .line 207
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$RefreshPowerStatusRunnable;->mDevicePowerMonitor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;

    invoke-static {v2, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;)V

    .line 208
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$RefreshPowerStatusRunnable;->mDevicePowerMonitor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$RefreshPowerStatusRunnable;->mDevicePowerMonitor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;

    invoke-static {v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->access$600(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;)V

    .line 210
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$RefreshPowerStatusRunnable;->mDevicePowerMonitor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;

    invoke-static {v2, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->access$202(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;

    .line 211
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Power Status Update: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$RefreshPowerStatusRunnable;->mDevicePowerMonitor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;

    invoke-static {v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling refresh after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$RefreshPowerStatusRunnable;->mDevicePowerMonitor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;

    invoke-static {v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->access$700(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$RefreshPowerStatusRunnable;->mDevicePowerMonitor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;

    invoke-static {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->access$800(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$RefreshPowerStatusRunnable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$RefreshPowerStatusRunnable;->mDevicePowerMonitor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;

    invoke-static {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->access$900(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$RefreshPowerStatusRunnable;->mDevicePowerMonitor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;

    invoke-static {v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->access$800(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$RefreshPowerStatusRunnable;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$RefreshPowerStatusRunnable;->mDevicePowerMonitor:Ljava/lang/ref/WeakReference;

    .line 216
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;

    invoke-static {v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->access$700(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;)J

    move-result-wide v3

    .line 215
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 218
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
