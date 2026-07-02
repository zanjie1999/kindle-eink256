.class public final Lcom/amazon/kcp/store/StoreDomainUtils;
.super Ljava/lang/Object;
.source "StoreDomainUtils.kt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/amazon/kcp/store/StoreDomainUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/store/StoreDomainUtils;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getOverriddenStoreDomainUrl()Ljava/lang/String;
    .locals 2

    .line 18
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->getStoreDomain()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DebugUtils.getStoreDomain()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getOverriddenStoreWeblabs()Ljava/lang/String;
    .locals 2

    .line 21
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->getStoreWeblabs()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DebugUtils.getStoreWeblabs()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final isStoreDomainOverridden()Z
    .locals 1

    .line 15
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->getStoreDomainOverridden()Z

    move-result v0

    return v0
.end method
