.class Lcom/amazon/weblab/mobile/WeblabClientDefaultMetricPublisher;
.super Ljava/lang/Object;
.source "WeblabClientDefaultMetricPublisher.java"


# instance fields
.field private final mClientIdentifier:Ljava/lang/String;

.field private final mStaticWeblabs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/weblab/mobile/WeblabClientDefaultMetricPublisher;->mClientIdentifier:Ljava/lang/String;

    .line 21
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/weblab/mobile/WeblabClientDefaultMetricPublisher;->mStaticWeblabs:Ljava/util/Set;

    return-void
.end method

.method private logMetric(Ljava/lang/String;I)V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientDefaultMetricPublisher;->mStaticWeblabs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WeblabClientBaseGetWeblabDefaultFilledByClient:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 38
    iget-object v1, p0, Lcom/amazon/weblab/mobile/WeblabClientDefaultMetricPublisher;->mClientIdentifier:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logMetric(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 40
    iget-object p1, p0, Lcom/amazon/weblab/mobile/WeblabClientDefaultMetricPublisher;->mClientIdentifier:Ljava/lang/String;

    const-string v0, "WeblabClientBaseGetWeblabDefaultFilledByClientStatic"

    invoke-static {v0, p1, p2}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logMetric(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/amazon/weblab/mobile/WeblabClientDefaultMetricPublisher;->mClientIdentifier:Ljava/lang/String;

    const-string v0, "WeblabClientBaseGetWeblabDefaultFilledByClientDynamic"

    invoke-static {v0, p1, p2}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logMetric(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/concurrent/Future;

    :goto_0
    return-void
.end method

.method private shouldLogMetric(Lcom/amazon/weblab/mobile/model/TreatmentAssignment;)Z
    .locals 4

    .line 32
    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getSuggestedExpiration()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method checkAndPublishdDefaultWeblabRecorded(Lcom/amazon/weblab/mobile/model/TreatmentAssignment;)V
    .locals 1

    .line 25
    invoke-direct {p0, p1}, Lcom/amazon/weblab/mobile/WeblabClientDefaultMetricPublisher;->shouldLogMetric(Lcom/amazon/weblab/mobile/model/TreatmentAssignment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getWeblabName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/amazon/weblab/mobile/WeblabClientDefaultMetricPublisher;->logMetric(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
