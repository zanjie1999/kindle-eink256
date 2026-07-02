.class public Lcom/amazon/ku/data/KuSubscription;
.super Ljava/lang/Object;
.source "KuSubscription.java"


# instance fields
.field private contractEndDate:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contractEndDate"
    .end annotation
.end field

.field private planType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "planType"
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private statusStartDate:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "statusStartDate"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findLatestSubscription(Ljava/util/Collection;)Lcom/amazon/ku/data/KuSubscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/ku/data/KuSubscription;",
            ">;)",
            "Lcom/amazon/ku/data/KuSubscription;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 93
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    new-instance v0, Lcom/amazon/ku/data/KuSubscription$1;

    invoke-direct {v0}, Lcom/amazon/ku/data/KuSubscription$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/ku/data/KuSubscription;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getPlanType()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/ku/data/KuSubscription;->planType:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/ku/data/KuSubscription;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusStartDate()J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/amazon/ku/data/KuSubscription;->statusStartDate:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 77
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringBuilder;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/amazon/ku/data/KuSubscription;->planType:Ljava/lang/String;

    .line 78
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    iget-object v1, p0, Lcom/amazon/ku/data/KuSubscription;->status:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    iget-wide v1, p0, Lcom/amazon/ku/data/KuSubscription;->statusStartDate:J

    .line 80
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(J)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    iget-wide v1, p0, Lcom/amazon/ku/data/KuSubscription;->contractEndDate:J

    .line 81
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(J)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    .line 82
    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
