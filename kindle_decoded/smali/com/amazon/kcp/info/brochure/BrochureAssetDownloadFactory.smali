.class public Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadFactory;
.super Ljava/lang/Object;
.source "BrochureAssetDownloadFactory.java"


# static fields
.field private static final METRICS_NAME:Ljava/lang/String;

.field private static final METRIC_INVALID_MESSAGE_VERSION:Ljava/lang/String; = "InvalidMessageVersion"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-class v0, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadFactory;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadFactory;->TAG:Ljava/lang/String;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadFactory;->METRICS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDownloader(Ljava/lang/String;)Lcom/amazon/kcp/info/brochure/IBrochureAssetDownloader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kcp/info/brochure/BrochureAssetException;
        }
    .end annotation

    .line 39
    sget-object v0, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadFactory$1;->$SwitchMap$com$amazon$kcp$info$brochure$BrochureAssetContent:[I

    invoke-static {p0}, Lcom/amazon/kcp/info/brochure/BrochureAssetContent;->fromString(Ljava/lang/String;)Lcom/amazon/kcp/info/brochure/BrochureAssetContent;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 43
    new-instance p0, Lcom/amazon/kcp/info/brochure/ImageShareableBrochureDownloader;

    invoke-direct {p0}, Lcom/amazon/kcp/info/brochure/ImageShareableBrochureDownloader;-><init>()V

    return-object p0

    .line 46
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadFactory;->METRICS_NAME:Ljava/lang/String;

    const-string v2, "InvalidMessageVersion"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected message version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 48
    sget-object v0, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadFactory;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/amazon/kcp/info/brochure/BrochureAssetException;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/info/brochure/BrochureAssetException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_1
    new-instance p0, Lcom/amazon/kcp/info/brochure/TextImageBrochureAssetDownloader;

    invoke-direct {p0}, Lcom/amazon/kcp/info/brochure/TextImageBrochureAssetDownloader;-><init>()V

    return-object p0
.end method
