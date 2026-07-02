.class public final Lcom/amazon/kindle/persistence/AndroidSecureStorage$Companion;
.super Ljava/lang/Object;
.source "AndroidSecureStorage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/persistence/AndroidSecureStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/amazon/kindle/persistence/AndroidSecureStorage$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/content/Context;)Lcom/amazon/kindle/persistence/AndroidSecureStorage;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    :try_start_0
    new-instance v0, Lcom/amazon/kindle/persistence/AndroidSecureStorage;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/kindle/persistence/AndroidSecureStorage;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 93
    invoke-static {}, Lcom/amazon/kindle/persistence/AndroidSecureStorageKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create storage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v0, Lcom/amazon/kindle/persistence/SecureStorageCreationException;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/persistence/SecureStorageCreationException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public final generateErrorMetric(Lcom/amazon/kindle/persistence/SecureStorageCreationException;)Lcom/amazon/kindle/krx/metrics/MetricsData;
    .locals 4

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    new-instance v0, Lcom/amazon/kindle/krx/metrics/MetricsData;

    const-string v1, "AmazonKindle"

    const-string v2, "AndroidSecureStorageException"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExceptionEncountered:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Unknown"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    if-eqz p1, :cond_1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, v1

    :cond_1
    const-string v1, "ExceptionMessage"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    if-eqz p1, :cond_2

    .line 104
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    aget-object p1, p1, v1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "Unavailable"

    :goto_1
    const-string v1, "ExceptionTrace"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 105
    sget-object p1, Lcom/amazon/kindle/krx/metrics/MetricType;->CRITICAL:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setMetricType(Lcom/amazon/kindle/krx/metrics/MetricType;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    return-object v0
.end method
