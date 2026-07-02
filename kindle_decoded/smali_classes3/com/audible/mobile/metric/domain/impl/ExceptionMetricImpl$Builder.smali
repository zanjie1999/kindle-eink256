.class public final Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;
.super Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;
.source "ExceptionMetricImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder<",
        "Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;",
        "Lcom/audible/mobile/metric/domain/ExceptionMetric;",
        ">;"
    }
.end annotation


# instance fields
.field private isFatal:Z

.field private final throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;Ljava/lang/Throwable;)V
    .locals 0

    .line 169
    invoke-direct {p0, p1, p2, p3}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    const-string p1, "Throwable can\'t be null."

    .line 170
    invoke-static {p4, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 172
    iput-object p4, p0, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;)Ljava/lang/Throwable;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;->throwable:Ljava/lang/Throwable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;)Z
    .locals 0

    .line 154
    iget-boolean p0, p0, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;->isFatal:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/audible/mobile/metric/domain/ExceptionMetric;
    .locals 2

    .line 189
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl;-><init>(Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$1;)V

    return-object v0
.end method
