.class public final Lcom/amazon/kindle/network/NetworkProperties$FACTORY;
.super Ljava/lang/Object;
.source "NetworkProperties.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/network/NetworkProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FACTORY"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNetworkProperties.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkProperties.kt\ncom/amazon/kindle/network/NetworkProperties$FACTORY\n+ 2 Retry.kt\ncom/amazon/kindle/util/RetryKt\n*L\n1#1,105:1\n94#2,16:106\n*E\n*S KotlinDebug\n*F\n+ 1 NetworkProperties.kt\ncom/amazon/kindle/network/NetworkProperties$FACTORY\n*L\n55#1,16:106\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/amazon/kindle/network/NetworkProperties$FACTORY;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Landroid/net/ConnectivityManager;)Lcom/amazon/kindle/network/NetworkProperties;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "NetworkProperties"

    const-string v0, "the network connectivityManager is null"

    .line 84
    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/amazon/kindle/network/NetworkProperties;->access$getNO_NETWORK$cp()Lcom/amazon/kindle/network/NetworkProperties;

    move-result-object p1

    return-object p1

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v0, "connectivityMgr.activeNe\u2026Info ?: return NO_NETWORK"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    .line 92
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x7

    if-eq p1, v2, :cond_3

    const/16 v2, 0x9

    if-eq p1, v2, :cond_2

    const/16 v2, 0x11

    if-eq p1, v2, :cond_1

    .line 101
    new-instance p1, Lcom/amazon/kindle/network/NetworkProperties;

    sget-object v0, Lcom/amazon/kindle/network/TransportType$Other;->INSTANCE:Lcom/amazon/kindle/network/TransportType$Other;

    invoke-direct {p1, v1, v0}, Lcom/amazon/kindle/network/NetworkProperties;-><init>(ZLcom/amazon/kindle/network/TransportType;)V

    goto :goto_0

    .line 100
    :cond_1
    new-instance p1, Lcom/amazon/kindle/network/NetworkProperties;

    sget-object v1, Lcom/amazon/kindle/network/TransportType$Vpn;->INSTANCE:Lcom/amazon/kindle/network/TransportType$Vpn;

    invoke-direct {p1, v0, v1}, Lcom/amazon/kindle/network/NetworkProperties;-><init>(ZLcom/amazon/kindle/network/TransportType;)V

    goto :goto_0

    .line 96
    :cond_2
    new-instance p1, Lcom/amazon/kindle/network/NetworkProperties;

    .line 98
    sget-object v1, Lcom/amazon/kindle/network/TransportType$Ethernet;->INSTANCE:Lcom/amazon/kindle/network/TransportType$Ethernet;

    .line 96
    invoke-direct {p1, v0, v1}, Lcom/amazon/kindle/network/NetworkProperties;-><init>(ZLcom/amazon/kindle/network/TransportType;)V

    goto :goto_0

    .line 95
    :cond_3
    new-instance p1, Lcom/amazon/kindle/network/NetworkProperties;

    sget-object v1, Lcom/amazon/kindle/network/TransportType$Bluetooth;->INSTANCE:Lcom/amazon/kindle/network/TransportType$Bluetooth;

    invoke-direct {p1, v0, v1}, Lcom/amazon/kindle/network/NetworkProperties;-><init>(ZLcom/amazon/kindle/network/TransportType;)V

    goto :goto_0

    .line 93
    :cond_4
    new-instance p1, Lcom/amazon/kindle/network/NetworkProperties;

    sget-object v1, Lcom/amazon/kindle/network/TransportType$WiFi;->INSTANCE:Lcom/amazon/kindle/network/TransportType$WiFi;

    invoke-direct {p1, v0, v1}, Lcom/amazon/kindle/network/NetworkProperties;-><init>(ZLcom/amazon/kindle/network/TransportType;)V

    goto :goto_0

    .line 94
    :cond_5
    new-instance p1, Lcom/amazon/kindle/network/NetworkProperties;

    sget-object v1, Lcom/amazon/kindle/network/TransportType$Wan;->INSTANCE:Lcom/amazon/kindle/network/TransportType$Wan;

    invoke-direct {p1, v0, v1}, Lcom/amazon/kindle/network/NetworkProperties;-><init>(ZLcom/amazon/kindle/network/TransportType;)V

    :goto_0
    return-object p1

    .line 87
    :cond_6
    invoke-static {}, Lcom/amazon/kindle/network/NetworkProperties;->access$getNO_NETWORK$cp()Lcom/amazon/kindle/network/NetworkProperties;

    move-result-object p1

    return-object p1
