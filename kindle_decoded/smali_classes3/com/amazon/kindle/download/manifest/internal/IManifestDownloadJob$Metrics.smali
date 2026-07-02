.class public final Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;
.super Ljava/lang/Object;
.source "IManifestDownloadJob.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Metrics"
.end annotation


# instance fields
.field private final creationTime:J

.field private final responseReceivedTime:Ljava/lang/Long;

.field private final startTime:Ljava/lang/Long;

.field private final streamCompleteTime:Ljava/lang/Long;


# direct methods
.method public constructor <init>(JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->creationTime:J

    iput-object p3, p0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->startTime:Ljava/lang/Long;

    iput-object p4, p0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->responseReceivedTime:Ljava/lang/Long;

    iput-object p5, p0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->streamCompleteTime:Ljava/lang/Long;

    return-void
.end method

.method public static synthetic copy$default(Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Object;)Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-wide p1, p0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->creationTime:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    iget-object p3, p0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->startTime:Ljava/lang/Long;

    :cond_1
    move-object v3, p3

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    iget-object p4, p0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->responseReceivedTime:Ljava/lang/Long;

    :cond_2
    move-object v4, p4

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    iget-object p5, p0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->streamCompleteTime:Ljava/lang/Long;

    :cond_3
    move-object v5, p5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->copy(JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;
    .locals 7

    new-instance v6, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;

    move-object v0, v6

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;-><init>(JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;

    iget-wide v0, p0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->creationTime:J

    iget-wide v2, p1, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->creationTime:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->startTime:Ljava/lang/Long;

    iget-object v1, p1, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->startTime:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->responseReceivedTime:Ljava/lang/Long;

    iget-object v1, p1, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->responseReceivedTime:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->streamCompleteTime:Ljava/lang/Long;

    iget-object p1, p1, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->streamCompleteTime:Ljava/lang/Long;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getCreationTime()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->creationTime:J

    return-wide v0
.end method

.method public final getResponseReceivedTime()Ljava/lang/Long;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->responseReceivedTime:Ljava/lang/Long;

    return-object v0
.end method

.method public final getStartTime()Ljava/lang/Long;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->startTime:Ljava/lang/Long;

    return-object v0
.end method

.method public final getStreamCompleteTime()Ljava/lang/Long;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->streamCompleteTime:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->creationTime:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->startTime:Ljava/lang/Long;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->responseReceivedTime:Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->streamCompleteTime:Ljava/lang/Long;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Metrics(creationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->creationTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->startTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", responseReceivedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->responseReceivedTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", streamCompleteTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->streamCompleteTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
