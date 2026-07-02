.class public interface abstract Lcom/amazon/nwstd/metrics/IMetricsHelper;
.super Ljava/lang/Object;
.source "IMetricsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;,
        Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;,
        Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;,
        Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;,
        Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;,
        Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;,
        Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;
    }
.end annotation


# virtual methods
.method public abstract onOrientationChange(Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;)V
.end method

.method public abstract onUpsellBannerHidden()V
.end method

.method public abstract onUpsellBannerShown(Ljava/lang/String;DLcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;)V
.end method

.method public abstract onUpsellLinkClicked(Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;DLjava/lang/String;Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;)V
.end method

.method public abstract pauseSession()V
.end method

.method public abstract startOrResumeSession()V
.end method

.method public abstract startReadingUpsellFullPage(Ljava/lang/String;DLcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;)V
.end method

.method public abstract stopReadingUpsellFullPage()V
.end method
