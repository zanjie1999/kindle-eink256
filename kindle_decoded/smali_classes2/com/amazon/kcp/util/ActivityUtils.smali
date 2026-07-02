.class public final Lcom/amazon/kcp/util/ActivityUtils;
.super Ljava/lang/Object;
.source "ActivityUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final WINDOW_BACKGROUND_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    const-class v0, Lcom/amazon/kcp/util/ActivityUtils;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/util/ActivityUtils;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010054

    aput v2, v0, v1

    .line 19
    sput-object v0, Lcom/amazon/kcp/util/ActivityUtils;->WINDOW_BACKGROUND_ATTRS:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static ensureSafeWindowBackground(Landroid/app/Activity;)Z
    .locals 5

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/amazon/kcp/util/ActivityUtils;->WINDOW_BACKGROUND_ATTRS:[I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 41
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 43
    :try_start_1
    sget-object v3, Lcom/amazon/kcp/util/ActivityUtils;->TAG:Ljava/lang/String;

    const-string v4, "Error getting window background drawable"

    invoke-static {v3, v4, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v3, "UnsafeWindowBackground"

    sget-object v4, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v2, p0, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v1

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    throw p0

    :cond_0
    :goto_1
    const/4 p0, 0x1

    return p0
.end method
