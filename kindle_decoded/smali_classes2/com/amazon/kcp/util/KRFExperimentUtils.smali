.class public final Lcom/amazon/kcp/util/KRFExperimentUtils;
.super Ljava/lang/Object;
.source "KRFExperimentUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/util/KRFExperimentUtils;

.field private static final isKRFLibWeblabEnabled$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/amazon/kcp/util/KRFExperimentUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/util/KRFExperimentUtils;-><init>()V

    sput-object v0, Lcom/amazon/kcp/util/KRFExperimentUtils;->INSTANCE:Lcom/amazon/kcp/util/KRFExperimentUtils;

    .line 14
    sget-object v0, Lcom/amazon/kcp/util/KRFExperimentUtils$isKRFLibWeblabEnabled$2;->INSTANCE:Lcom/amazon/kcp/util/KRFExperimentUtils$isKRFLibWeblabEnabled$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/util/KRFExperimentUtils;->isKRFLibWeblabEnabled$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isKRFLibLoadWeblabEnabled()Z
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/kcp/util/KRFExperimentUtils;->INSTANCE:Lcom/amazon/kcp/util/KRFExperimentUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/util/KRFExperimentUtils;->isKRFLibWeblabEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

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

.method private final isKRFLibWeblabEnabled()Z
    .locals 1

    sget-object v0, Lcom/amazon/kcp/util/KRFExperimentUtils;->isKRFLibWeblabEnabled$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
