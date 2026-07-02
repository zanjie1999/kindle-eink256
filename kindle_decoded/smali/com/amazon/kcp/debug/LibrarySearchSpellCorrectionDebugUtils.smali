.class public final Lcom/amazon/kcp/debug/LibrarySearchSpellCorrectionDebugUtils;
.super Ljava/lang/Object;
.source "LibrarySearchSpellCorrectionDebugUtils.kt"


# static fields
.field private static final CONTROL:Ljava/lang/String; = "C"

.field public static final INSTANCE:Lcom/amazon/kcp/debug/LibrarySearchSpellCorrectionDebugUtils;

.field private static final WEBLAB_TREATMENT:Ljava/lang/String; = "T1"

.field private static isLibrarySearchSpellCorrectionEnabled:Z

.field private static isLibrarySearchSpellCorrectionInControl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/amazon/kcp/debug/LibrarySearchSpellCorrectionDebugUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/LibrarySearchSpellCorrectionDebugUtils;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/LibrarySearchSpellCorrectionDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/LibrarySearchSpellCorrectionDebugUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isLibrarySearchSpellCorrectionEnabled()Z
    .locals 1

    .line 41
    sget-boolean v0, Lcom/amazon/kcp/debug/LibrarySearchSpellCorrectionDebugUtils;->isLibrarySearchSpellCorrectionEnabled:Z

    return v0
.end method

.method public static final isLibrarySearchSpellCorrectionInControl()Z
    .locals 1

    .line 50
    sget-boolean v0, Lcom/amazon/kcp/debug/LibrarySearchSpellCorrectionDebugUtils;->isLibrarySearchSpellCorrectionInControl:Z

    return v0
.end method

.method public static final recordWeblabTrigger()V
    .locals 2

    .line 58
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-nez v0, :cond_2

    .line 59
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "WAYFINDER_SPELL_CORRECTION_ANDROID_309553"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 60
    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->recordTrigger()V

    .line 61
    :cond_1
    const-class v0, Lcom/amazon/kcp/debug/LibrarySearchSpellCorrectionDebugUtils;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    :cond_2
    return-void
.end method


# virtual methods
.method public final initialize()V
    .locals 4

    .line 25
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

    const-string v2, "WAYFINDER_SPELL_CORRECTION_ANDROID_309553"

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 26
    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAssignment()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    const-string v3, "T1"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 27
    sput-boolean v3, Lcom/amazon/kcp/debug/LibrarySearchSpellCorrectionDebugUtils;->isLibrarySearchSpellCorrectionEnabled:Z

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    .line 28
    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAssignment()Ljava/lang/String;

    move-result-object v1

    :cond_3
    const-string v0, "C"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 29
    sput-boolean v3, Lcom/amazon/kcp/debug/LibrarySearchSpellCorrectionDebugUtils;->isLibrarySearchSpellCorrectionInControl:Z

    .line 32
    :cond_4
    :goto_2
    sget-boolean v0, Lcom/amazon/kcp/debug/LibrarySearchSpellCorrectionDebugUtils;->isLibrarySearchSpellCorrectionEnabled:Z

    if-nez v0, :cond_6

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :cond_6
    :goto_3
    sput-boolean v3, Lcom/amazon/kcp/debug/LibrarySearchSpellCorrectionDebugUtils;->isLibrarySearchSpellCorrectionEnabled:Z

    return-void
.end method
