.class Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper$1$1;
.super Ljava/lang/Object;
.source "CrashDetectionHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper$1;->useService(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper$1;

.field final synthetic val$service:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper$1;Landroid/os/IBinder;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper$1$1;->this$1:Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper$1;

    iput-object p2, p0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper$1$1;->val$service:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 479
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper$1$1;->this$1:Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper$1;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper$1$1;->val$service:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper$1;->access$000(Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper$1;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 483
    invoke-static {}, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending crash failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
