.class public final Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder$cacheImagesIfMissing$$inlined$run$lambda$1;
.super Ljava/lang/Object;
.source "AuthorFollowCardBuilder.kt"

# interfaces
.implements Lcom/amazon/kcp/home/util/ImageDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder;->cacheImagesIfMissing(Lcom/amazon/kcp/home/widget/AuthorFollowWidget;Lcom/amazon/kindle/home/model/ImageZone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $imageUrl$inlined:Ljava/lang/String;

.field final synthetic $widget$inlined:Lcom/amazon/kcp/home/widget/AuthorFollowWidget;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/home/widget/AuthorFollowWidget;)V
    .locals 0

    iput-object p2, p0, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder$cacheImagesIfMissing$$inlined$run$lambda$1;->$imageUrl$inlined:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder$cacheImagesIfMissing$$inlined$run$lambda$1;->$widget$inlined:Lcom/amazon/kcp/home/widget/AuthorFollowWidget;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageDownloadRequestComplete(Z)V
    .locals 5

    .line 115
    iget-object v0, p0, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder$cacheImagesIfMissing$$inlined$run$lambda$1;->$widget$inlined:Lcom/amazon/kcp/home/widget/AuthorFollowWidget;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->setImageDownloaded$LibraryModule_release(Ljava/lang/Boolean;)V

    .line 116
    sget-object v0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->Companion:Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;->notifyWidgetsChange$default(Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;ZILjava/lang/Object;)V

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Image downloaded: url="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder$cacheImagesIfMissing$$inlined$run$lambda$1;->$imageUrl$inlined:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; success="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.amazon.kcp.home.widget.AuthorFollowWidget"

    invoke-static {v3, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v4, "Utils.getFactory()"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v4, "AuthorFollowImageUrlError"

    if-eqz p1, :cond_0

    .line 122
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->newMetrics(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p1

    .line 123
    invoke-virtual {p1, v4, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 124
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->newMetrics(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p1

    .line 128
    invoke-virtual {p1, v4, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 129
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    :cond_1
    :goto_0
    return-void
.end method
