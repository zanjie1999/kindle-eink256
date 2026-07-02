.class public final Lcom/amazon/kcp/util/StoreTabDeprecationUtils;
.super Ljava/lang/Object;
.source "StoreTabDeprecationUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/util/StoreTabDeprecationUtils;

.field private static final isStoreTabDeprecationBetaWeblabOn$delegate:Lkotlin/Lazy;

.field private static final isStoreTabExperimentWeblabOn$delegate:Lkotlin/Lazy;

.field private static final isStoreTabLaunchWeblabOn$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/amazon/kcp/util/StoreTabDeprecationUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/util/StoreTabDeprecationUtils;-><init>()V

    sput-object v0, Lcom/amazon/kcp/util/StoreTabDeprecationUtils;->INSTANCE:Lcom/amazon/kcp/util/StoreTabDeprecationUtils;

    .line 15
    sget-object v0, Lcom/amazon/kcp/util/StoreTabDeprecationUtils$isStoreTabLaunchWeblabOn$2;->INSTANCE:Lcom/amazon/kcp/util/StoreTabDeprecationUtils$isStoreTabLaunchWeblabOn$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/util/StoreTabDeprecationUtils;->isStoreTabLaunchWeblabOn$delegate:Lkotlin/Lazy;

    .line 20
    sget-object v0, Lcom/amazon/kcp/util/StoreTabDeprecationUtils$isStoreTabExperimentWeblabOn$2;->INSTANCE:Lcom/amazon/kcp/util/StoreTabDeprecationUtils$isStoreTabExperimentWeblabOn$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/util/StoreTabDeprecationUtils;->isStoreTabExperimentWeblabOn$delegate:Lkotlin/Lazy;

    .line 25
    sget-object v0, Lcom/amazon/kcp/util/StoreTabDeprecationUtils$isStoreTabDeprecationBetaWeblabOn$2;->INSTANCE:Lcom/amazon/kcp/util/StoreTabDeprecationUtils$isStoreTabDeprecationBetaWeblabOn$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/util/StoreTabDeprecationUtils;->isStoreTabDeprecationBetaWeblabOn$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final areStoreTabDeprecationWeblabsEnabled()Z
    .locals 1

    .line 48
    sget-object v0, Lcom/amazon/kcp/util/StoreTabDeprecationUtils;->INSTANCE:Lcom/amazon/kcp/util/StoreTabDeprecationUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/util/StoreTabDeprecationUtils;->isStoreTabLaunchWeblabOn()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/util/StoreTabDeprecationUtils;->INSTANCE:Lcom/amazon/kcp/util/StoreTabDeprecationUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/util/StoreTabDeprecationUtils;->isStoreTabExperimentWeblabOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isBetaBuildAndBetaWeblabEnabled()Z
    .locals 1

    .line 42
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/util/StoreTabDeprecationUtils;->INSTANCE:Lcom/amazon/kcp/util/StoreTabDeprecationUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/util/StoreTabDeprecationUtils;->isStoreTabDeprecationBetaWeblabOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isStoreTabDeprecated()Z
    .locals 1

    .line 36
    invoke-static {}, Lcom/amazon/kcp/util/StoreTabDeprecationUtils;->isBetaBuildAndBetaWeblabEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amazon/kcp/util/StoreTabDeprecationUtils;->areStoreTabDeprecationWeblabsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final isStoreTabDeprecationBetaWeblabOn()Z
    .locals 1

    sget-object v0, Lcom/amazon/kcp/util/StoreTabDeprecationUtils;->isStoreTabDeprecationBetaWeblabOn$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final isStoreTabExperimentWeblabOn()Z
    .locals 1

    sget-object v0, Lcom/amazon/kcp/util/StoreTabDeprecationUtils;->isStoreTabExperimentWeblabOn$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final isStoreTabLaunchWeblabOn()Z
    .locals 1

    sget-object v0, Lcom/amazon/kcp/util/StoreTabDeprecationUtils;->isStoreTabLaunchWeblabOn$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
