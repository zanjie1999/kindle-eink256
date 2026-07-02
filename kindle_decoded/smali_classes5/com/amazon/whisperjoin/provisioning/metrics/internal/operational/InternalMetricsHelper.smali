.class public Lcom/amazon/whisperjoin/provisioning/metrics/internal/operational/InternalMetricsHelper;
.super Ljava/lang/Object;
.source "InternalMetricsHelper.java"


# static fields
.field private static final APP_CLIENT_NAME_METRIC:Ljava/lang/String; = "AppClient"

.field private static final APP_CLIENT_VERSION:Ljava/lang/String; = "AppVersion"

.field private static final TAG:Ljava/lang/String; = "com.amazon.whisperjoin.provisioning.metrics.internal.operational.InternalMetricsHelper"

.field private static final TARGET_DEVICE_PIVOT:Ljava/lang/String; = "TargetDevice"

.field private static sMetricsFactory:Lcom/amazon/client/metrics/common/MetricsFactory;

.field private static final sPivotMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/provisioning/metrics/internal/operational/InternalMetricsHelper;->sPivotMap:Ljava/util/Map;

    return-void
.end method

.method private static addAppVersionPivot(Landroid/content/Context;)V
    .locals 2

    .line 67
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    const-string v0, "AppVersion"

    .line 68
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/amazon/whisperjoin/provisioning/metrics/internal/operational/InternalMetricsHelper;->addPivot(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static addPivot(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 38
    sget-object v0, Lcom/amazon/whisperjoin/provisioning/metrics/internal/operational/InternalMetricsHelper;->sPivotMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static init(Landroid/content/Context;Lcom/amazon/client/metrics/common/MetricsFactory;)V
    .locals 1

    .line 32
    sput-object p1, Lcom/amazon/whisperjoin/provisioning/metrics/internal/operational/InternalMetricsHelper;->sMetricsFactory:Lcom/amazon/client/metrics/common/MetricsFactory;

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppClient"

    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/provisioning/metrics/internal/operational/InternalMetricsHelper;->addPivot(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {p0}, Lcom/amazon/whisperjoin/provisioning/metrics/internal/operational/InternalMetricsHelper;->addAppVersionPivot(Landroid/content/Context;)V

    return-void
.end method
