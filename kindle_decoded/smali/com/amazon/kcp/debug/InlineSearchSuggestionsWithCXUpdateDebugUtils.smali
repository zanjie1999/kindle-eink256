.class public final Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;
.super Ljava/lang/Object;
.source "InlineSearchSuggestionsWithCXUpdateDebugUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;

.field private static final WEBLAB_TREATMENT:Ljava/lang/String; = "T1"

.field private static isInlineSearchSuggestionsWithCXUpdateEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getWeblab()Lcom/amazon/kindle/krx/mobileweblab/IWeblab;
    .locals 3

    .line 50
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Utils.getFactory()"

    if-eqz v0, :cond_0

    .line 51
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "WAYFINDER_INLINE_SEARCH_SUGGESTIONS_FOS_325785"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v1

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "WAYFINDER_INLINE_SEARCH_SUGGESTIONS_ANDROID_JANUARY_322333"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static final isInlineSearchSuggestionsWithCXUpdateEnabled()Z
    .locals 1

    .line 22
    sget-boolean v0, Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;->isInlineSearchSuggestionsWithCXUpdateEnabled:Z

    return v0
.end method

.method private final isInlineSearchSuggestionsWithCXUpdateWeblabEnabled()Z
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;->getWeblab()Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAssignment()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "T1"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final recordWeblabTrigger()V
    .locals 1

    .line 38
    sget-object v0, Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;->getWeblab()Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->recordTrigger()V

    .line 41
    const-class v0, Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public final initialize()V
    .locals 1

    .line 17
    sget-boolean v0, Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;->isInlineSearchSuggestionsWithCXUpdateEnabled:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;->isInlineSearchSuggestionsWithCXUpdateWeblabEnabled()Z

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
    sput-boolean v0, Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;->isInlineSearchSuggestionsWithCXUpdateEnabled:Z

    return-void
.end method
