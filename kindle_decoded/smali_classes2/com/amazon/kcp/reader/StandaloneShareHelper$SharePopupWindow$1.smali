.class Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow$1;
.super Ljava/lang/Object;
.source "StandaloneShareHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow;-><init>(Landroid/app/Activity;Ljava/util/List;Landroid/view/View$OnClickListener;Lcom/amazon/kcp/reader/IShareHelper$ShareType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow;

.field final synthetic val$shareType:Lcom/amazon/kcp/reader/IShareHelper$ShareType;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow;Lcom/amazon/kcp/reader/IShareHelper$ShareType;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow$1;->this$0:Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow;

    iput-object p2, p0, Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow$1;->val$shareType:Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 599
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 600
    invoke-static {}, Lcom/amazon/kcp/reader/StandaloneShareHelper;->access$100()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow$1;->val$shareType:Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "KAR_SOCIAL_SHARE"

    .line 599
    invoke-virtual {p1, v2, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 601
    iget-object p1, p0, Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow$1;->this$0:Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
