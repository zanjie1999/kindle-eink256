.class public final Lcom/amazon/kindle/krx/mobileweblab/WeblabManagerFactory$Companion;
.super Ljava/lang/Object;
.source "WeblabManagerFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/mobileweblab/WeblabManagerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/amazon/kindle/krx/mobileweblab/WeblabManagerFactory$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getWeblabManager(Lcom/amazon/kcp/application/IKindleObjectFactory;Lcom/amazon/kindle/krx/metrics/IMetricsManager;)Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;
    .locals 4

    const-string v0, "factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricsManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;

    new-instance v1, Lcom/amazon/kindle/mobileweblab/WeblabSessionConfigurationFetcher;

    .line 17
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 16
    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/mobileweblab/WeblabSessionConfigurationFetcher;-><init>(Lcom/amazon/kcp/application/IAuthenticationManager;Landroid/content/Context;)V

    .line 18
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 16
    invoke-direct {v0, v1, v2, p2}, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;-><init>(Lcom/amazon/kindle/mobileweblab/WeblabSessionConfigurationFetcher;Landroid/content/Context;Lcom/amazon/kindle/krx/metrics/IMetricsManager;)V

    .line 19
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 20
    new-instance p2, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "factory.context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1, v0}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;)V

    move-object v0, p2

    :cond_0
    return-object v0
.end method
