.class public final Lcom/amazon/kcp/debug/LibraryAZScrubberDebugUtils;
.super Ljava/lang/Object;
.source "LibraryAZScrubberDebugUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/debug/LibraryAZScrubberDebugUtils;

.field private static final TAG:Ljava/lang/String;

.field private static isLibraryAZScrubberDebugFlagEnabled:Z

.field private static isLibraryAZScrubberEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Lcom/amazon/kcp/debug/LibraryAZScrubberDebugUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/LibraryAZScrubberDebugUtils;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/LibraryAZScrubberDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/LibraryAZScrubberDebugUtils;

    .line 10
    const-class v0, Lcom/amazon/kcp/debug/LibraryAZScrubberDebugUtils;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(LibraryAZSc\u2026erDebugUtils::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/debug/LibraryAZScrubberDebugUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isLibraryAZScrubberWeblabEnabled()Z
    .locals 5

    .line 44
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "KINDLE_ANDROID_LIBRARY_AZ_SCRUBBER_LAUNCH_347603"

    invoke-interface {v0, v3}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 45
    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 46
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LIBRARY_AZ_SCRUBBER_LAUNCH_WEBLAB treatment : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v3, "T1"

    .line 47
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    .line 49
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "KINDLE_ANDROID_LIBRARY_AZ_SCRUBBER_346734"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_3

    .line 50
    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object v2

    .line 51
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LIBRARY_AZ_SCRUBBER_WEBLAB treatment : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_3

    .line 52
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xa5d

    if-eq v0, v1, :cond_5

    goto :goto_3

    .line 53
    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v4, 0x1

    :cond_6
    :goto_3
    return v4
.end method


# virtual methods
.method public final initialize()V
    .locals 1

    .line 34
    sget-boolean v0, Lcom/amazon/kcp/debug/LibraryAZScrubberDebugUtils;->isLibraryAZScrubberDebugFlagEnabled:Z

    if-nez v0, :cond_0

    .line 33
    invoke-direct {p0}, Lcom/amazon/kcp/debug/LibraryAZScrubberDebugUtils;->isLibraryAZScrubberWeblabEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/amazon/kcp/debug/LibraryAZScrubberDebugUtils;->isLibraryAZScrubberEnabled:Z

    return-void
.end method

.method public final isLibraryAZScrubberEnabled()Z
    .locals 1

    .line 40
    sget-boolean v0, Lcom/amazon/kcp/debug/LibraryAZScrubberDebugUtils;->isLibraryAZScrubberEnabled:Z

    return v0
.end method
