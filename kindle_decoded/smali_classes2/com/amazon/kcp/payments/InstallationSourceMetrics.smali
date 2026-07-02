.class public final Lcom/amazon/kcp/payments/InstallationSourceMetrics;
.super Ljava/lang/Object;
.source "InstallationSourceMetrics.kt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/amazon/kcp/payments/InstallationSourceMetrics;

    invoke-direct {v0}, Lcom/amazon/kcp/payments/InstallationSourceMetrics;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final recordFastMetrics(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/amazon/kcp/payments/InstallationSourceMetricsImpl;

    invoke-direct {v0}, Lcom/amazon/kcp/payments/InstallationSourceMetricsImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/payments/InstallationSourceMetricsImpl;->reportInstallationSource(Landroid/content/Context;)V

    return-void
.end method
