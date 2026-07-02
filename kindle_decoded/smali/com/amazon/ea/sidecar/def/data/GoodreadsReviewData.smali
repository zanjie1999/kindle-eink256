.class public Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;
.super Ljava/lang/Object;
.source "GoodreadsReviewData.java"


# instance fields
.field public final id:Ljava/lang/String;

.field public final rating:I

.field public final submissionDateMs:J

.field public final text:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->id:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->title:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->text:Ljava/lang/String;

    .line 39
    iput p4, p0, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->rating:I

    .line 40
    iput-wide p5, p0, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->submissionDateMs:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 51
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    if-eq v2, v3, :cond_2

    return v1

    .line 54
    :cond_2
    check-cast p1, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    .line 55
    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->title:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->text:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->rating:I

    iget v3, p1, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->rating:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->submissionDateMs:J

    iget-wide v4, p1, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->submissionDateMs:J

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

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 61
    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->id:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->title:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->text:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->rating:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->submissionDateMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 66
    invoke-static {p0}, Lcom/amazon/ea/guava/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->id:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->title:Ljava/lang/String;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->text:Ljava/lang/String;

    const-string/jumbo v2, "text"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget v1, p0, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->rating:I

    const-string/jumbo v2, "rating"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-wide v1, p0, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->submissionDateMs:J

    const-string/jumbo v3, "submissionDateMs"

    .line 67
    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    invoke-virtual {v0}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
