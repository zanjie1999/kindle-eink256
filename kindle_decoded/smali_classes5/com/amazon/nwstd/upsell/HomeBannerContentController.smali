.class public Lcom/amazon/nwstd/upsell/HomeBannerContentController;
.super Ljava/lang/Object;
.source "HomeBannerContentController.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/amazon/nwstd/upsell/HomeBannerContentController;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

.field private final mHomeBannerContent:Lcom/amazon/nwstd/upsell/HomeBannerContent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/amazon/nwstd/upsell/HomeBannerContentController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/upsell/HomeBannerContentController;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 48
    sput-object v0, Lcom/amazon/nwstd/upsell/HomeBannerContentController;->mInstance:Lcom/amazon/nwstd/upsell/HomeBannerContentController;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/HomeBannerContentController;->mContext:Landroid/content/Context;

    .line 55
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->acquire()Lcom/amazon/nwstd/resources/DynamicResourcesController;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/nwstd/upsell/HomeBannerContentController;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    .line 56
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/nwstd/upsell/HomeBannerContentController;->fetchCEBannerContentFromSource(Ljava/lang/String;)Lcom/amazon/nwstd/upsell/HomeBannerContent;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/nwstd/upsell/HomeBannerContentController;->mHomeBannerContent:Lcom/amazon/nwstd/upsell/HomeBannerContent;

    return-void
.end method

.method private fetchCEBannerContentFromSource(Ljava/lang/String;)Lcom/amazon/nwstd/upsell/HomeBannerContent;
    .locals 3

    .line 97
    new-instance v0, Lcom/amazon/nwstd/upsell/HomeBannerContent;

    invoke-direct {v0}, Lcom/amazon/nwstd/upsell/HomeBannerContent;-><init>()V

    .line 98
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_title:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, v1, v2, p1}, Lcom/amazon/nwstd/upsell/HomeBannerContentController;->fetchDataFromLocalSource(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/upsell/HomeBannerContent;->setTitle(Ljava/lang/String;)V

    .line 99
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, v1, v2, p1}, Lcom/amazon/nwstd/upsell/HomeBannerContentController;->fetchDataFromLocalSource(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/upsell/HomeBannerContent;->setDescription(Ljava/lang/String;)V

    .line 100
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_button_start:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, v1, v2, p1}, Lcom/amazon/nwstd/upsell/HomeBannerContentController;->fetchDataFromLocalSource(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/HomeBannerContent;->setAcceptText(Ljava/lang/String;)V

    .line 101
    sget-object p1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_cardrank:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/amazon/nwstd/upsell/HomeBannerContentController;->fetchDataFromLocalSource(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 102
    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/HomeBannerContent;->setCardRank(I)V

    goto :goto_0

    .line 104
    :cond_0
    sget-object p1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_cardrank:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, p1, v1, v2}, Lcom/amazon/nwstd/upsell/HomeBannerContentController;->fetchDataFromLocalSource(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/HomeBannerContent;->setCardRank(I)V

    .line 106
    :goto_0
    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/HomeBannerContentController;->fetchImageListFromDB()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/HomeBannerContent;->setBackgroundImageURI(Ljava/util/List;)V

    return-object v0
.end method

.method private fetchDataFromLocalSource(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/HomeBannerContentController;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 133
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 134
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

    .line 136
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 137
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/nwstd/resources/DynamicResource;

    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method private fetchImageListFromDB()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/HomeBannerContentController;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_image:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v3, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 84
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 85
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/nwstd/resources/DynamicResource;

    .line 86
    invoke-virtual {v2}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/amazon/nwstd/upsell/HomeBannerContentController;
    .locals 1

    .line 64
    sget-object v0, Lcom/amazon/nwstd/upsell/HomeBannerContentController;->mInstance:Lcom/amazon/nwstd/upsell/HomeBannerContentController;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/amazon/nwstd/upsell/HomeBannerContentController;

    invoke-direct {v0, p0}, Lcom/amazon/nwstd/upsell/HomeBannerContentController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amazon/nwstd/upsell/HomeBannerContentController;->mInstance:Lcom/amazon/nwstd/upsell/HomeBannerContentController;

    .line 67
    :cond_0
    sget-object p0, Lcom/amazon/nwstd/upsell/HomeBannerContentController;->mInstance:Lcom/amazon/nwstd/upsell/HomeBannerContentController;

    return-object p0
.end method

.method private removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/HomeBannerContentController;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    invoke-static {p3}, Lcom/amazon/nwstd/utils/LocaleUtils;->toLanguageTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 217
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/nwstd/resources/DynamicResource;

    .line 218
    iget-object p3, p0, Lcom/amazon/nwstd/upsell/HomeBannerContentController;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    invoke-virtual {p3, p2}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->removeResource(Lcom/amazon/nwstd/resources/DynamicResource;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public removeHomeBanner()V
    .locals 3

    .line 225
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_title:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/amazon/nwstd/upsell/HomeBannerContentController;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/amazon/nwstd/upsell/HomeBannerContentController;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_button_start:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/amazon/nwstd/upsell/HomeBannerContentController;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_image:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/amazon/nwstd/upsell/HomeBannerContentController;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_cardrank:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/amazon/nwstd/upsell/HomeBannerContentController;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
