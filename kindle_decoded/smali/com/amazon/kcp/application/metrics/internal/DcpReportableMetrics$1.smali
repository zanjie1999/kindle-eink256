.class Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics$1;
.super Ljava/lang/Object;
.source "DcpReportableMetrics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->initializeDefaultDomain(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;Landroid/content/Context;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics$1;->this$0:Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;

    iput-object p2, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDeviceType()Lcom/amazon/kcp/application/AndroidDeviceType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidDeviceType;->getAmazonDeviceType()Lcom/amazon/kcp/application/IAmazonDeviceType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "CentralDevicetype"

    goto :goto_1

    .line 100
    :cond_1
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAmazonDeviceType;->getDeviceTypeHumanReadable()Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_1
    iget-object v1, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics$1;->this$0:Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;

    const-string v2, "\\s"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->access$002(Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
