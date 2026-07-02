.class Lcom/amazon/kindle/s2k/SendToKindleActivity$13;
.super Ljava/lang/Object;
.source "SendToKindleActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/s2k/SendToKindleActivity;->showFileReadErrorAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/s2k/SendToKindleActivity;)V
    .locals 0

    .line 1174
    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$13;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1176
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p2

    sget-object v0, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    const-string v1, "SendToKindleActivity"

    const-string v2, "AlertContactUs"

    invoke-virtual {p2, v1, v2, v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;)V

    .line 1177
    iget-object p2, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$13;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 1178
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->launchHelpAndFeedbackView(Landroid/content/Context;)V

    .line 1179
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1180
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$13;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
