.class public Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;
.super Ljava/lang/Object;
.source "RawSidecarMetadata.java"


# instance fields
.field public final asin:Ljava/lang/String;

.field public final contentType:Lcom/amazon/kindle/krx/content/ContentType;

.field public final embeddedId:Ljava/lang/String;

.field public final erl:J

.field public final fictionStatus:Ljava/lang/String;

.field public final refTagSuffix:Ljava/lang/String;

.field public final timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;JLjava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->asin:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->embeddedId:Ljava/lang/String;

    .line 44
    iput-wide p4, p0, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->erl:J

    .line 45
    iput-object p3, p0, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->contentType:Lcom/amazon/kindle/krx/content/ContentType;

    .line 46
    iput-wide p7, p0, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->timestamp:J

    .line 47
    iput-object p6, p0, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->refTagSuffix:Ljava/lang/String;

    .line 48
    iput-object p9, p0, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->fictionStatus:Ljava/lang/String;

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

    .line 59
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;

    if-eq v2, v3, :cond_2

    return v1

    .line 62
    :cond_2
    check-cast p1, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;

    .line 63
    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->asin:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->asin:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->embeddedId:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->embeddedId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->erl:J

    iget-wide v4, p1, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->erl:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->contentType:Lcom/amazon/kindle/krx/content/ContentType;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->contentType:Lcom/amazon/kindle/krx/content/ContentType;

    .line 64
    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->timestamp:J

    iget-wide v4, p1, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->timestamp:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->refTagSuffix:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->refTagSuffix:Ljava/lang/String;

    .line 65
    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->fictionStatus:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->fictionStatus:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 70
    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->asin:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->embeddedId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->erl:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->contentType:Lcom/amazon/kindle/krx/content/ContentType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->refTagSuffix:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 75
    invoke-static {p0}, Lcom/amazon/ea/guava/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->asin:Ljava/lang/String;

    const-string v2, "asin"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->embeddedId:Ljava/lang/String;

    const-string v2, "embeddedId"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-wide v1, p0, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->erl:J

    const-string v3, "erl"

    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->contentType:Lcom/amazon/kindle/krx/content/ContentType;

    const-string v2, "contentType"

    .line 76
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-wide v1, p0, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->timestamp:J

    const-string/jumbo v3, "timestamp"

    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->refTagSuffix:Ljava/lang/String;

    const-string/jumbo v2, "refTagSuffix"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->fictionStatus:Ljava/lang/String;

    const-string v2, "fictionStatus"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    .line 77
    invoke-virtual {v0}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
