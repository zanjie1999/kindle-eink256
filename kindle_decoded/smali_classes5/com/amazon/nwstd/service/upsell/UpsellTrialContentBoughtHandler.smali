.class public Lcom/amazon/nwstd/service/upsell/UpsellTrialContentBoughtHandler;
.super Ljava/lang/Object;
.source "UpsellTrialContentBoughtHandler.java"

# interfaces
.implements Lcom/amazon/nwstd/service/IIntentHandler;


# static fields
.field private static ACTION_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private inRunningTest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/amazon/nwstd/service/upsell/UpsellTrialContentBoughtHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/service/upsell/UpsellTrialContentBoughtHandler;->TAG:Ljava/lang/String;

    const-string v0, "UpsellTrialContentBought"

    .line 37
    sput-object v0, Lcom/amazon/nwstd/service/upsell/UpsellTrialContentBoughtHandler;->ACTION_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/amazon/nwstd/service/upsell/UpsellTrialContentBoughtHandler;->inRunningTest:Z

    return-void
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/amazon/nwstd/service/upsell/UpsellTrialContentBoughtHandler;->ACTION_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public onHandleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/amazon/nwstd/service/upsell/UpsellTrialContentBoughtHandler;->ACTION_NAME:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p2}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 55
    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    .line 56
    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isInDemoMode()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 60
    :cond_0
    sget-object p2, Lcom/amazon/nwstd/service/upsell/UpsellTrialContentBoughtHandler;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    const-string v1, "Start of UpsellTrialContentBoughtHandler"

    invoke-static {p2, v0, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p2

    const-string v1, "NewsstandContentExplorerBuy"

    const-string v2, "BuyTrialContent"

    invoke-virtual {p2, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {p1}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->reportUpsellContentBoughtEvent(Landroid/content/Context;)V

    .line 65
    sget-object p2, Lcom/amazon/nwstd/service/upsell/UpsellTrialContentBoughtHandler;->TAG:Ljava/lang/String;

    const-string v1, "Removing the CMS banner item"

    invoke-static {p2, v0, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/amazon/kindle/newsstand/core/R$bool;->nwstd_fortate_identity:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    .line 68
    invoke-static {}, Lcom/amazon/nwstd/modules/FosVersionInNewsstand;->getFosVersion()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/amazon/nwstd/modules/FosVersionInNewsstand;->getFosVersion()Ljava/lang/String;

    move-result-object p2

    const-string v2, "fos4"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/amazon/nwstd/service/upsell/UpsellTrialContentBoughtHandler;->inRunningTest:Z

    if-nez p2, :cond_1

    .line 69
    invoke-static {v1, v1, v1}, Lcom/amazon/nwstd/cms/NewsstandCMSUtils;->removeLibraryBanner(ZZZ)V

    goto :goto_0

    .line 71
    :cond_1
    invoke-static {v1, v1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->removeLibraryBanner(ZZ)V

    goto :goto_0

    .line 74
    :cond_2
    invoke-static {v1, v1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->removeLibraryBanner(ZZ)V

    .line 76
    :goto_0
    sget-object p2, Lcom/amazon/nwstd/service/upsell/UpsellTrialContentBoughtHandler;->TAG:Ljava/lang/String;

    const-string v2, "Hide home banner when user \'bought\' one or more issue"

    invoke-static {p2, v0, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 77
    invoke-static {p1}, Lcom/amazon/nwstd/upsell/HomeBannerContentController;->getInstance(Landroid/content/Context;)Lcom/amazon/nwstd/upsell/HomeBannerContentController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/nwstd/upsell/HomeBannerContentController;->removeHomeBanner()V

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/nwstd/storage/CachedKVStorage;->getInstance(Landroid/content/Context;)Lcom/amazon/nwstd/storage/CachedKVStorage;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "upsell.library.decline"

    invoke-virtual {p2, v2, v1}, Lcom/amazon/nwstd/storage/KVStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    invoke-static {}, Lcom/amazon/nwstd/utils/LibraryUtils;->getLibrarySwitchServiceIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 82
    sget-object p1, Lcom/amazon/nwstd/service/upsell/UpsellTrialContentBoughtHandler;->TAG:Ljava/lang/String;

    const-string p2, "End of UpsellTrialContentBoughtHandler"

    invoke-static {p1, v0, p2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
