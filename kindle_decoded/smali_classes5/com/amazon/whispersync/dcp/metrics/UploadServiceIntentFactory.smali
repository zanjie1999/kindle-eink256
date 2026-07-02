.class Lcom/amazon/whispersync/dcp/metrics/UploadServiceIntentFactory;
.super Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory;
.source "UploadServiceIntentFactory.java"


# static fields
.field private static final UPLOAD_SERVICE_CLASS_NAME:Ljava/lang/String; = "com.amazon.whispersync.dcp.metrics.UploadMetricsMessageHandler"


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory;-><init>(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static findUploadService(Landroid/content/Context;)Lcom/amazon/whispersync/dcp/metrics/UploadServiceIntentFactory;
    .locals 2

    .line 38
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory;->SERVICE_FINDER:Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory$ComponentFinder;

    const-string v1, "com.amazon.whispersync.dcp.metrics.UploadMetricsMessageHandler"

    invoke-static {p0, v1, v0}, Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory;->findDCPComponent(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory$ComponentFinder;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 43
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/dcp/metrics/UploadServiceIntentFactory;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/dcp/metrics/UploadServiceIntentFactory;-><init>(Landroid/content/ComponentName;)V

    return-object v0
.end method


# virtual methods
.method public buildUploadLogsIntent(Ljava/lang/String;Lcom/amazon/whispersync/dcp/metrics/UploadServiceHelper$UploadIdentity;)Landroid/content/Intent;
    .locals 2

    const-string v0, "com.amazon.whispersync.dcp.metrics.UPLOAD_LOGS"

    .line 57
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory;->buildIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.amazon.whispersync.dcp.metrics.UPLOAD_TAG"

    .line 58
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    sget-object p1, Lcom/amazon/whispersync/dcp/metrics/UploadServiceHelper$UploadIdentity;->Anonymous:Lcom/amazon/whispersync/dcp/metrics/UploadServiceHelper$UploadIdentity;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "com.amazon.whispersync.dcp.metrics.UPLOAD_ANONYMOUS"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public buildUploadMetricsIntent(Ljava/lang/String;Lcom/amazon/whispersync/dcp/metrics/UploadServiceHelper$UploadIdentity;)Landroid/content/Intent;
    .locals 2

    const-string v0, "com.amazon.whispersync.dcp.metrics.UPLOAD_METRICS"

    .line 48
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory;->buildIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.amazon.whispersync.dcp.metrics.UPLOAD_TAG"

    .line 49
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    sget-object p1, Lcom/amazon/whispersync/dcp/metrics/UploadServiceHelper$UploadIdentity;->Anonymous:Lcom/amazon/whispersync/dcp/metrics/UploadServiceHelper$UploadIdentity;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "com.amazon.whispersync.dcp.metrics.UPLOAD_ANONYMOUS"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method
