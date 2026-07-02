.class Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper$1;
.super Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;
.source "CrashDetectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->sendReportIfNeeded()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;

.field final synthetic val$pfd:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;Landroid/content/Context;Landroid/content/Intent;ILandroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper$1;->this$0:Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;

    iput-object p5, p0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper$1;->val$pfd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, p2, p3, p4}, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;-><init>(Landroid/content/Context;Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper$1;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 467
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper$1;->sendCrash(Landroid/os/IBinder;)V

    return-void
.end method

.method private sendCrash(Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 491
    invoke-static {}, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->access$100()Ljava/lang/String;

    .line 492
    invoke-static {p1}, Lcom/amazon/whispersync/dcp/metrics/IMetricsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/whispersync/dcp/metrics/IMetricsService;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper$1;->val$pfd:Landroid/os/ParcelFileDescriptor;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper$1;->this$0:Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;

    invoke-static {v1}, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->access$300(Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/whispersync/dcp/metrics/IMetricsService;->sendCrashReport(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 496
    invoke-static {}, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->access$100()Ljava/lang/String;

    .line 497
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper$1;->this$0:Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->deleteCrashReport()Z

    move-result p1

    if-nez p1, :cond_1

    .line 499
    invoke-static {}, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Couldn\'t delete old crash log crashlog.amzcl"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 504
    :cond_0
    invoke-static {}, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->access$100()Ljava/lang/String;

    .line 506
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->unbind()V

    return-void
.end method


# virtual methods
.method protected useService(Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 471
    invoke-static {}, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->access$200()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper$1$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper$1$1;-><init>(Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper$1;Landroid/os/IBinder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
