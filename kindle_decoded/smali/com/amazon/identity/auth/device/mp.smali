.class public abstract Lcom/amazon/identity/auth/device/mp;
.super Ljava/lang/Object;
.source "DCP"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aT(Landroid/content/Context;)Lcom/amazon/identity/auth/device/mp;
    .locals 2

    const-string v0, "PeriodicMetricsCollector"

    if-eqz p0, :cond_1

    .line 26
    invoke-static {p0}, Lcom/amazon/identity/auth/device/mn;->aQ(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    :try_start_0
    invoke-static {p0}, Lcom/amazon/identity/auth/device/mt;->aU(Landroid/content/Context;)Lcom/amazon/identity/auth/device/mt;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string v1, "Cannot create ThirdPartyPeriodicMetricsCollector"

    .line 34
    invoke-static {v0, v1, p0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/device/mn;->iP()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    :try_start_1
    invoke-static {p0}, Lcom/amazon/identity/auth/device/mj;->aL(Landroid/content/Context;)Lcom/amazon/identity/auth/device/mj;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    const-string v1, "Cannot create FireOSPeriodicMetricsCollector"

    .line 45
    invoke-static {v0, v1, p0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const-string p0, "Appropriate metrics component cannot be found"

    .line 50
    invoke-static {v0, p0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance p0, Lcom/amazon/identity/auth/device/mo;

    invoke-direct {p0}, Lcom/amazon/identity/auth/device/mo;-><init>()V

    return-object p0
.end method


# virtual methods
.method public abstract bA(Ljava/lang/String;)V
.end method

.method public abstract eL(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;
.end method
