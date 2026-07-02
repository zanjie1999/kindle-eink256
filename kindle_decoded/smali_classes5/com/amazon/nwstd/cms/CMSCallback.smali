.class public Lcom/amazon/nwstd/cms/CMSCallback;
.super Ljava/lang/Object;
.source "CMSCallback.java"

# interfaces
.implements Lcom/amazon/kindle/cms/api/Callback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final VERB_ACCEPT:Ljava/lang/String;

.field private final VERB_DECLINE:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mPFM:Ljava/lang/String;

.field private mXfsn:Ljava/lang/String;

.field private mXmain:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/amazon/nwstd/cms/CMSCallback;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/cms/CMSCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/nwstd/cms/NewsstandCMSLink;Landroid/content/Context;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "decline"

    .line 50
    iput-object v0, p0, Lcom/amazon/nwstd/cms/CMSCallback;->VERB_DECLINE:Ljava/lang/String;

    const-string v0, "accept"

    .line 55
    iput-object v0, p0, Lcom/amazon/nwstd/cms/CMSCallback;->VERB_ACCEPT:Ljava/lang/String;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 83
    :goto_0
    invoke-static {p1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 84
    iput-object p2, p0, Lcom/amazon/nwstd/cms/CMSCallback;->mContext:Landroid/content/Context;

    return-void
.end method

.method private loadReaderData()Z
    .locals 3

    .line 158
    new-instance v0, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;

    iget-object v1, p0, Lcom/amazon/nwstd/cms/CMSCallback;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;-><init>(Landroid/content/Context;)V

    .line 159
    invoke-virtual {v0}, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;->preloadReaderData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    sget-object v0, Lcom/amazon/nwstd/cms/CMSCallback;->TAG:Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "failed to load tokens, sync is aborted"

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/cms/CMSCallback;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 167
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    .line 168
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getCookie()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/nwstd/cms/CMSCallback;->mXfsn:Ljava/lang/String;

    .line 169
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getPFM()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/nwstd/cms/CMSCallback;->mPFM:Ljava/lang/String;

    .line 170
    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->XMAIN_AND_XACB_COOKIES:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/nwstd/cms/CMSCallback;->mXmain:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method private notifyDeclineToStore()V
    .locals 5

    .line 122
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v0

    .line 123
    invoke-interface {v0}, Lcom/amazon/kindle/network/INetworkService;->isWifiConnected()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/network/INetworkService;->isDataConnected()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/network/INetworkService;->isWanConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "NewsstandContentExplorerCampaign"

    const-string v2, "CEStoreConnectionOnDeclineOffline"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/amazon/nwstd/cms/CMSCallback;->loadReaderData()Z

    move-result v0

    .line 130
    :try_start_0
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->acquire()Lcom/amazon/nwstd/resources/DynamicResourcesController;

    move-result-object v1

    .line 131
    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->CAMPAIGN_ID:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v3, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 133
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 134
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/resources/DynamicResource;

    if-eqz v1, :cond_1

    .line 136
    invoke-virtual {v1}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object v4

    .line 139
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-static {v2}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    if-nez v0, :cond_3

    .line 142
    sget-object v0, Lcom/amazon/nwstd/cms/CMSCallback;->TAG:Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "Failed to send the decline information to store because of unknown PFM and X-FSN"

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;->cacheCampaignIdDeclined(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->release()V

    return-void

    .line 147
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/amazon/nwstd/cms/CMSCallback;->mXfsn:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/nwstd/cms/CMSCallback;->mXmain:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/nwstd/cms/CMSCallback;->mPFM:Ljava/lang/String;

    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v4, v0, v1, v2, v3}, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;->notifyDeclineToStore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->release()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->release()V

    .line 150
    throw v0
.end method


# virtual methods
.method public execute(Lcom/amazon/kindle/cms/api/CMSServer;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/cms/api/Callback$Result;
    .locals 3

    .line 90
    sget-object p1, Lcom/amazon/kindle/cms/api/Callback$Result;->NotImplemented:Lcom/amazon/kindle/cms/api/Callback$Result;

    .line 91
    sget-object v0, Lcom/amazon/nwstd/cms/CMSCallback;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMS server execute : sourceUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " / lib id="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " / item id="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " / verb="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x4

    invoke-static {v0, p3, p2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    const-string p2, "decline"

    .line 94
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 95
    invoke-static {p1, p1}, Lcom/amazon/nwstd/cms/NewsstandCMSUtils;->removeLibraryBanner(ZZ)V

    .line 96
    iget-object p2, p0, Lcom/amazon/nwstd/cms/CMSCallback;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/nwstd/storage/CachedKVStorage;->getInstance(Landroid/content/Context;)Lcom/amazon/nwstd/storage/CachedKVStorage;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo p3, "upsell.library.decline"

    invoke-virtual {p2, p3, p1}, Lcom/amazon/nwstd/storage/KVStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    invoke-direct {p0}, Lcom/amazon/nwstd/cms/CMSCallback;->notifyDeclineToStore()V

    .line 98
    sget-object p1, Lcom/amazon/kindle/cms/api/Callback$Result;->Success:Lcom/amazon/kindle/cms/api/Callback$Result;

    .line 99
    sget-object p2, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;->DECLINE:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;

    goto :goto_0

    :cond_0
    const-string p2, "accept"

    .line 100
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 101
    invoke-static {}, Lcom/amazon/nwstd/cms/NewsstandCMSUtils;->getStoreManager()Lcom/amazon/nwstd/store/INewsstandStoreManager;

    move-result-object p1

    .line 102
    iget-object p2, p0, Lcom/amazon/nwstd/cms/CMSCallback;->mContext:Landroid/content/Context;

    const-string p3, "LIBRARY_BANNER"

    invoke-interface {p1, p2, p3}, Lcom/amazon/nwstd/store/INewsstandStoreManager;->openInterstitialPage(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    sget-object p1, Lcom/amazon/kindle/cms/api/Callback$Result;->Success:Lcom/amazon/kindle/cms/api/Callback$Result;

    .line 104
    sget-object p2, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;->ACCEPT:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;

    goto :goto_0

    .line 106
    :cond_1
    sget-object p2, Lcom/amazon/nwstd/cms/CMSCallback;->TAG:Ljava/lang/String;

    const/16 p3, 0x8

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled verb="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 110
    iget-object p3, p0, Lcom/amazon/nwstd/cms/CMSCallback;->mContext:Landroid/content/Context;

    invoke-static {p2, p3}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->reportLibraryBannerClickEvent(Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;Landroid/content/Context;)V

    .line 111
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p3

    invoke-virtual {p2}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "NewsstandContentExplorerCampaign"

    invoke-virtual {p3, p4, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method public sync(Lcom/amazon/kindle/cms/api/CMSServer;Landroid/net/Uri;)V
    .locals 1

    .line 176
    sget-object p1, Lcom/amazon/nwstd/cms/CMSCallback;->TAG:Ljava/lang/String;

    const/4 p2, 0x4

    const-string v0, "CMS Sync requested."

    invoke-static {p1, p2, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
