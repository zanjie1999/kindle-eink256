.class public final Lcom/amazon/kcp/debug/DeleteBooksFromAccountDebugUtils;
.super Ljava/lang/Object;
.source "DeleteBooksFromAccountDebugUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/debug/DeleteBooksFromAccountDebugUtils;

.field private static isDeleteBooksFromAccountDebugFlagEnabled:Z

.field private static shouldShowPermanentlyDeleteString:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/amazon/kcp/debug/DeleteBooksFromAccountDebugUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/DeleteBooksFromAccountDebugUtils;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/DeleteBooksFromAccountDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/DeleteBooksFromAccountDebugUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isDeleteBookFromAccountWeblabEnabled()Z
    .locals 4

    .line 44
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

    const-string v2, "KINDLE_ANDROID_LIBRARY_DELETE_FROM_LIBRARY_275852"

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 45
    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v2, 0xa5d

    const/4 v3, 0x1

    if-eq v0, v2, :cond_4

    const/16 v2, 0xa5e

    if-eq v0, v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "T2"

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 48
    sput-boolean v3, Lcom/amazon/kcp/debug/DeleteBooksFromAccountDebugUtils;->shouldShowPermanentlyDeleteString:Z

    return v3

    :cond_4
    const-string v0, "T1"

    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v3

    :cond_5
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static final isDeleteBooksFromAccountEnabled()Z
    .locals 2

    .line 29
    sget-object v0, Lcom/amazon/kcp/debug/DeleteBooksFromAccountDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/DeleteBooksFromAccountDebugUtils;

    .line 28
    invoke-direct {v0}, Lcom/amazon/kcp/debug/DeleteBooksFromAccountDebugUtils;->isSupportedMarketplace()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    const-string v1, "Utils.getFactory().applicationCapabilities"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isInDemoMode()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazon/kcp/debug/DeleteBooksFromAccountDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/DeleteBooksFromAccountDebugUtils;

    .line 29
    invoke-direct {v0}, Lcom/amazon/kcp/debug/DeleteBooksFromAccountDebugUtils;->isDeleteBookFromAccountWeblabEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/amazon/kcp/debug/DeleteBooksFromAccountDebugUtils;->isDeleteBooksFromAccountDebugFlagEnabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isSupportedMarketplace()Z
    .locals 5

    .line 35
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getUserPFM()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 37
    sget-object v4, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v4}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    sget-object v4, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v4}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static final shouldShowPermanentlyDeleteString()Z
    .locals 1

    .line 32
    sget-boolean v0, Lcom/amazon/kcp/debug/DeleteBooksFromAccountDebugUtils;->shouldShowPermanentlyDeleteString:Z

    return v0
.end method


# virtual methods
.method public final initialize()V
    .locals 1

    .line 19
    sget-boolean v0, Lcom/amazon/kcp/debug/DeleteBooksFromAccountDebugUtils;->isDeleteBooksFromAccountDebugFlagEnabled:Z

    sput-boolean v0, Lcom/amazon/kcp/debug/DeleteBooksFromAccountDebugUtils;->isDeleteBooksFromAccountDebugFlagEnabled:Z

    return-void
.end method
