.class public Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;
.super Ljava/lang/Object;
.source "LibraryCEBannerContentController.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;


# instance fields
.field private mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

.field private final mDynamicResourcesEventsListener:Lcom/amazon/nwstd/resources/IDynamicResourcesListener;

.field private final mLibraryCEBannerContent:Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;

.field private mLibraryUIManager:Lcom/amazon/kindle/krx/ui/ILibraryUIManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-class v0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 66
    sput-object v0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->mInstance:Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController$1;

    invoke-direct {v0, p0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController$1;-><init>(Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;)V

    iput-object v0, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->mDynamicResourcesEventsListener:Lcom/amazon/nwstd/resources/IDynamicResourcesListener;

    .line 72
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->acquire()Lcom/amazon/nwstd/resources/DynamicResourcesController;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    .line 73
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->mDynamicResourcesEventsListener:Lcom/amazon/nwstd/resources/IDynamicResourcesListener;

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->registerEventListener(Lcom/amazon/nwstd/resources/IDynamicResourcesListener;)V

    .line 74
    invoke-static {}, Lcom/amazon/nwstd/utils/LocaleUtils;->getDefaultLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-direct {p0, v0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->fetchCEBannerContentFromSource(Ljava/lang/String;)Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->mLibraryCEBannerContent:Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;

    .line 76
    invoke-virtual {v1, v0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->setLocale(Ljava/lang/String;)V

    return-void
.end method

.method private static cleanLibraryBannerData()V
    .locals 3

    .line 319
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->acquire()Lcom/amazon/nwstd/resources/DynamicResourcesController;

    move-result-object v0

    .line 321
    :try_start_0
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_button_cancel:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-static {v0, v1, v2}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->removeResourceType(Lcom/amazon/nwstd/resources/DynamicResourcesController;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    .line 322
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_button_start:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-static {v0, v1, v2}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->removeResourceType(Lcom/amazon/nwstd/resources/DynamicResourcesController;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    .line 323
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-static {v0, v1, v2}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->removeResourceType(Lcom/amazon/nwstd/resources/DynamicResourcesController;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    .line 324
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_image:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-static {v0, v1, v2}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->removeResourceType(Lcom/amazon/nwstd/resources/DynamicResourcesController;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    .line 325
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_title:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-static {v0, v1, v2}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->removeResourceType(Lcom/amazon/nwstd/resources/DynamicResourcesController;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->release()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->release()V

    .line 328
    throw v0
.end method

.method private fetchCEBannerContentFromDefaultSource(Landroid/content/res/Resources;)Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;
    .locals 3

    .line 152
    new-instance v0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;

    invoke-direct {v0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;-><init>()V

    .line 153
    sget v1, Lcom/amazon/kindle/newsstand/core/R$string;->upsell_lib_banner_text_title:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->setTitle(Ljava/lang/String;)V

    .line 154
    sget v1, Lcom/amazon/kindle/newsstand/core/R$string;->upsell_lib_banner_text_description:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->setDescription(Ljava/lang/String;)V

    .line 155
    sget v1, Lcom/amazon/kindle/newsstand/core/R$string;->upsell_lib_banner_start_button_text:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->setAcceptText(Ljava/lang/String;)V

    .line 156
    sget v1, Lcom/amazon/kindle/newsstand/core/R$string;->upsell_lib_banner_cancell_button_text:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->setDeclineText(Ljava/lang/String;)V

    .line 157
    sget-object p1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_image:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    const-string v2, "en-US"

    invoke-direct {p0, p1, v1, v2}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->fetchDataFromLocalSource(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->setBackgroundImageURI(Ljava/lang/String;)V

    return-object v0
.end method

.method private fetchCEBannerContentFromSource(Ljava/lang/String;)Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;
    .locals 3

    .line 135
    new-instance v0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;

    invoke-direct {v0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;-><init>()V

    .line 136
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_title:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, v1, v2, p1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->fetchDataFromLocalSource(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->setTitle(Ljava/lang/String;)V

    .line 137
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, v1, v2, p1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->fetchDataFromLocalSource(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->setDescription(Ljava/lang/String;)V

    .line 138
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_button_start:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, v1, v2, p1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->fetchDataFromLocalSource(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->setAcceptText(Ljava/lang/String;)V

    .line 139
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_button_cancel:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, v1, v2, p1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->fetchDataFromLocalSource(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->setDeclineText(Ljava/lang/String;)V

    .line 140
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_image:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, v1, v2, p1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->fetchDataFromLocalSource(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->setBackgroundImageURI(Ljava/lang/String;)V

    return-object v0
.end method

.method private fetchDataFromLocalSource(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 205
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 206
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string p2, "The number of resources returned is more than one"

    invoke-static {v0, p2}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 208
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 209
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/nwstd/resources/DynamicResource;

    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public static getInstance()Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;
    .locals 1

    .line 84
    sget-object v0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->mInstance:Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;

    invoke-direct {v0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;-><init>()V

    sput-object v0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->mInstance:Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;

    .line 87
    :cond_0
    sget-object v0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->mInstance:Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;

    return-object v0
.end method

.method public static getStoreManager()Lcom/amazon/nwstd/store/INewsstandStoreManager;
    .locals 1

    .line 349
    new-instance v0, Lcom/amazon/nwstd/store/TabletNewsstandStoreManager;

    invoke-direct {v0}, Lcom/amazon/nwstd/store/TabletNewsstandStoreManager;-><init>()V

    return-object v0
.end method

.method private refreshUI()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->mLibraryUIManager:Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    if-eqz v0, :cond_0

    .line 193
    sget-object v1, Lcom/amazon/kindle/krx/ui/DecorationPosition;->TOP:Lcom/amazon/kindle/krx/ui/DecorationPosition;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->refreshLibraryDecoration(Lcom/amazon/kindle/krx/ui/DecorationPosition;)V

    :cond_0
    return-void
.end method

.method public static removeLibraryBanner(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    .line 300
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 301
    invoke-static {p1}, Lcom/amazon/nwstd/storage/CachedKVStorage;->getInstance(Landroid/content/Context;)Lcom/amazon/nwstd/storage/CachedKVStorage;

    move-result-object p1

    const-string/jumbo v0, "upsell.library.decline"

    invoke-virtual {p1, v0}, Lcom/amazon/nwstd/storage/KVStorage;->getValueAsBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 302
    invoke-static {}, Lcom/amazon/nwstd/upsell/UpsellUtils;->getCampaignId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 304
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 305
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "NewsstandCELibrary"

    const-string v1, "CELibraryBannerHidden"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_1

    .line 311
    invoke-static {}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->cleanLibraryBannerData()V

    :cond_1
    return-void
.end method

.method private static removeResourceType(Lcom/amazon/nwstd/resources/DynamicResourcesController;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V
    .locals 1

    const/4 v0, 0x0

    .line 337
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 338
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/nwstd/resources/DynamicResource;

    .line 339
    invoke-virtual {p0, p2}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->removeResource(Lcom/amazon/nwstd/resources/DynamicResource;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getLibraryCEBannerContent()Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;
    .locals 4

    .line 119
    invoke-static {}, Lcom/amazon/nwstd/utils/LocaleUtils;->getDefaultLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->mLibraryCEBannerContent:Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;

    invoke-virtual {v1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    sget-object v1, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, "CurrentLocale is diffrent than the LibraryCEBannerContent locale"

    invoke-static {v1, v2, v3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 123
    invoke-virtual {p0, v0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->updateLibraryCEBannerContentFromSource(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->mLibraryCEBannerContent:Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;

    invoke-virtual {v1, v0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->setLocale(Ljava/lang/String;)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->mLibraryCEBannerContent:Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;

    return-object v0
.end method

.method protected isDefaultLanguage(Ljava/lang/String;)Z
    .locals 2

    .line 293
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 294
    invoke-static {p1}, Lcom/amazon/nwstd/utils/LocaleUtils;->toLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 295
    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onResourceAdded(Lcom/amazon/nwstd/resources/DynamicResource;)V
    .locals 3

    .line 220
    invoke-static {p1}, Lcom/amazon/nwstd/upsell/UpsellUtils;->isTextResource(Lcom/amazon/nwstd/resources/DynamicResource;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getLocale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->isDefaultLanguage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 223
    :cond_0
    sget-object v0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inside onResourceAdded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getTargetType()Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 225
    sget-object v0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController$2;->$SwitchMap$com$amazon$nwstd$resources$DynamicResourceTargetType:[I

    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getTargetType()Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->mLibraryCEBannerContent:Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;

    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->setBackgroundImageURI(Ljava/lang/String;)V

    .line 244
    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->refreshUI()V

    goto :goto_0

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->mLibraryCEBannerContent:Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;

    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->setDeclineText(Ljava/lang/String;)V

    .line 240
    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->refreshUI()V

    goto :goto_0

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->mLibraryCEBannerContent:Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;

    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->setAcceptText(Ljava/lang/String;)V

    .line 236
    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->refreshUI()V

    goto :goto_0

    .line 231
    :cond_4
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->mLibraryCEBannerContent:Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;

    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->setDescription(Ljava/lang/String;)V

    .line 232
    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->refreshUI()V

    goto :goto_0

    .line 227
    :cond_5
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->mLibraryCEBannerContent:Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;

    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->setTitle(Ljava/lang/String;)V

    .line 228
    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->refreshUI()V

    :goto_0
    return-void
.end method

.method public onResourceRemoved(Lcom/amazon/nwstd/resources/DynamicResource;)V
    .locals 3

    .line 256
    invoke-static {p1}, Lcom/amazon/nwstd/upsell/UpsellUtils;->isTextResource(Lcom/amazon/nwstd/resources/DynamicResource;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getLocale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->isDefaultLanguage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 259
    :cond_0
    sget-object v0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inside onResourceRemoved "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getTargetType()Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 261
    sget-object v0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController$2;->$SwitchMap$com$amazon$nwstd$resources$DynamicResourceTargetType:[I

    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getTargetType()Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    if-eq p1, v2, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 279
    :cond_1
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->mLibraryCEBannerContent:Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;

    invoke-virtual {p1, v1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->setBackgroundImageURI(Ljava/lang/String;)V

    .line 280
    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->refreshUI()V

    goto :goto_0

    .line 275
    :cond_2
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->mLibraryCEBannerContent:Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;

    invoke-virtual {p1, v1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->setDeclineText(Ljava/lang/String;)V

    .line 276
    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->refreshUI()V

    goto :goto_0

    .line 271
    :cond_3
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->mLibraryCEBannerContent:Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;

    invoke-virtual {p1, v1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->setAcceptText(Ljava/lang/String;)V

    .line 272
    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->refreshUI()V

    goto :goto_0

    .line 267
    :cond_4
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->mLibraryCEBannerContent:Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;

    invoke-virtual {p1, v1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->setDescription(Ljava/lang/String;)V

    .line 268
    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->refreshUI()V

    goto :goto_0

    .line 263
    :cond_5
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->mLibraryCEBannerContent:Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;

    invoke-virtual {p1, v1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->setTitle(Ljava/lang/String;)V

    .line 264
    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->refreshUI()V

    :goto_0
    return-void
.end method

.method public setLibraryUIManager(Lcom/amazon/kindle/krx/ui/ILibraryUIManager;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->mLibraryUIManager:Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    return-void
.end method

.method public updateLibraryCEBannerContentFromSource(Ljava/lang/String;)V
    .locals 2

    .line 169
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->fetchCEBannerContentFromSource(Ljava/lang/String;)Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;

    move-result-object v0

    .line 171
    invoke-static {v0}, Lcom/amazon/nwstd/utils/NewsstandBannerUtils;->isLibraryCEBannerDataValid(Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 175
    invoke-static {v1, p1}, Lcom/amazon/nwstd/utils/NewsstandBannerUtils;->isPlatformValidForDefaultSourceData(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 176
    invoke-direct {p0, v1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->fetchCEBannerContentFromDefaultSource(Landroid/content/res/Resources;)Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;

    move-result-object v0

    .line 179
    :cond_0
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->mLibraryCEBannerContent:Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;

    invoke-virtual {v0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->setTitle(Ljava/lang/String;)V

    .line 180
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->mLibraryCEBannerContent:Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;

    invoke-virtual {v0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->setDescription(Ljava/lang/String;)V

    .line 181
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->mLibraryCEBannerContent:Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;

    invoke-virtual {v0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->getAcceptText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->setAcceptText(Ljava/lang/String;)V

    .line 182
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->mLibraryCEBannerContent:Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;

    invoke-virtual {v0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->getDeclineText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->setDeclineText(Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->mLibraryCEBannerContent:Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;

    invoke-virtual {v0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->getBackgroundImageURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->setBackgroundImageURI(Ljava/lang/String;)V

    .line 184
    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->refreshUI()V

    return-void
.end method
