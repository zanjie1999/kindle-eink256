.class public final Lcom/amazon/kcp/debug/NeutronUtilManager$NeutronUtil;
.super Ljava/lang/Object;
.source "NeutronUtilManager.kt"

# interfaces
.implements Lcom/amazon/kcp/debug/INeutronUtil;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/debug/NeutronUtilManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NeutronUtil"
.end annotation


# instance fields
.field private final isBetaBuild:Z

.field private final isComicsBuild:Z

.field private final isDebugBuild:Z

.field private final isDebugTOCEnabled:Z

.field private isNeutronPhase1Cached:Z

.field private isNeutronPhase1Enabled:Z

.field private isNewtronTOCCached:Z

.field private isNewtronTOCEnabled:Z

.field private final pubSubMessageService:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

.field private weblabManager:Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;


# direct methods
.method public constructor <init>()V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/amazon/kcp/debug/NeutronUtilManager$NeutronUtil;-><init>(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;ZZZLcom/amazon/kindle/krx/events/IPubSubEventsManager;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;ZZZLcom/amazon/kindle/krx/events/IPubSubEventsManager;Z)V
    .locals 1

    const-string/jumbo v0, "pubSubMessageService"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/debug/NeutronUtilManager$NeutronUtil;->weblabManager:Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    iput-boolean p2, p0, Lcom/amazon/kcp/debug/NeutronUtilManager$NeutronUtil;->isBetaBuild:Z

    iput-boolean p3, p0, Lcom/amazon/kcp/debug/NeutronUtilManager$NeutronUtil;->isDebugBuild:Z

    iput-boolean p4, p0, Lcom/amazon/kcp/debug/NeutronUtilManager$NeutronUtil;->isDebugTOCEnabled:Z

    iput-object p5, p0, Lcom/amazon/kcp/debug/NeutronUtilManager$NeutronUtil;->pubSubMessageService:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    iput-boolean p6, p0, Lcom/amazon/kcp/debug/NeutronUtilManager$NeutronUtil;->isComicsBuild:Z

    .line 44
    invoke-interface {p5, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;ZZZLcom/amazon/kindle/krx/events/IPubSubEventsManager;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_1

    .line 29
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string p8, "Utils.getFactory()"

    invoke-static {p1, p8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_2

    .line 30
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

    move-result p2

    :cond_2
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_3

    .line 31
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p3

    :cond_3
    move v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_4

    .line 32
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isNewtronTOCEnabled()Z

    move-result p4

    :cond_4
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_5

    .line 33
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p5

    const-string p2, "PubSubMessageService.getInstance()"

    invoke-static {p5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_6

    .line 34
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result p6

    :cond_6
    move v3, p6

    move-object p2, p0

    move-object p3, p1

    move p4, p8

    move p5, v0

    move p6, v1

    move-object p7, v2

    move p8, v3

    invoke-direct/range {p2 .. p8}, Lcom/amazon/kcp/debug/NeutronUtilManager$NeutronUtil;-><init>(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;ZZZLcom/amazon/kindle/krx/events/IPubSubEventsManager;Z)V

    return-void
.end method

.method private final isNewtronNotebookAdditionEnabledWeblab()Z
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/amazon/kcp/debug/NeutronUtilManager$NeutronUtil;->weblabManager:Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 103
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v2, "Utils.getFactory()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/amazon/kcp/debug/NeutronUtilManager$NeutronUtil;->weblabManager:Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/debug/NeutronUtilManager$NeutronUtil;->weblabManager:Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    if-eqz v0, :cond_2

    const-string v1, "BOOKS_KINDLE_ANDROID_NEUTRON_NOTEBOOK_ADDITION_403593"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    .line 107
    invoke-interface {v1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "C"

    :goto_1
    const-string v1, "gateWeblab?.treatmentAnd\u2026ordTrigger ?: TREATMENT_C"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "T1"

    .line 108
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public isNeutronPhase1EnabledInPlugin()Z
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/amazon/kcp/debug/NeutronUtilManager$NeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v0

    return v0
.end method

.method public isNeutronPhase1EnabledInReader()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/amazon/kcp/debug/NeutronUtilManager$NeutronUtil;->isComicsBuild:Z

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/amazon/kcp/debug/NeutronUtilManager;->INSTANCE:Lcom/amazon/kcp/debug/NeutronUtilManager;

    invoke-static {v0}, Lcom/amazon/kcp/debug/NeutronUtilManager;->access$getTAG$p(Lcom/amazon/kcp/debug/NeutronUtilManager;)Ljava/lang/String;

    const/4 v0, 0x0

    return v0

    .line 56
    :cond_0
    sget-object v0, Lcom/amazon/kcp/debug/NeutronUtilManager;->INSTANCE:Lcom/amazon/kcp/debug/NeutronUtilManager;

    invoke-static {v0}, Lcom/amazon/kcp/debug/NeutronUtilManager;->access$getTAG$p(Lcom/amazon/kcp/debug/NeutronUtilManager;)Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method public isNewtronNotebookAdditionEnabled()Z
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/amazon/kcp/debug/NeutronUtilManager$NeutronUtil;->isNewtronNotebookAdditionEnabledWeblab()Z

    move-result v0

    return v0
.end method

.method public isNewtronTOCEnabled()Z
    .locals 2

    .line 69
    iget-boolean v0, p0, Lcom/amazon/kcp/debug/NeutronUtilManager$NeutronUtil;->isNewtronTOCCached:Z

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/amazon/kcp/debug/NeutronUtilManager;->INSTANCE:Lcom/amazon/kcp/debug/NeutronUtilManager;

    invoke-static {v0}, Lcom/amazon/kcp/debug/NeutronUtilManager;->access$getTAG$p(Lcom/amazon/kcp/debug/NeutronUtilManager;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Newtron TOC enabled value is cached. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kcp/debug/NeutronUtilManager$NeutronUtil;->isNewtronTOCEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    iget-boolean v0, p0, Lcom/amazon/kcp/debug/NeutronUtilManager$NeutronUtil;->isNewtronTOCEnabled:Z

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/amazon/kcp/debug/NeutronUtilManager$NeutronUtil;->isNewtronTOCCached:Z

    .line 75
    iget-boolean v1, p0, Lcom/amazon/kcp/debug/NeutronUtilManager$NeutronUtil;->isDebugBuild:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/amazon/kcp/debug/NeutronUtilManager$NeutronUtil;->isDebugTOCEnabled:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/amazon/kcp/debug/NeutronUtilManager$NeutronUtil;->isNewtronTOCEnabled:Z

    return v0
.end method

.method public final onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kcp/debug/NeutronUtilManager$NeutronUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 91
    iput-boolean p1, p0, Lcom/amazon/kcp/debug/NeutronUtilManager$NeutronUtil;->isNeutronPhase1Cached:Z

    .line 92
    iput-boolean p1, p0, Lcom/amazon/kcp/debug/NeutronUtilManager$NeutronUtil;->isNewtronTOCCached:Z

    :goto_0
    return-void
.end method
