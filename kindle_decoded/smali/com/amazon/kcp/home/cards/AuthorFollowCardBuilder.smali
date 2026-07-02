.class public final Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder;
.super Ljava/lang/Object;
.source "AuthorFollowCardBuilder.kt"

# interfaces
.implements Lcom/amazon/kindle/home/card/SidekickCardBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder$AuthorFollowStatusResponseHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthorFollowCardBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthorFollowCardBuilder.kt\ncom/amazon/kcp/home/cards/AuthorFollowCardBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,192:1\n1#2:193\n*E\n"
.end annotation


# instance fields
.field private final fm:Lcom/amazon/discovery/RequiredUniqueDiscovery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/discovery/RequiredUniqueDiscovery<",
            "Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private final imageProvider:Lcom/amazon/kcp/home/util/CardImageProvider;

.field private final templateId:Ljava/lang/String;

.field private final weblabName:Ljava/lang/String;

.field private final widgets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/home/widget/AuthorFollowWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/discovery/RequiredUniqueDiscovery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/discovery/RequiredUniqueDiscovery<",
            "Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder;->fm:Lcom/amazon/discovery/RequiredUniqueDiscovery;

    .line 42
    sget-object p1, Lcom/amazon/kcp/home/models/CardType;->AUTHOR_FOLLOW:Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/models/CardType;->getTemplateId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder;->templateId:Ljava/lang/String;

    const-string p1, "KAR_246389"

    .line 43
    iput-object p1, p0, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder;->weblabName:Ljava/lang/String;

    .line 45
    new-instance p1, Lcom/amazon/kcp/home/util/CardImageProvider;

    invoke-direct {p1}, Lcom/amazon/kcp/home/util/CardImageProvider;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder;->imageProvider:Lcom/amazon/kcp/home/util/CardImageProvider;

    .line 46
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder;->widgets:Ljava/util/Map;

    return-void
.end method

.method private final cacheImagesIfMissing(Lcom/amazon/kcp/home/widget/AuthorFollowWidget;Lcom/amazon/kindle/home/model/ImageZone;)V
    .locals 5
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-author"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/ImageZone;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    .line 104
    invoke-static {p2}, Lcom/amazon/kcp/library/HomeUtils;->imagePathForAuthorFollowUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image already exists card="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kindle/home/model/CardData;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v3, 0x1

    .line 110
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->setImageDownloaded$LibraryModule_release(Ljava/lang/Boolean;)V

    if-eqz v2, :cond_1

    goto :goto_1

    .line 113
    :cond_1
    iget-object v2, p0, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder;->imageProvider:Lcom/amazon/kcp/home/util/CardImageProvider;

    new-instance v3, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder$cacheImagesIfMissing$$inlined$run$lambda$1;

    invoke-direct {v3, v0, p2, v1, p1}, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder$cacheImagesIfMissing$$inlined$run$lambda$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/home/widget/AuthorFollowWidget;)V

    invoke-virtual {v2, v0, p2, v1, v3}, Lcom/amazon/kcp/home/util/CardImageProvider;->getImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/home/util/ImageDownloadCallback;)V

    .line 134
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    return-void
.end method

.method private final checkAndFetchDataForWidget(Lcom/amazon/kcp/home/widget/AuthorFollowWidget;)V
    .locals 4

    .line 79
    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 80
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/home/model/HomeZone;

    .line 83
    instance-of v2, v1, Lcom/amazon/kindle/home/model/ImageZone;

    if-eqz v2, :cond_0

    .line 84
    check-cast v1, Lcom/amazon/kindle/home/model/ImageZone;

    invoke-direct {p0, p1, v1}, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder;->cacheImagesIfMissing(Lcom/amazon/kcp/home/widget/AuthorFollowWidget;Lcom/amazon/kindle/home/model/ImageZone;)V

    .line 85
    invoke-direct {p0, p1, v1}, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder;->checkAuthorFollowStatus(Lcom/amazon/kcp/home/widget/AuthorFollowWidget;Lcom/amazon/kindle/home/model/ImageZone;)V

    goto :goto_0

    .line 87
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nothing to fetch data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final checkAuthorFollowStatus(Lcom/amazon/kcp/home/widget/AuthorFollowWidget;Lcom/amazon/kindle/home/model/ImageZone;)V
    .locals 9

    .line 144
    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/ImageZone;->getImageAsin()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v2

    .line 147
    new-instance p2, Lcom/amazon/kcp/home/api/AuthorFollowStatusRequest;

    .line 149
    new-instance v3, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder$AuthorFollowStatusResponseHandler;

    invoke-direct {v3, p1}, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder$AuthorFollowStatusResponseHandler;-><init>(Lcom/amazon/kcp/home/widget/AuthorFollowWidget;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x38

    const/4 v8, 0x0

    move-object v0, p2

    .line 147
    invoke-direct/range {v0 .. v8}, Lcom/amazon/kcp/home/api/AuthorFollowStatusRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/webservices/BaseResponseHandler;Lcom/amazon/kcp/home/debug/SidekickSettings;Lcom/amazon/kcp/application/Marketplace;Landroid/net/Uri$Builder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 150
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string v0, "Utils.getFactory()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;Lcom/amazon/kindle/home/model/CardData;)Lcom/amazon/kindle/home/card/HomeCard;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "data"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object p1, Lcom/amazon/kcp/home/models/CardType;->AUTHOR_FOLLOW:Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/models/CardType;->getTemplateId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/CardData;->getTemplateId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid Card template="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/CardData;->getTemplateId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", returning null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.amazon.kcp.home.widget.AuthorFollowWidget"

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder;->widgets:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/CardData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;

    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v0

    :cond_1
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Creating AuthorFollowWidget for id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/CardData;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    new-instance p1, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder;->fm:Lcom/amazon/discovery/RequiredUniqueDiscovery;

    invoke-virtual {v1}, Lcom/amazon/discovery/RequiredUniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "fm.value()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-direct {p1, v0, v1, p2}, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;)V

    .line 65
    iget-object v0, p0, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder;->widgets:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/CardData;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_2
    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder;->checkAndFetchDataForWidget(Lcom/amazon/kcp/home/widget/AuthorFollowWidget;)V

    return-object p1
.end method

.method public getTemplateId()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder;->templateId:Ljava/lang/String;

    return-object v0
.end method

.method public getWeblabName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder;->weblabName:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;)Z
    .locals 1

    const-string/jumbo v0, "weblabManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder;->getWeblabName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "T1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder;->widgets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
