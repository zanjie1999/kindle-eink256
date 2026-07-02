.class public Lcom/amazon/nwstd/upsell/UpsellUtils;
.super Ljava/lang/Object;
.source "UpsellUtils.java"


# static fields
.field private static final DP_PATH:Ljava/lang/String; = "/dp/"

.field private static final HTTPS:Ljava/lang/String; = "https://"

.field private static final IGNORE_UPSELL_ASIN_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field public static UPSELL_POSITIONS:[D = null

.field private static final URL_PREFIX:Ljava/lang/String; = "www."

.field private static inRunningTest:Z

.field private static upsellOrigin:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/amazon/nwstd/upsell/UpsellUtils;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/upsell/UpsellUtils;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [D

    .line 67
    fill-array-data v0, :array_0

    sput-object v0, Lcom/amazon/nwstd/upsell/UpsellUtils;->UPSELL_POSITIONS:[D

    .line 74
    new-instance v0, Lcom/amazon/nwstd/upsell/UpsellUtils$1;

    invoke-direct {v0}, Lcom/amazon/nwstd/upsell/UpsellUtils$1;-><init>()V

    sput-object v0, Lcom/amazon/nwstd/upsell/UpsellUtils;->IGNORE_UPSELL_ASIN_LIST:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 88
    sput-boolean v0, Lcom/amazon/nwstd/upsell/UpsellUtils;->inRunningTest:Z

    return-void

    nop

    :array_0
    .array-data 8
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fe8000000000000L    # 0.75
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearUpsellData()V
    .locals 4

    .line 247
    sget-object v0, Lcom/amazon/nwstd/upsell/UpsellUtils;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "Newsstand upsell cleanup in progress"

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->acquire()Lcom/amazon/nwstd/resources/DynamicResourcesController;

    move-result-object v0

    .line 252
    :try_start_0
    invoke-virtual {v0}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->clear()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->release()V

    .line 259
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/nwstd/storage/CachedKVStorage;->getInstance(Landroid/content/Context;)Lcom/amazon/nwstd/storage/CachedKVStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/nwstd/storage/KVStorage;->empty()V

    .line 264
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$bool;->nwstd_fortate_identity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 265
    invoke-static {}, Lcom/amazon/nwstd/modules/FosVersionInNewsstand;->getFosVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/nwstd/modules/FosVersionInNewsstand;->getFosVersion()Ljava/lang/String;

    move-result-object v0

    const-string v3, "fos4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/amazon/nwstd/upsell/UpsellUtils;->inRunningTest:Z

    if-nez v0, :cond_0

    .line 266
    invoke-static {v2, v1}, Lcom/amazon/nwstd/cms/NewsstandCMSUtils;->removeLibraryBanner(ZZ)V

    goto :goto_0

    .line 268
    :cond_0
    invoke-static {v2, v1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->removeLibraryBanner(ZZ)V

    goto :goto_0

    .line 271
    :cond_1
    invoke-static {v2, v1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->removeLibraryBanner(ZZ)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 255
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->release()V

    .line 256
    throw v0
.end method

.method public static fetchOriginType(Lcom/amazon/kindle/model/content/ILocalBookItem;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 220
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getOriginType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCampaignId()Ljava/lang/String;
    .locals 4

    .line 281
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->acquire()Lcom/amazon/nwstd/resources/DynamicResourcesController;

    move-result-object v0

    .line 285
    :try_start_0
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->CAMPAIGN_ID:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 286
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 287
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/nwstd/resources/DynamicResource;

    invoke-virtual {v2}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object v3

    .line 288
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v0, "Duplicate campaign ids in the DB"

    invoke-static {v1, v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    :cond_1
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->release()V

    return-object v3

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->release()V

    .line 293
    throw v0
.end method

.method public static getForcedEnabledUpsellOrigin()Lcom/amazon/nwstd/resources/DynamicResourceOrigin;
    .locals 3

    .line 168
    invoke-static {}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->getInstance()Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 170
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-virtual {v1}, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->getForceUpsellType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    return-object v0

    .line 172
    :cond_0
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->KU:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-virtual {v1}, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->getForceUpsellType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->KU:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    return-object v0

    .line 174
    :cond_1
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->PR:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-virtual {v1}, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->getForceUpsellType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->PR:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMagazineUpsellOrigin(Ljava/lang/String;)Lcom/amazon/nwstd/resources/DynamicResourceOrigin;
    .locals 1

    const-string v0, "Content Explorer"

    .line 154
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    sget-object p0, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    return-object p0

    :cond_0
    const-string v0, "Kindle Unlimited"

    .line 156
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    sget-object p0, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->KU:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    return-object p0

    :cond_1
    const-string v0, "Prime"

    .line 158
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 159
    sget-object p0, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->PR:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRetailDomain(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 103
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p0

    .line 104
    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object p0

    .line 106
    invoke-interface {p0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getPFM()Ljava/lang/String;

    move-result-object p0

    .line 107
    invoke-static {p0}, Lcom/amazon/nwstd/service/upsell/UpsellStoreURLBuilder;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 109
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "https://"

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "www."

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "/dp/"

    .line 113
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUpsellOrigin(Ljava/lang/String;)Lcom/amazon/nwstd/resources/DynamicResourceOrigin;
    .locals 1

    .line 187
    invoke-static {}, Lcom/amazon/nwstd/upsell/UpsellUtils;->getForcedEnabledUpsellOrigin()Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    move-result-object v0

    if-nez v0, :cond_0

    .line 189
    invoke-static {p0}, Lcom/amazon/nwstd/upsell/UpsellUtils;->getMagazineUpsellOrigin(Ljava/lang/String;)Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static isADeletedUpsellContent(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 2

    .line 240
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->REMOTE:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getOriginType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/nwstd/upsell/UpsellUtils;->getUpsellOrigin(Ljava/lang/String;)Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAndroid_O_OrHigher()Z
    .locals 2

    .line 332
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRestricted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 126
    sget-object v0, Lcom/amazon/nwstd/upsell/UpsellUtils;->IGNORE_UPSELL_ASIN_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 130
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/amazon/kindle/newsstand/core/R$bool;->nwstd_upsell_enabled:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 135
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 136
    invoke-interface {p1}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isNewsstandPurchaseBlocked()Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    .line 141
    :cond_2
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p0

    .line 142
    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isInDemoMode()Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static isTextResource(Lcom/amazon/nwstd/resources/DynamicResource;)Z
    .locals 1

    .line 230
    invoke-virtual {p0}, Lcom/amazon/nwstd/resources/DynamicResource;->getTargetType()Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->getValueType()Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    move-result-object p0

    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->TEXT:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static runFullSyncBasedOnTheValueConfiguredFromServer(Landroid/content/Context;)V
    .locals 9

    .line 303
    invoke-static {p0}, Lcom/amazon/nwstd/storage/CachedKVStorage;->getInstance(Landroid/content/Context;)Lcom/amazon/nwstd/storage/CachedKVStorage;

    move-result-object v0

    const-string/jumbo v1, "upsell.sync.timestamp"

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/storage/KVStorage;->getValueAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 304
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x18

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 305
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->acquire()Lcom/amazon/nwstd/resources/DynamicResourcesController;

    move-result-object v3

    .line 306
    sget-object v4, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_SYNC_FREQ:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v5, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->ALL:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v6}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 307
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 308
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-gt v4, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const-string v4, "The number of resources returned is more than one"

    invoke-static {v6, v4}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 310
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 311
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/nwstd/resources/DynamicResource;

    invoke-virtual {v2}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    :cond_2
    const-wide/16 v3, 0x0

    if-eqz v0, :cond_3

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    sub-long/2addr v1, v5

    .line 315
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_1

    :cond_3
    move-wide v1, v3

    :goto_1
    if-eqz v0, :cond_4

    cmp-long v0, v1, v3

    if-nez v0, :cond_5

    .line 322
    :cond_4
    invoke-static {p0}, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->launchOneShotFullSync(Landroid/content/Context;)V

    .line 324
    :cond_5
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->release()V

    return-void
.end method

.method public static shouldEnableUpsell(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 0

    .line 204
    invoke-static {p0}, Lcom/amazon/nwstd/upsell/UpsellUtils;->getUpsellOrigin(Ljava/lang/String;)Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p2, p1}, Lcom/amazon/nwstd/upsell/UpsellUtils;->isRestricted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
