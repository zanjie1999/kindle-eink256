.class public abstract Lcom/amazon/kindle/com/amazonaws/metrics/ServiceMetricCollector;
.super Ljava/lang/Object;
.source "ServiceMetricCollector.java"


# static fields
.field public static final NONE:Lcom/amazon/kindle/com/amazonaws/metrics/ServiceMetricCollector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/metrics/ServiceMetricCollector$1;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/metrics/ServiceMetricCollector$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/metrics/ServiceMetricCollector;->NONE:Lcom/amazon/kindle/com/amazonaws/metrics/ServiceMetricCollector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract collectByteThroughput(Lcom/amazon/kindle/com/amazonaws/metrics/ByteThroughputProvider;)V
.end method
