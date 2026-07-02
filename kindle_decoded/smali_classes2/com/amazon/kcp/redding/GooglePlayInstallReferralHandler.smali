.class public final Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;
.super Ljava/lang/Object;
.source "GooglePlayInstallReferralHandler.kt"


# instance fields
.field private final context:Landroid/content/Context;

.field private final installReferrerClientFactory:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/content/Context;",
            "Lcom/android/installreferrer/api/InstallReferrerClient;",
            ">;"
        }
    .end annotation
.end field

.field private final metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

.field private final runner:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/kindle/krx/metrics/IMetricsManager;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/Context;",
            "+",
            "Lcom/android/installreferrer/api/InstallReferrerClient;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricsManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runner"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installReferrerClientFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    iput-object p3, p0, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;->runner:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;->installReferrerClientFactory:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 56
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p2

    const-string p6, "MetricsManager.getInstance()"

    invoke-static {p2, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 57
    sget-object p3, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler$1;->INSTANCE:Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler$1;

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 60
    new-instance p4, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler$2;

    invoke-direct {p4, p1}, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler$2;-><init>(Landroid/content/Context;)V

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;)Landroid/content/Context;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getInstallReferrerClientFactory$p(Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;->installReferrerClientFactory:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getMetricsManager$p(Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;)Lcom/amazon/kindle/krx/metrics/IMetricsManager;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    return-object p0
.end method


# virtual methods
.method public final checkAndHandleReferral()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;->runner:Lkotlin/jvm/functions/Function1;

    new-instance v1, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler$checkAndHandleReferral$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler$checkAndHandleReferral$1;-><init>(Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final hasApiBeenCalled$ThirdPartyCore_release()Z
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "InstallReferralPrefs"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "playReferralApiHasBeenCalled"

    .line 88
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final hasStoredReferrer$ThirdPartyCore_release()Z
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;->context:Landroid/content/Context;

    const-string v1, "InstallReferralPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "referrer"

    .line 83
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
