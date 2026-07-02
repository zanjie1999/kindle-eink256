.class public final Lcom/amazon/kcp/debug/DownloadedFilterDebugUtils;
.super Ljava/lang/Object;
.source "DownloadedFilterDebugUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/debug/DownloadedFilterDebugUtils;

.field private static isDownloadedFilterDebugFlagEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/amazon/kcp/debug/DownloadedFilterDebugUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/DownloadedFilterDebugUtils;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/DownloadedFilterDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/DownloadedFilterDebugUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isDownloadedFilterEnabled()Z
    .locals 1

    .line 18
    sget-boolean v0, Lcom/amazon/kcp/debug/DownloadedFilterDebugUtils;->isDownloadedFilterDebugFlagEnabled:Z

    return v0
.end method

.method private final isDownloadedFilterWeblabEnabled()Z
    .locals 4

    .line 21
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

    const-string v2, "KINDLE_ANDROID_LIBRARY_352243"

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 23
    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const/4 v0, 0x0

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x43

    if-eq v2, v3, :cond_4

    const/16 v3, 0xa5d

    if-eq v2, v3, :cond_3

    goto :goto_1

    :cond_3
    const-string v2, "T1"

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const-string v2, "C"

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_5
    :goto_1
    return v0
.end method


# virtual methods
.method public final initialize()V
    .locals 1

    .line 14
    sget-boolean v0, Lcom/amazon/kcp/debug/DownloadedFilterDebugUtils;->isDownloadedFilterDebugFlagEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/kcp/debug/DownloadedFilterDebugUtils;->isDownloadedFilterWeblabEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/amazon/kcp/debug/DownloadedFilterDebugUtils;->isDownloadedFilterDebugFlagEnabled:Z

    return-void
.end method
