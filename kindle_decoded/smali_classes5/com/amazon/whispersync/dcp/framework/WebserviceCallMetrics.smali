.class public final Lcom/amazon/whispersync/dcp/framework/WebserviceCallMetrics;
.super Ljava/lang/Object;
.source "WebserviceCallMetrics.java"


# static fields
.field private static final DEREGISTER_DEVICE:Ljava/lang/String; = "disownFiona"

.field private static final GET_NEW_DEVICE_CREDENTIALS:Ljava/lang/String; = "getNewDeviceCredentials"

.field private static final GET_TODO_ITEMS:Ljava/lang/String; = "getItems"

.field private static final POST_MESSAGES:Ljava/lang/String; = "PostMessages"

.field private static final REGISTER_ASSOCIATED_DEVICE:Ljava/lang/String; = "registerAssociatedDevice"

.field private static final REGISTER_DEVICE:Ljava/lang/String; = "registerDevice"

.field private static final REGISTER_DEVICE_WITH_TOKEN:Ljava/lang/String; = "registerDeviceWithToken"

.field private static final REMOVE_TODO_ITEMS:Ljava/lang/String; = "removeItems"

.field private static final RENAME_DEVICE:Ljava/lang/String; = "renameFiona"

.field private static final UNKNOWN_WEBSERVICE:Ljava/lang/String; = "UnkownWebservice"

.field private static final UPLOAD_DET_LOG:Ljava/lang/String; = "DETLogServlet"

.field private static final UPLOAD_MESSAGE_LOG:Ljava/lang/String; = "MessageLogServlet"

.field private static sCollector:Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;

.field private static sWebServiceCallTimer:Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTimer(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/metrics/MetricsTimer;
    .locals 3

    .line 38
    new-instance v0, Lcom/amazon/whispersync/dcp/metrics/MetricsTimer;

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/WebserviceCallMetrics;->sCollector:Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;

    sget-object v2, Lcom/amazon/whispersync/dcp/framework/WebserviceCallMetrics;->sWebServiceCallTimer:Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;

    invoke-static {p0}, Lcom/amazon/whispersync/dcp/framework/WebserviceCallMetrics;->getTimerNameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/amazon/whispersync/dcp/metrics/MetricsTimer;-><init>(Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getTimerNameFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "UnkownWebservice"

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "disownFiona"

    .line 48
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    const-string v1, "getNewDeviceCredentials"

    .line 52
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    const-string v1, "getItems"

    .line 56
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    :cond_3
    const-string v1, "PostMessages"

    .line 60
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "registerAssociatedDevice"

    .line 64
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-object v1

    :cond_5
    const-string/jumbo v1, "registerDevice"

    .line 68
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_6
    const-string/jumbo v1, "registerDeviceWithToken"

    .line 72
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    return-object v1

    :cond_7
    const-string/jumbo v1, "renameFiona"

    .line 76
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    return-object v1

    :cond_8
    const-string/jumbo v1, "removeItems"

    .line 80
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    return-object v1

    :cond_9
    const-string v1, "DETLogServlet"

    .line 84
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    return-object v1

    :cond_a
    const-string v1, "MessageLogServlet"

    .line 88
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_b

    return-object v1

    :cond_b
    return-object v0
.end method

.method public static init(Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;)V
    .locals 3

    .line 32
    sput-object p0, Lcom/amazon/whispersync/dcp/framework/WebserviceCallMetrics;->sCollector:Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;

    .line 33
    new-instance p0, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;

    const-string v0, "DCP"

    const-string v1, "WebserviceCall"

    const-string v2, "WebserviceCallTime"

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lcom/amazon/whispersync/dcp/framework/WebserviceCallMetrics;->sWebServiceCallTimer:Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;

    return-void
.end method
