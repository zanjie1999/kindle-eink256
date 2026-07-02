.class public Lcom/amazon/kindle/model/Annotations/IntPosition;
.super Lcom/amazon/kindle/model/Annotations/AbstractPosition;
.source "IntPosition.java"


# instance fields
.field private pos:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/amazon/kindle/model/Annotations/AbstractPosition;-><init>()V

    .line 16
    iput p1, p0, Lcom/amazon/kindle/model/Annotations/IntPosition;->pos:I

    return-void
.end method

.method public static valueOf(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/model/Annotations/IntPosition;
    .locals 1

    .line 36
    instance-of v0, p0, Lcom/amazon/kindle/model/Annotations/IntPosition;

    if-eqz v0, :cond_0

    .line 37
    check-cast p0, Lcom/amazon/kindle/model/Annotations/IntPosition;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/amazon/kindle/krx/reader/IPosition;)I
    .locals 1

    .line 45
    instance-of v0, p1, Lcom/amazon/kindle/model/Annotations/IntPosition;

    if-eqz v0, :cond_0

    .line 47
    iget v0, p0, Lcom/amazon/kindle/model/Annotations/IntPosition;->pos:I

    check-cast p1, Lcom/amazon/kindle/model/Annotations/IntPosition;

    iget p1, p1, Lcom/amazon/kindle/model/Annotations/IntPosition;->pos:I

    sub-int/2addr v0, p1

    return v0

    .line 49
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kindle/model/Annotations/AbstractPosition;->compareTo(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/model/Annotations/IntPosition;->compareTo(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result p1

    return p1
.end method

.method public getIntPosition()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/amazon/kindle/model/Annotations/IntPosition;->pos:I

    return v0
.end method

.method public getLongPosition()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public setPosValue(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/amazon/kindle/model/Annotations/IntPosition;->pos:I

    return-void
.end method

.method public toSerializableString()Ljava/lang/String;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/amazon/kindle/model/Annotations/IntPosition;->getIntPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
