.class public final Lcom/amazon/kcp/reader/readingprogress/ReadingProgressUtils;
.super Ljava/lang/Object;
.source "ReadingProgressUtils.kt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressUtils;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isMrprBottomSheetFirstTreatmentEnabled()Z
    .locals 5

    .line 18
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

    const-string v2, "KINDLE_KFA_SYNC_CX_MRPR_BOTTOM_SHEET_295371"

    .line 19
    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 21
    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 23
    :goto_1
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isMrprBottomSheetEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const/4 v2, 0x2

    const-string v4, "T1"

    invoke-static {v0, v4, v3, v2, v1}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    return v3
.end method
