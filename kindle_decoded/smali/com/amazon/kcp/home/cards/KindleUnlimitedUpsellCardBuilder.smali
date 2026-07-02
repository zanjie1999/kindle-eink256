.class public final Lcom/amazon/kcp/home/cards/KindleUnlimitedUpsellCardBuilder;
.super Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;
.source "KindleUnlimitedUpsellCardBuilder.kt"

# interfaces
.implements Lcom/amazon/kindle/home/card/SidekickCardBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/home/cards/base/BaseCardBuilder<",
        "Lcom/amazon/kcp/home/widget/BrandedSingleEntityWidget;",
        ">;",
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/home/card/SidekickCardBuilder;"
    }
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

.field private final tag:Ljava/lang/String;

.field private final templateId:Ljava/lang/String;

.field private final weblabName:Ljava/lang/String;

.field private final widgets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/home/widget/BrandedSingleEntityWidget;",
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

    .line 29
    invoke-direct {p0}, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/cards/KindleUnlimitedUpsellCardBuilder;->fm:Lcom/amazon/discovery/RequiredUniqueDiscovery;

    const-string p1, "com.amazon.kcp.home.cards.KindleUnlimitedUpsellCardBuilder"

    .line 31
    iput-object p1, p0, Lcom/amazon/kcp/home/cards/KindleUnlimitedUpsellCardBuilder;->tag:Ljava/lang/String;

    .line 32
    sget-object p1, Lcom/amazon/kcp/home/models/CardType;->KU_UPSELL:Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/models/CardType;->getTemplateId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/cards/KindleUnlimitedUpsellCardBuilder;->templateId:Ljava/lang/String;

    const-string p1, "SIDEKICK_ANDROID_KU_UPSELL_295695"

    .line 33
    iput-object p1, p0, Lcom/amazon/kcp/home/cards/KindleUnlimitedUpsellCardBuilder;->weblabName:Ljava/lang/String;

    .line 35
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/cards/KindleUnlimitedUpsellCardBuilder;->widgets:Ljava/util/Map;

    return-void
.end method

.method private final isCustomerEligible(Lcom/amazon/kindle/home/model/CardData;)Z
    .locals 5

    .line 76
    sget-object v0, Lcom/amazon/kcp/home/debug/SidekickSettings;->Companion:Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Utils.getFactory().context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/home/debug/SidekickSettings;

    move-result-object v0

    .line 77
    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/home/debug/SidekickSettings;->getTimestampForReftag(Ljava/lang/String;)J

    move-result-wide v0

    const/4 p1, 0x1

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return p1

    .line 82
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public build(Landroid/content/Context;Lcom/amazon/kindle/home/model/CardData;)Lcom/amazon/kindle/home/card/HomeCard;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "data"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object p1, Lcom/amazon/kcp/home/models/CardType;->KU_UPSELL:Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/models/CardType;->getTemplateId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/CardData;->getTemplateId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 44
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

    const-string p2, "com.amazon.kcp.home.cards.KindleUnlimitedUpsellCardBuilder"

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 48
    :cond_0
    invoke-direct {p0, p2}, Lcom/amazon/kcp/home/cards/KindleUnlimitedUpsellCardBuilder;->isCustomerEligible(Lcom/amazon/kindle/home/model/CardData;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    .line 53
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/home/cards/KindleUnlimitedUpsellCardBuilder;->widgets:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/CardData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/home/widget/BrandedSingleEntityWidget;

    if-eqz p1, :cond_2

    .line 54
    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/BrandedSingleEntityWidget;->getData()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v0

    :cond_2
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Creating new BrandedSingleEntityWidget for id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/CardData;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    .line 57
    new-instance v6, Lcom/amazon/kcp/home/widget/BrandedSingleEntityWidget;

    const-string v0, "factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "factory.context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    iget-object p1, p0, Lcom/amazon/kcp/home/cards/KindleUnlimitedUpsellCardBuilder;->fm:Lcom/amazon/discovery/RequiredUniqueDiscovery;

    invoke-virtual {p1}, Lcom/amazon/discovery/RequiredUniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "fm.value()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p1

    check-cast v3, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {}, Lcom/amazon/kcp/home/cards/KindleUnlimitedUpsellCardBuilderKt;->access$getSUPPORTED_THEMES$p()Ljava/util/List;

    move-result-object v5

    move-object v0, v6

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/home/widget/BrandedSingleEntityWidget;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;Ljava/util/List;)V

    .line 58
    iget-object p1, p0, Lcom/amazon/kcp/home/cards/KindleUnlimitedUpsellCardBuilder;->widgets:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/CardData;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v6

    .line 61
    :cond_3
    invoke-virtual {p0, p2, p1}, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;->cacheZoneData(Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kindle/home/card/HomeCard;)V

    return-object p1
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/kcp/home/cards/KindleUnlimitedUpsellCardBuilder;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateId()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/home/cards/KindleUnlimitedUpsellCardBuilder;->templateId:Ljava/lang/String;

    return-object v0
.end method

.method public getWeblabName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/kcp/home/cards/KindleUnlimitedUpsellCardBuilder;->weblabName:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;)Z
    .locals 1

    const-string/jumbo v0, "weblabManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/amazon/kcp/home/cards/KindleUnlimitedUpsellCardBuilder;->getWeblabName()Ljava/lang/String;

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

.method protected onThemedImageReady(Lcom/amazon/kcp/home/widget/BrandedSingleEntityWidget;Ljava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "widget"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "theme"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/BrandedSingleEntityWidget;->getThemeImageDownloaded$LibraryModule_release()Ljava/util/Map;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic onThemedImageReady(Lcom/amazon/kindle/home/card/HomeCard;Ljava/lang/String;Z)V
    .locals 0

    .line 27
    check-cast p1, Lcom/amazon/kcp/home/widget/BrandedSingleEntityWidget;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/home/cards/KindleUnlimitedUpsellCardBuilder;->onThemedImageReady(Lcom/amazon/kcp/home/widget/BrandedSingleEntityWidget;Ljava/lang/String;Z)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/kcp/home/cards/KindleUnlimitedUpsellCardBuilder;->widgets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
