.class public final Lcom/amazon/kindle/model/content/LastPageRead;
.super Ljava/lang/Object;
.source "LastPageRead.java"


# instance fields
.field private final lastPageReadNumber:I

.field private final lastPageReadPosition:I

.field private final state:[B


# direct methods
.method public constructor <init>(II[B)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/amazon/kindle/model/content/LastPageRead;->lastPageReadNumber:I

    .line 26
    iput p2, p0, Lcom/amazon/kindle/model/content/LastPageRead;->lastPageReadPosition:I

    .line 27
    iput-object p3, p0, Lcom/amazon/kindle/model/content/LastPageRead;->state:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 61
    :cond_0
    instance-of v1, p1, Lcom/amazon/kindle/model/content/LastPageRead;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 64
    :cond_1
    check-cast p1, Lcom/amazon/kindle/model/content/LastPageRead;

    .line 65
    iget v1, p0, Lcom/amazon/kindle/model/content/LastPageRead;->lastPageReadNumber:I

    iget v3, p1, Lcom/amazon/kindle/model/content/LastPageRead;->lastPageReadNumber:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/amazon/kindle/model/content/LastPageRead;->lastPageReadPosition:I

    iget v3, p1, Lcom/amazon/kindle/model/content/LastPageRead;->lastPageReadPosition:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/amazon/kindle/model/content/LastPageRead;->state:[B

    iget-object p1, p1, Lcom/amazon/kindle/model/content/LastPageRead;->state:[B

    .line 67
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLastPageReadNumber()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/amazon/kindle/model/content/LastPageRead;->lastPageReadNumber:I

    return v0
.end method

.method public getLastPageReadPosition()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/amazon/kindle/model/content/LastPageRead;->lastPageReadPosition:I

    return v0
.end method

.method public getState()[B
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kindle/model/content/LastPageRead;->state:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 51
    iget v0, p0, Lcom/amazon/kindle/model/content/LastPageRead;->lastPageReadNumber:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 52
    iget v2, p0, Lcom/amazon/kindle/model/content/LastPageRead;->lastPageReadPosition:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 53
    iget-object v1, p0, Lcom/amazon/kindle/model/content/LastPageRead;->state:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(LastPageRead position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/model/content/LastPageRead;->lastPageReadPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " page:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/model/content/LastPageRead;->lastPageReadNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hash(state): ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/model/content/LastPageRead;->state:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
