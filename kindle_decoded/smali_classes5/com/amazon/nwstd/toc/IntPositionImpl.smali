.class Lcom/amazon/nwstd/toc/IntPositionImpl;
.super Ljava/lang/Object;
.source "ReplicaTOCEntry.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IPosition;


# instance fields
.field private position:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput p1, p0, Lcom/amazon/nwstd/toc/IntPositionImpl;->position:I

    return-void
.end method

.method private static nonNullString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/amazon/kindle/krx/reader/IPosition;)I
    .locals 2

    .line 135
    invoke-virtual {p0}, Lcom/amazon/nwstd/toc/IntPositionImpl;->getIntPosition()I

    move-result v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/nwstd/toc/IntPositionImpl;->getLongPosition()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/nwstd/toc/IntPositionImpl;->nonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/nwstd/toc/IntPositionImpl;->nonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 122
    check-cast p1, Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/toc/IntPositionImpl;->compareTo(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 195
    :cond_1
    instance-of v1, p1, Lcom/amazon/nwstd/toc/IntPositionImpl;

    if-nez v1, :cond_2

    return v0

    .line 198
    :cond_2
    check-cast p1, Lcom/amazon/nwstd/toc/IntPositionImpl;

    .line 199
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/toc/IntPositionImpl;->isEqual(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result p1

    return p1
.end method

.method public getIntPosition()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/amazon/nwstd/toc/IntPositionImpl;->position:I

    return v0
.end method

.method public getLongPosition()Ljava/lang/String;
    .locals 1

    .line 155
    invoke-virtual {p0}, Lcom/amazon/nwstd/toc/IntPositionImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPercentage(Lcom/amazon/kindle/krx/reader/IPosition;)D
    .locals 4

    .line 145
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/nwstd/toc/IntPositionImpl;->getIntPosition()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    int-to-double v2, p1

    div-double/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public isAfter(Lcom/amazon/kindle/krx/reader/IPosition;)Z
    .locals 0

    .line 165
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/toc/IntPositionImpl;->compareTo(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isBefore(Lcom/amazon/kindle/krx/reader/IPosition;)Z
    .locals 0

    .line 170
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/toc/IntPositionImpl;->compareTo(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEqual(Lcom/amazon/kindle/krx/reader/IPosition;)Z
    .locals 0

    .line 175
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/toc/IntPositionImpl;->compareTo(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toSerializableString()Ljava/lang/String;
    .locals 1

    .line 180
    invoke-virtual {p0}, Lcom/amazon/nwstd/toc/IntPositionImpl;->getLongPosition()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/nwstd/toc/IntPositionImpl;->getLongPosition()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/amazon/nwstd/toc/IntPositionImpl;->getLongPosition()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/nwstd/toc/IntPositionImpl;->getIntPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/nwstd/toc/IntPositionImpl;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
