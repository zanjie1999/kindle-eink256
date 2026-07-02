.class public abstract Lcom/amazon/kindle/model/Annotations/AbstractPosition;
.super Ljava/lang/Object;
.source "AbstractPosition.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IPosition;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 15
    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    .line 19
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/model/Annotations/AbstractPosition;->nonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/model/Annotations/AbstractPosition;->nonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 8
    check-cast p1, Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/model/Annotations/AbstractPosition;->compareTo(Lcom/amazon/kindle/krx/reader/IPosition;)I

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

    .line 60
    :cond_1
    instance-of v1, p1, Lcom/amazon/kindle/model/Annotations/AbstractPosition;

    if-nez v1, :cond_2

    return v0

    .line 63
    :cond_2
    check-cast p1, Lcom/amazon/kindle/model/Annotations/AbstractPosition;

    .line 64
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/model/Annotations/AbstractPosition;->isEqual(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result p1

    return p1
.end method

.method public getPercentage(Lcom/amazon/kindle/krx/reader/IPosition;)D
    .locals 4

    .line 25
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

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

.method public hashCode()I
    .locals 3

    .line 69
    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    const/16 v2, 0x1f

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    return v1
.end method

.method public isAfter(Lcom/amazon/kindle/krx/reader/IPosition;)Z
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/model/Annotations/AbstractPosition;->compareTo(Lcom/amazon/kindle/krx/reader/IPosition;)I

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

    .line 35
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/model/Annotations/AbstractPosition;->compareTo(Lcom/amazon/kindle/krx/reader/IPosition;)I

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

    .line 40
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/model/Annotations/AbstractPosition;->compareTo(Lcom/amazon/kindle/krx/reader/IPosition;)I

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

    .line 45
    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 48
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 80
    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
