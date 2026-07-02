.class public Lcom/amazon/client/metrics/thirdparty/MetricsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MetricsBroadcastReceiver.java"


# static fields
.field private static final log:Lcom/amazon/dp/logger/DPLogger;

.field private static sUploadIntentListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/client/metrics/thirdparty/UploadIntentListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/amazon/dp/logger/DPLogger;

    const-string v1, "MetricsBroadcastReceiver"

    invoke-direct {v0, v1}, Lcom/amazon/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/MetricsBroadcastReceiver;->log:Lcom/amazon/dp/logger/DPLogger;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/MetricsBroadcastReceiver;->sUploadIntentListenerList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method protected static addUploadIntentListener(Lcom/amazon/client/metrics/thirdparty/UploadIntentListener;)V
    .locals 1

    .line 53
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/MetricsBroadcastReceiver;->sUploadIntentListenerList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static shutdown()V
    .locals 1

    .line 60
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/MetricsBroadcastReceiver;->sUploadIntentListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "com.amazon.intent.action.UPLOAD_METRICS"

    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string/jumbo v3, "onReceive"

    if-eqz v1, :cond_2

    const-string p2, "amazon.permission.UPLOAD_METRICS"

    .line 38
    invoke-virtual {p1, p2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    .line 39
    sget-object p1, Lcom/amazon/client/metrics/thirdparty/MetricsBroadcastReceiver;->log:Lcom/amazon/dp/logger/DPLogger;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "Metrics upload permission denied."

    invoke-virtual {p1, v3, v0, p2}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 43
    :cond_1
    sget-object p1, Lcom/amazon/client/metrics/thirdparty/MetricsBroadcastReceiver;->log:Lcom/amazon/dp/logger/DPLogger;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "Upload metrics intent received. Notifying listeners."

    invoke-virtual {p1, v3, v0, p2}, Lcom/amazon/dp/logger/DPLoggerBase;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    sget-object p1, Lcom/amazon/client/metrics/thirdparty/MetricsBroadcastReceiver;->sUploadIntentListenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/client/metrics/thirdparty/UploadIntentListener;

    .line 45
    invoke-interface {p2}, Lcom/amazon/client/metrics/thirdparty/UploadIntentListener;->onUploadIntentReceived()V

    goto :goto_1

    .line 48
    :cond_2
    sget-object p1, Lcom/amazon/client/metrics/thirdparty/MetricsBroadcastReceiver;->log:Lcom/amazon/dp/logger/DPLogger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, " intent: "

    aput-object v4, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 p2, 0x2

    const-string v2, " action: "

    aput-object v2, v1, p2

    const/4 p2, 0x3

    aput-object v0, v1, p2

    const-string p2, "Received unexpected intent."

    invoke-virtual {p1, v3, p2, v1}, Lcom/amazon/dp/logger/DPLoggerBase;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
