.class public final Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelRange;
.super Ljava/lang/Object;
.source "PageLabelRange.java"


# instance fields
.field private final lowerRangeLabel:Ljava/lang/String;

.field private final upperRangeLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "lowerRangeLabel"

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelRange;->ensureNonBlankString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "upperRangeLabel"

    .line 13
    invoke-direct {p0, p2, v0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelRange;->ensureNonBlankString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelRange;->lowerRangeLabel:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelRange;->upperRangeLabel:Ljava/lang/String;

    return-void
.end method

.method private ensureNonBlankString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be blank"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 48
    :cond_1
    instance-of v2, p1, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelRange;

    if-nez v2, :cond_2

    return v1

    .line 51
    :cond_2
    check-cast p1, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelRange;

    .line 53
    iget-object v2, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelRange;->lowerRangeLabel:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelRange;->lowerRangeLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 57
    :cond_3
    iget-object v2, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelRange;->upperRangeLabel:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelRange;->upperRangeLabel:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelRange;->lowerRangeLabel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 34
    iget-object v1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelRange;->upperRangeLabel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PageLabelRange [lowerRangeLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelRange;->lowerRangeLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", upperRangeLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelRange;->upperRangeLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
