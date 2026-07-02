.class public interface abstract Lcom/amazon/kindle/krx/IKindleReaderSDK;
.super Ljava/lang/Object;
.source "IKindleReaderSDK.java"


# virtual methods
.method public abstract getAccessibilityManager()Lcom/amazon/kindle/krx/accessibility/IAccessibilityManager;
.end method

.method public abstract getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;
.end method

.method public abstract getBatchMetricsCollector()Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;
.end method

.method public abstract getBubbleManager()Lcom/amazon/kindle/krx/reader/IBubbleManager;
.end method

.method public abstract getClippingService()Lcom/amazon/kindle/krx/clipping/IKRXClippingService;
.end method

.method public abstract getContentUpdateManager()Lcom/amazon/kindle/krx/update/IContentUpdateManager;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getCoverManager()Lcom/amazon/kindle/krx/cover/ICoverManager;
.end method

.method public abstract getExtensionManager()Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;
.end method

.method public abstract getKWISClientProvider()Lcom/amazon/kindle/krx/kwis/IKWISClientProvider;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;
.end method

.method public abstract getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;
.end method

.method public abstract getLogger()Lcom/amazon/kindle/krx/logging/ILogger;
.end method

.method public abstract getMessagingManager()Lcom/amazon/kindle/krx/messaging/IMessagingManager;
.end method

.method public abstract getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;
.end method

.method public abstract getNetworkService()Lcom/amazon/kindle/krx/network/INetworkService;
.end method

.method public abstract getPerformanceMarkerFactory()Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;
.end method

.method public abstract getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;
.end method

.method public abstract getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;
.end method

.method public abstract getReaderModeHandler()Lcom/amazon/kindle/krx/reader/IReaderModeHandler;
.end method

.method public abstract getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;
.end method

.method public abstract getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;
.end method

.method public abstract getSearchManager()Lcom/amazon/kindle/krx/search/IReaderSearchManager;
.end method

.method public abstract getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;
.end method

.method public abstract getSyncManager()Lcom/amazon/kindle/krx/sync/ISyncManager;
.end method

.method public abstract getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;
.end method

.method public abstract getThreadPoolManager()Lcom/amazon/kindle/krx/thread/IThreadPoolManager;
.end method

.method public abstract getTutorialManager()Lcom/amazon/kindle/krx/tutorial/ITutorialManager;
.end method

.method public abstract getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;
.end method
