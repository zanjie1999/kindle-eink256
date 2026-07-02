.class public abstract Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;
.super Ljava/lang/Object;
.source "RequestMetricCollector.java"


# static fields
.field public static final NONE:Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector$1;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;->NONE:Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract collectMetrics(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Lcom/amazon/kindle/com/amazonaws/Response<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract isEnabled()Z
.end method
