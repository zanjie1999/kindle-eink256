.class public abstract Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;
.super Ljava/lang/Object;
.source "AbstractMetric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/metric/domain/impl/AbstractMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractMetricsBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;",
        "M::",
        "Lcom/audible/mobile/metric/domain/Metric;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final category:Lcom/audible/mobile/metric/domain/Metric$Category;

.field private final dataPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/audible/mobile/metric/domain/DataPoint;",
            ">;"
        }
    .end annotation
.end field

.field private isHighPriority:Z

.field private final name:Lcom/audible/mobile/metric/domain/Metric$Name;

.field private final source:Lcom/audible/mobile/metric/domain/Metric$Source;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V
    .locals 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->dataPoints:Ljava/util/ArrayList;

    const-string v0, "Category can\'t be null."

    .line 170
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Source can\'t be null."

    .line 171
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Name can\'t be null."

    .line 172
    invoke-static {p3, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 174
    iput-object p1, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->category:Lcom/audible/mobile/metric/domain/Metric$Category;

    .line 175
    iput-object p2, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->source:Lcom/audible/mobile/metric/domain/Metric$Source;

    .line 176
    iput-object p3, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->name:Lcom/audible/mobile/metric/domain/Metric$Name;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;)Lcom/audible/mobile/metric/domain/Metric$Category;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->category:Lcom/audible/mobile/metric/domain/Metric$Category;

    return-object p0
.end method

.method static synthetic access$100(Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;)Lcom/audible/mobile/metric/domain/Metric$Source;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->source:Lcom/audible/mobile/metric/domain/Metric$Source;

    return-object p0
.end method

.method static synthetic access$200(Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;)Lcom/audible/mobile/metric/domain/Metric$Name;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->name:Lcom/audible/mobile/metric/domain/Metric$Name;

    return-object p0
.end method

.method static synthetic access$300(Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;)Z
    .locals 0

    .line 153
    iget-boolean p0, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->isHighPriority:Z

    return p0
.end method

.method static synthetic access$400(Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;)Ljava/util/ArrayList;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->dataPoints:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public final addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/audible/mobile/metric/domain/DataType<",
            "TT;>;TT;)TB;"
        }
    .end annotation

    .line 192
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/DataPointImpl;

    invoke-direct {v0, p1, p2}, Lcom/audible/mobile/metric/domain/impl/DataPointImpl;-><init>(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)V

    .line 193
    iget-object p1, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->dataPoints:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addDataPoints(Ljava/util/Map;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lcom/audible/mobile/metric/domain/DataType<",
            "TT;>;TT;>;)TB;"
        }
    .end annotation

    const-string v0, "data points map can\'t be null"

    .line 205
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 206
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/metric/domain/DataType;

    .line 207
    new-instance v2, Lcom/audible/mobile/metric/domain/impl/DataPointImpl;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/audible/mobile/metric/domain/impl/DataPointImpl;-><init>(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)V

    .line 208
    iget-object v1, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->dataPoints:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final highPriority()Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->isHighPriority:Z

    return-object p0
.end method
