.class public final Lcom/amazon/kcp/debug/SCNFontsDownloadingUtils;
.super Ljava/lang/Object;
.source "SCNFontsDownloadingUtils.kt"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final WEBLAB_TREATMENT_ENABLED:Ljava/lang/String; = "T1"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lcom/amazon/kcp/debug/SCNFontsDownloadingUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/SCNFontsDownloadingUtils;-><init>()V

    .line 12
    const-class v0, Lcom/amazon/kcp/debug/SCNFontsDownloadingUtils;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(SCNFontsDownloadingUtils::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/debug/SCNFontsDownloadingUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final shouldUseAES()Z
    .locals 4

    .line 17
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    .line 18
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isChinaBuild()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isAesEnabledForKfcScnFont()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_3

    .line 19
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isChinaBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    return v2
.end method
