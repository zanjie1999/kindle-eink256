.class public Lcom/amazon/ea/sidecar/def/CommonData;
.super Ljava/lang/Object;
.source "CommonData.java"


# instance fields
.field public final erl:J

.field public final fictionStatus:Ljava/lang/String;

.field public final refTagSuffix:Ljava/lang/String;

.field public final timestamp:J


# direct methods
.method public constructor <init>(JLjava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide p1, p0, Lcom/amazon/ea/sidecar/def/CommonData;->erl:J

    .line 32
    iput-object p3, p0, Lcom/amazon/ea/sidecar/def/CommonData;->refTagSuffix:Ljava/lang/String;

    .line 33
    iput-wide p4, p0, Lcom/amazon/ea/sidecar/def/CommonData;->timestamp:J

    .line 34
    iput-object p6, p0, Lcom/amazon/ea/sidecar/def/CommonData;->fictionStatus:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 45
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/ea/sidecar/def/CommonData;

    if-eq v2, v3, :cond_2

    return v1

    .line 48
    :cond_2
    check-cast p1, Lcom/amazon/ea/sidecar/def/CommonData;

    .line 49
    iget-wide v2, p0, Lcom/amazon/ea/sidecar/def/CommonData;->erl:J

    iget-wide v4, p1, Lcom/amazon/ea/sidecar/def/CommonData;->erl:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/CommonData;->refTagSuffix:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/CommonData;->refTagSuffix:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/amazon/ea/sidecar/def/CommonData;->timestamp:J

    iget-wide v4, p1, Lcom/amazon/ea/sidecar/def/CommonData;->timestamp:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 54
    iget-wide v1, p0, Lcom/amazon/ea/sidecar/def/CommonData;->erl:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/CommonData;->refTagSuffix:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/amazon/ea/sidecar/def/CommonData;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 59
    invoke-static {p0}, Lcom/amazon/ea/guava/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/amazon/ea/sidecar/def/CommonData;->erl:J

    const-string v3, "erl"

    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/CommonData;->refTagSuffix:Ljava/lang/String;

    const-string/jumbo v2, "refTagSuffix"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-wide v1, p0, Lcom/amazon/ea/sidecar/def/CommonData;->timestamp:J

    const-string/jumbo v3, "timestamp"

    .line 60
    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    invoke-virtual {v0}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
