.class public final Lcom/amazon/kcp/debug/RemoteLicenseReleaseDebugUtils;
.super Ljava/lang/Object;
.source "RemoteLicenseReleaseDebugUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/debug/RemoteLicenseReleaseDebugUtils;

.field private static final TAG:Ljava/lang/String;

.field private static isRemoteLicenseReleaseDebugFlagEnabled:Z

.field private static isRemoteLicenseReleaseGammaEndpointsDebugFlagEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lcom/amazon/kcp/debug/RemoteLicenseReleaseDebugUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/RemoteLicenseReleaseDebugUtils;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/RemoteLicenseReleaseDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/RemoteLicenseReleaseDebugUtils;

    .line 11
    const-class v0, Lcom/amazon/kcp/debug/RemoteLicenseReleaseDebugUtils;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(RemoteLicen\u2026seDebugUtils::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/debug/RemoteLicenseReleaseDebugUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isRemoteLicenseReleaseWeblabEnabled()Z
    .locals 3

    .line 42
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

    const-string v2, "KINDLE_ANDROID_LIBRARY_REMOTE_LICENSE_RELEASE_V2_343286"

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 43
    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object v1

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REMOTE_LICENSE_RELEASE_WEBLAB treatment : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_1

    .line 45
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v2, 0xa5d

    if-eq v0, v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "T1"

    .line 46
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


# virtual methods
.method public final isRemoteLicenseReleaseEnabled()Z
    .locals 1

    .line 39
    sget-boolean v0, Lcom/amazon/kcp/debug/RemoteLicenseReleaseDebugUtils;->isRemoteLicenseReleaseDebugFlagEnabled:Z

    if-nez v0, :cond_1

    .line 37
    invoke-direct {p0}, Lcom/amazon/kcp/debug/RemoteLicenseReleaseDebugUtils;->isRemoteLicenseReleaseWeblabEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

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

.method public final isRemoteLicenseReleaseGammaEndpointsDebugFlagEnabled()Z
    .locals 1

    .line 51
    sget-boolean v0, Lcom/amazon/kcp/debug/RemoteLicenseReleaseDebugUtils;->isRemoteLicenseReleaseGammaEndpointsDebugFlagEnabled:Z

    return v0
.end method
