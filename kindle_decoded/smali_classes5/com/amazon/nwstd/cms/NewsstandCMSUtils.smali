.class public Lcom/amazon/nwstd/cms/NewsstandCMSUtils;
.super Ljava/lang/Object;
.source "NewsstandCMSUtils.java"


# direct methods
.method private static cleanLibraryBannerData()V
    .locals 3

    .line 87
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->acquire()Lcom/amazon/nwstd/resources/DynamicResourcesController;

    move-result-object v0

    .line 89
    :try_start_0
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_button_cancel:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-static {v0, v1, v2}, Lcom/amazon/nwstd/cms/NewsstandCMSUtils;->removeResourceType(Lcom/amazon/nwstd/resources/DynamicResourcesController;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    .line 90
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_button_start:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-static {v0, v1, v2}, Lcom/amazon/nwstd/cms/NewsstandCMSUtils;->removeResourceType(Lcom/amazon/nwstd/resources/DynamicResourcesController;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    .line 91
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-static {v0, v1, v2}, Lcom/amazon/nwstd/cms/NewsstandCMSUtils;->removeResourceType(Lcom/amazon/nwstd/resources/DynamicResourcesController;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    .line 92
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_image:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-static {v0, v1, v2}, Lcom/amazon/nwstd/cms/NewsstandCMSUtils;->removeResourceType(Lcom/amazon/nwstd/resources/DynamicResourcesController;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    .line 93
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_title:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-static {v0, v1, v2}, Lcom/amazon/nwstd/cms/NewsstandCMSUtils;->removeResourceType(Lcom/amazon/nwstd/resources/DynamicResourcesController;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->release()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->release()V

    .line 96
    throw v0
.end method

.method public static getStoreManager()Lcom/amazon/nwstd/store/INewsstandStoreManager;
    .locals 1

    .line 117
    new-instance v0, Lcom/amazon/nwstd/store/TabletNewsstandStoreManager;

    invoke-direct {v0}, Lcom/amazon/nwstd/store/TabletNewsstandStoreManager;-><init>()V

    return-object v0
.end method

.method public static pushLibraryBanner(Lcom/amazon/nwstd/cms/CMSLibraryBanner;)V
    .locals 2

    .line 45
    invoke-static {}, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->getInstance()Lcom/amazon/nwstd/cms/NewsstandCMSLink;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 46
    :goto_0
    invoke-static {v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 48
    invoke-virtual {v0, p0}, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->pushLibraryBannerAsync(Lcom/amazon/nwstd/cms/CMSLibraryBanner;)V

    return-void
.end method

.method public static removeLibraryBanner(ZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 80
    invoke-static {p0, p1, v0}, Lcom/amazon/nwstd/cms/NewsstandCMSUtils;->removeLibraryBanner(ZZZ)V

    return-void
.end method

.method public static removeLibraryBanner(ZZZ)V
    .locals 3

    .line 52
    invoke-static {}, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->getInstance()Lcom/amazon/nwstd/cms/NewsstandCMSLink;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 53
    :goto_0
    invoke-static {v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    if-eqz p1, :cond_1

    .line 56
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 57
    invoke-static {p1}, Lcom/amazon/nwstd/storage/CachedKVStorage;->getInstance(Landroid/content/Context;)Lcom/amazon/nwstd/storage/CachedKVStorage;

    move-result-object p1

    const-string/jumbo v1, "upsell.library.decline"

    invoke-virtual {p1, v1}, Lcom/amazon/nwstd/storage/KVStorage;->getValueAsBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 58
    invoke-static {}, Lcom/amazon/nwstd/upsell/UpsellUtils;->getCampaignId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 60
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v1, "NewsstandCELibrary"

    const-string v2, "CELibraryBannerHidden"

    invoke-virtual {p1, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p0, :cond_2

    .line 65
    invoke-static {}, Lcom/amazon/nwstd/cms/NewsstandCMSUtils;->cleanLibraryBannerData()V

    :cond_2
    if-eqz p2, :cond_3

    .line 69
    invoke-virtual {v0}, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->removeLibraryBannerAsync()V

    :cond_3
    return-void
.end method

.method private static removeResourceType(Lcom/amazon/nwstd/resources/DynamicResourcesController;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 106
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/nwstd/resources/DynamicResource;

    .line 107
    invoke-virtual {p0, p2}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->removeResource(Lcom/amazon/nwstd/resources/DynamicResource;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
