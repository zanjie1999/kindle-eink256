.class public final Lcom/amazon/kcp/debug/InProgressFilterDebugUtils;
.super Ljava/lang/Object;
.source "InProgressFilterDebugUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/debug/InProgressFilterDebugUtils;

.field private static final WEBLAB_IN_PROGRESS_FILTER_ENABLED_TREATMENT:Ljava/lang/String; = "T1"

.field private static isInProgressFilterEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/amazon/kcp/debug/InProgressFilterDebugUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/InProgressFilterDebugUtils;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/InProgressFilterDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/InProgressFilterDebugUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final initializeInProgressFilterWeblab()V
    .locals 1

    .line 20
    sget-boolean v0, Lcom/amazon/kcp/debug/InProgressFilterDebugUtils;->isInProgressFilterEnabled:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazon/kcp/debug/InProgressFilterDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/InProgressFilterDebugUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/InProgressFilterDebugUtils;->isInProgressWeblabEnabled()Z

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
    sput-boolean v0, Lcom/amazon/kcp/debug/InProgressFilterDebugUtils;->isInProgressFilterEnabled:Z

    return-void
.end method

.method public static final isInProgressFilterEnabled()Z
    .locals 1

    .line 31
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/amazon/kcp/debug/InProgressFilterDebugUtils;->isInProgressFilterEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isInProgressWeblabEnabled()Z
    .locals 3

    .line 35
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "COMICS_ANDROID_IN_PROGRESS_FILTER_397982"

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 37
    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v2, 0xa5d

    if-eq v0, v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "T1"

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x0

    :goto_2
    return v0
.end method
