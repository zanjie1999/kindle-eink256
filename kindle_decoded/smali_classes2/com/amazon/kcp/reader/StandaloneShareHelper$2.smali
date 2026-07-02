.class Lcom/amazon/kcp/reader/StandaloneShareHelper$2;
.super Ljava/lang/Object;
.source "StandaloneShareHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/StandaloneShareHelper;->openShareDialog(Landroid/app/Activity;Landroid/view/View;Lcom/amazon/android/docviewer/KindleDoc;Lcom/amazon/kcp/reader/IShareHelper$ShareType;Lcom/amazon/kcp/reader/share/ShareableInformation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/StandaloneShareHelper;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$kindleDoc:Lcom/amazon/android/docviewer/KindleDoc;

.field final synthetic val$shareType:Lcom/amazon/kcp/reader/IShareHelper$ShareType;

.field final synthetic val$shareableInformation:Lcom/amazon/kcp/reader/share/ShareableInformation;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/StandaloneShareHelper;Lcom/amazon/kcp/reader/IShareHelper$ShareType;Landroid/app/Activity;Lcom/amazon/kcp/reader/share/ShareableInformation;Lcom/amazon/android/docviewer/KindleDoc;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/amazon/kcp/reader/StandaloneShareHelper$2;->this$0:Lcom/amazon/kcp/reader/StandaloneShareHelper;

    iput-object p2, p0, Lcom/amazon/kcp/reader/StandaloneShareHelper$2;->val$shareType:Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    iput-object p3, p0, Lcom/amazon/kcp/reader/StandaloneShareHelper$2;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/amazon/kcp/reader/StandaloneShareHelper$2;->val$shareableInformation:Lcom/amazon/kcp/reader/share/ShareableInformation;

    iput-object p5, p0, Lcom/amazon/kcp/reader/StandaloneShareHelper$2;->val$kindleDoc:Lcom/amazon/android/docviewer/KindleDoc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    .line 284
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    invoke-static {}, Lcom/amazon/kcp/reader/StandaloneShareHelper;->access$100()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/StandaloneShareHelper$2;->val$shareType:Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "KAR_SOCIAL_SHARE"

    .line 284
    invoke-virtual {p1, v2, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 286
    iget-object v0, p0, Lcom/amazon/kcp/reader/StandaloneShareHelper$2;->this$0:Lcom/amazon/kcp/reader/StandaloneShareHelper;

    iget-object v1, p0, Lcom/amazon/kcp/reader/StandaloneShareHelper$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/amazon/kcp/reader/StandaloneShareHelper$2;->val$shareableInformation:Lcom/amazon/kcp/reader/share/ShareableInformation;

    iget-object v3, p0, Lcom/amazon/kcp/reader/StandaloneShareHelper$2;->val$kindleDoc:Lcom/amazon/android/docviewer/KindleDoc;

    iget-object v5, p0, Lcom/amazon/kcp/reader/StandaloneShareHelper$2;->val$shareType:Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/amazon/kcp/reader/StandaloneShareHelper;->shareToSocial(Landroid/app/Activity;Lcom/amazon/kcp/reader/share/ShareableInformation;Lcom/amazon/android/docviewer/KindleDoc;Ljava/lang/String;Lcom/amazon/kcp/reader/IShareHelper$ShareType;Landroid/os/Bundle;)V

    return-void
.end method
