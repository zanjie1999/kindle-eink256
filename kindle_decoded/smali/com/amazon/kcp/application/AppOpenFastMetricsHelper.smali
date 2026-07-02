.class public final Lcom/amazon/kcp/application/AppOpenFastMetricsHelper;
.super Ljava/lang/Object;
.source "AppOpenFastMetrics.kt"


# static fields
.field private static instance:Lcom/amazon/kcp/application/AppOpenFastMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/amazon/kcp/application/AppOpenFastMetricsHelper;

    invoke-direct {v0}, Lcom/amazon/kcp/application/AppOpenFastMetricsHelper;-><init>()V

    .line 17
    new-instance v0, Lcom/amazon/kcp/application/AppOpenFastMetricsImpl;

    invoke-direct {v0}, Lcom/amazon/kcp/application/AppOpenFastMetricsImpl;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/AppOpenFastMetricsHelper;->instance:Lcom/amazon/kcp/application/AppOpenFastMetrics;

    .line 20
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/AppOpenFastMetricsHelper;->instance:Lcom/amazon/kcp/application/AppOpenFastMetrics;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/amazon/kcp/application/AppOpenFastMetrics;
    .locals 1

    .line 30
    sget-object v0, Lcom/amazon/kcp/application/AppOpenFastMetricsHelper;->instance:Lcom/amazon/kcp/application/AppOpenFastMetrics;

    return-object v0
.end method
