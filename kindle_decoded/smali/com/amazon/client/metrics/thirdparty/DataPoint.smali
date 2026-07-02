.class public Lcom/amazon/client/metrics/thirdparty/DataPoint;
.super Ljava/lang/Object;
.source "DataPoint.java"


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mSamples:I

.field private final mType:Lcom/amazon/client/metrics/thirdparty/DataPointType;

.field private final mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/amazon/client/metrics/thirdparty/DataPointType;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "name cannot be null or empty"

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/amazon/client/metrics/thirdparty/DataPoint;->validateString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "value cannot be null or empty"

    .line 37
    invoke-direct {p0, p2, v0}, Lcom/amazon/client/metrics/thirdparty/DataPoint;->validateString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 41
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/DataPoint;->mName:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/amazon/client/metrics/thirdparty/DataPoint;->mValue:Ljava/lang/String;

    .line 43
    iput p3, p0, Lcom/amazon/client/metrics/thirdparty/DataPoint;->mSamples:I

    .line 44
    iput-object p4, p0, Lcom/amazon/client/metrics/thirdparty/DataPoint;->mType:Lcom/amazon/client/metrics/thirdparty/DataPointType;

    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DataPoint type cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private validateString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 146
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 95
    :cond_0
    const-class v1, Lcom/amazon/client/metrics/thirdparty/DataPoint;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    return v3

    .line 98
    :cond_1
    check-cast p1, Lcom/amazon/client/metrics/thirdparty/DataPoint;

    .line 100
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/DataPoint;->mName:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/client/metrics/thirdparty/DataPoint;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v3

    .line 104
    :cond_2
    iget v1, p0, Lcom/amazon/client/metrics/thirdparty/DataPoint;->mSamples:I

    iget v2, p1, Lcom/amazon/client/metrics/thirdparty/DataPoint;->mSamples:I

    if-eq v1, v2, :cond_3

    return v3

    .line 108
    :cond_3
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/DataPoint;->mType:Lcom/amazon/client/metrics/thirdparty/DataPointType;

    iget-object v2, p1, Lcom/amazon/client/metrics/thirdparty/DataPoint;->mType:Lcom/amazon/client/metrics/thirdparty/DataPointType;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 112
    :cond_4
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/DataPoint;->mValue:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/client/metrics/thirdparty/DataPoint;->mValue:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v3

    :cond_5
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/DataPoint;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSamples()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/DataPoint;->mSamples:I

    return v0
.end method

.method public getType()Lcom/amazon/client/metrics/thirdparty/DataPointType;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/DataPoint;->mType:Lcom/amazon/client/metrics/thirdparty/DataPointType;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/DataPoint;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/DataPoint;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 84
    iget v3, p0, Lcom/amazon/client/metrics/thirdparty/DataPoint;->mSamples:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 85
    iget-object v3, p0, Lcom/amazon/client/metrics/thirdparty/DataPoint;->mType:Lcom/amazon/client/metrics/thirdparty/DataPointType;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Enum;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 86
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/DataPoint;->mValue:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ["

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/DataPoint;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/DataPoint;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget v1, p0, Lcom/amazon/client/metrics/thirdparty/DataPoint;->mSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
