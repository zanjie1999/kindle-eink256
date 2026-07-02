.class Lcom/amazon/kcp/font/DynamicFontDownloadHelper$3;
.super Ljava/lang/Object;
.source "DynamicFontDownloadHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->downloadFontManuallyIfNeeds(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

.field final synthetic val$fontInfo:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

.field final synthetic val$language:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/font/DynamicFontDownloadHelper;Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;Ljava/lang/String;)V
    .locals 0

    .line 690
    iput-object p1, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$3;->this$0:Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    iput-object p2, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$3;->val$fontInfo:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    iput-object p3, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$3;->val$language:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 693
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$3;->this$0:Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    iget-object v2, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$3;->val$fontInfo:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    invoke-static {v1, v2}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->access$700(Lcom/amazon/kcp/font/DynamicFontDownloadHelper;Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 694
    iget-object v0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$3;->this$0:Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    iget-object v1, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$3;->val$fontInfo:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    invoke-static {v1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->access$800(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$3;->val$language:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->access$300(Lcom/amazon/kcp/font/DynamicFontDownloadHelper;Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$3;->this$0:Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    iget-object v1, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$3;->val$fontInfo:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    invoke-static {v1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->access$800(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->access$900(Lcom/amazon/kcp/font/DynamicFontDownloadHelper;Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)V

    :cond_0
    return-void
.end method
