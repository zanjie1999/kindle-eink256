.class public Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder;
.super Ljava/lang/Object;
.source "FastMetricsRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;,
        Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$SingletonHelper;
    }
.end annotation


# static fields
.field private static final EVENT:Ljava/lang/String; = "event"

.field private static final TAG:Ljava/lang/String; = "com.amazon.bookwizard.util.fastmetrics.FastMetricsRecorder"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$1;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder;
    .locals 1

    .line 24
    invoke-static {}, Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$SingletonHelper;->access$100()Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder;

    move-result-object v0

    return-object v0
.end method

.method private recordAction(Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;)V
    .locals 3

    .line 46
    :try_start_0
    const-class v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v0, :cond_0

    const-string v1, "kindle_app_events"

    const/4 v2, 0x0

    .line 48
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v1

    const-string v2, "event"

    .line 50
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 51
    invoke-interface {v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 54
    sget-object v0, Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder;->TAG:Ljava/lang/String;

    const-string v1, "Exception while attempting to instrument BookWizard event metric using Fast Metrics"

    invoke-static {v0, v1, p1}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public recordBookWizardCompleted()V
    .locals 1

    .line 41
    sget-object v0, Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;->BOOKWIZARD_COMPLETED:Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;

    invoke-direct {p0, v0}, Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder;->recordAction(Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;)V

    return-void
.end method

.method public recordBookWizardShown()V
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;->BOOKWIZARD_SHOWN:Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;

    invoke-direct {p0, v0}, Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder;->recordAction(Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;)V

    return-void
.end method

.method public recordBookWizardStarted()V
    .locals 1

    .line 38
    sget-object v0, Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;->BOOKWIZARD_STARTED:Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;

    invoke-direct {p0, v0}, Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder;->recordAction(Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;)V

    return-void
.end method