.end method

.method public final buildM(Landroid/net/ConnectivityManager;)Lcom/amazon/kindle/network/NetworkProperties;
    .locals 14

    const-string v0, "NetworkProperties"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "the network connectivityManager is null"

    .line 43
    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance p1, Lcom/amazon/kindle/network/NetworkProperties;

    sget-object v0, Lcom/amazon/kindle/network/TransportType$None;->INSTANCE:Lcom/amazon/kindle/network/TransportType$None;

    invoke-direct {p1, v1, v0}, Lcom/amazon/kindle/network/NetworkProperties;-><init>(ZLcom/amazon/kindle/network/TransportType;)V

    return-object p1

    .line 46
    :cond_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    .line 52
    :try_start_0
    new-instance v13, Lcom/amazon/kindle/util/RetryConfig;

    const/4 v4, 0x2

    const-wide/16 v5, 0x14

    .line 54
    sget-object v7, Lcom/amazon/kindle/util/RetryConfig$BackOff;->NONE:Lcom/amazon/kindle/util/RetryConfig$BackOff;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x18

    const/4 v12, 0x0

    move-object v3, v13

    .line 52
    invoke-direct/range {v3 .. v12}, Lcom/amazon/kindle/util/RetryConfig;-><init>(IJLcom/amazon/kindle/util/RetryConfig$BackOff;JLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 106
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 107
    invoke-virtual {v13}, Lcom/amazon/kindle/util/RetryConfig;->getMaxAttempts()I

    move-result v4
    :try_end_0
    .catch Lcom/amazon/kindle/util/RetriesExceededException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x1

    if-gt v5, v4, :cond_b

    const/4 v6, 0x1

    .line 56
    :goto_0
    :try_start_1
    invoke-virtual {p1, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v7

    if-eqz v7, :cond_9

    const-string v8, "connectivityMgr.getNetwo\u2026ork) ?: return NO_NETWORK"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v13}, Lcom/amazon/kindle/util/RetryConfig;->getAcceptancePredicate()Lkotlin/jvm/functions/Function1;

    move-result-object v8

    invoke-interface {v8, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v8, :cond_a

    const/16 p1, 0xc

    .line 59
    :try_start_2
    invoke-virtual {v7, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    const/16 v2, 0x10

    .line 60
    invoke-virtual {v7, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz p1, :cond_1

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "the network is not connected, capability Internet: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " capability validated: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    :cond_2
    invoke-virtual {v7, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/amazon/kindle/network/NetworkProperties;

    sget-object v1, Lcom/amazon/kindle/network/TransportType$WiFi;->INSTANCE:Lcom/amazon/kindle/network/TransportType$WiFi;

    invoke-direct {p1, v3, v1}, Lcom/amazon/kindle/network/NetworkProperties;-><init>(ZLcom/amazon/kindle/network/TransportType;)V

    goto :goto_2

    .line 68
    :cond_3
    invoke-virtual {v7, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lcom/amazon/kindle/network/NetworkProperties;

    sget-object v1, Lcom/amazon/kindle/network/TransportType$Wan;->INSTANCE:Lcom/amazon/kindle/network/TransportType$Wan;

    invoke-direct {p1, v3, v1}, Lcom/amazon/kindle/network/NetworkProperties;-><init>(ZLcom/amazon/kindle/network/TransportType;)V

    goto :goto_2

    :cond_4
    const/4 p1, 0x2

    .line 69
    invoke-virtual {v7, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lcom/amazon/kindle/network/NetworkProperties;

    sget-object v1, Lcom/amazon/kindle/network/TransportType$Bluetooth;->INSTANCE:Lcom/amazon/kindle/network/TransportType$Bluetooth;

    invoke-direct {p1, v3, v1}, Lcom/amazon/kindle/network/NetworkProperties;-><init>(ZLcom/amazon/kindle/network/TransportType;)V

    goto :goto_2

    :cond_5
    const/4 p1, 0x3

    .line 70
    invoke-virtual {v7, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Lcom/amazon/kindle/network/NetworkProperties;

    sget-object v1, Lcom/amazon/kindle/network/TransportType$Ethernet;->INSTANCE:Lcom/amazon/kindle/network/TransportType$Ethernet;

    invoke-direct {p1, v3, v1}, Lcom/amazon/kindle/network/NetworkProperties;-><init>(ZLcom/amazon/kindle/network/TransportType;)V

    goto :goto_2

    :cond_6
    const/4 p1, 0x4

    .line 71
    invoke-virtual {v7, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Lcom/amazon/kindle/network/NetworkProperties;

    sget-object v1, Lcom/amazon/kindle/network/TransportType$Vpn;->INSTANCE:Lcom/amazon/kindle/network/TransportType$Vpn;

    invoke-direct {p1, v3, v1}, Lcom/amazon/kindle/network/NetworkProperties;-><init>(ZLcom/amazon/kindle/network/TransportType;)V

    goto :goto_2

    :cond_7
    const/4 p1, 0x6

    .line 72
    invoke-virtual {v7, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, Lcom/amazon/kindle/network/NetworkProperties;

    sget-object v1, Lcom/amazon/kindle/network/TransportType$LoWPAN;->INSTANCE:Lcom/amazon/kindle/network/TransportType$LoWPAN;

    invoke-direct {p1, v3, v1}, Lcom/amazon/kindle/network/NetworkProperties;-><init>(ZLcom/amazon/kindle/network/TransportType;)V

    goto :goto_2

    .line 73
    :cond_8
    new-instance p1, Lcom/amazon/kindle/network/NetworkProperties;

    sget-object v1, Lcom/amazon/kindle/network/TransportType$Other;->INSTANCE:Lcom/amazon/kindle/network/TransportType$Other;

    invoke-direct {p1, v5, v1}, Lcom/amazon/kindle/network/NetworkProperties;-><init>(ZLcom/amazon/kindle/network/TransportType;)V
    :try_end_2
    .catch Lcom/amazon/kindle/util/RetriesExceededException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    return-object p1

    .line 56
    :cond_9
    :try_start_3
    invoke-static {}, Lcom/amazon/kindle/network/NetworkProperties;->access$getNO_NETWORK$cp()Lcom/amazon/kindle/network/NetworkProperties;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object p1

    :catch_0
    move-exception v7

    .line 114
    :try_start_4
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_a
    invoke-virtual {v13, v6}, Lcom/amazon/kindle/util/RetryConfig;->getDelay(I)J

    move-result-wide v7

    .line 118
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    if-eq v6, v4, :cond_b

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 121
    :cond_b
    new-instance p1, Lcom/amazon/kindle/util/RetriesExceededException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "All "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/amazon/kindle/util/RetryConfig;->getMaxAttempts()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " attempts failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, v3}, Lcom/amazon/kindle/util/RetriesExceededException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw p1
    :try_end_4
    .catch Lcom/amazon/kindle/util/RetriesExceededException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network capability retrieving failed with exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/util/RetriesExceededException;->getExceptionsCaught()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". This is a known issue on Anroid 11 https://issuetracker.google.com/issues/175055271?pli=1."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "ConnectivityManagerNetworkPropertyRetrieving"

    const-string v1, "failure"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/amazon/kindle/network/NetworkProperties;->access$getNO_NETWORK$cp()Lcom/amazon/kindle/network/NetworkProperties;

    move-result-object p1

    return-object p1
.end method
