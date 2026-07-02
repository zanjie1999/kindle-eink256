.class public abstract Lcom/audible/mobile/metric/domain/impl/AbstractMetric;
.super Ljava/lang/Object;
.source "AbstractMetric.java"

# interfaces
.implements Lcom/audible/mobile/metric/domain/Metric;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;
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

.field private final isHighPriority:Z

.field private final name:Lcom/audible/mobile/metric/domain/Metric$Name;

.field private final source:Lcom/audible/mobile/metric/domain/Metric$Source;


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/metric/domain/Metric$Category;

    iput-object v0, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->category:Lcom/audible/mobile/metric/domain/Metric$Category;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/metric/domain/Metric$Source;

    iput-object v0, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->source:Lcom/audible/mobile/metric/domain/Metric$Source;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/metric/domain/Metric$Name;

    iput-object v0, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->name:Lcom/audible/mobile/metric/domain/Metric$Name;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->isHighPriority:Z

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->dataPoints:Ljava/util/ArrayList;

    return-void
.end method

.method protected constructor <init>(Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->access$000(Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;)Lcom/audible/mobile/metric/domain/Metric$Category;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->category:Lcom/audible/mobile/metric/domain/Metric$Category;

    .line 35
    invoke-static {p1}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->access$100(Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;)Lcom/audible/mobile/metric/domain/Metric$Source;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->source:Lcom/audible/mobile/metric/domain/Metric$Source;

    .line 36
    invoke-static {p1}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->access$200(Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;)Lcom/audible/mobile/metric/domain/Metric$Name;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->name:Lcom/audible/mobile/metric/domain/Metric$Name;

    .line 37
    invoke-static {p1}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->access$300(Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->isHighPriority:Z

    .line 38
    invoke-static {p1}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->access$400(Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->dataPoints:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 110
    :cond_0
    instance-of v1, p1, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 114
    :cond_1
    check-cast p1, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;

    .line 116
    iget-boolean v1, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->isHighPriority:Z

    iget-boolean v3, p1, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->isHighPriority:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->category:Lcom/audible/mobile/metric/domain/Metric$Category;

    iget-object v3, p1, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->category:Lcom/audible/mobile/metric/domain/Metric$Category;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->dataPoints:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->dataPoints:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->name:Lcom/audible/mobile/metric/domain/Metric$Name;

    iget-object v3, p1, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->name:Lcom/audible/mobile/metric/domain/Metric$Name;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->source:Lcom/audible/mobile/metric/domain/Metric$Source;

    iget-object p1, p1, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->source:Lcom/audible/mobile/metric/domain/Metric$Source;

    .line 117
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->category:Lcom/audible/mobile/metric/domain/Metric$Category;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 124
    iget-object v1, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->source:Lcom/audible/mobile/metric/domain/Metric$Source;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 125
    iget-object v1, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->name:Lcom/audible/mobile/metric/domain/Metric$Name;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 126
    iget-boolean v1, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->isHighPriority:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 127
    iget-object v1, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->dataPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AbstractMetric{category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->category:Lcom/audible/mobile/metric/domain/Metric$Category;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->source:Lcom/audible/mobile/metric/domain/Metric$Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->name:Lcom/audible/mobile/metric/domain/Metric$Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isHighPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->isHighPriority:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dataPoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->dataPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract writeAdditionToParcel(Landroid/os/Parcel;I)V
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->category:Lcom/audible/mobile/metric/domain/Metric$Category;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 95
    iget-object v0, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->source:Lcom/audible/mobile/metric/domain/Metric$Source;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 96
    iget-object v0, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->name:Lcom/audible/mobile/metric/domain/Metric$Name;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 97
    iget-boolean v0, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->isHighPriority:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 98
    iget-object v0, p0, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->dataPoints:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->writeAdditionToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
