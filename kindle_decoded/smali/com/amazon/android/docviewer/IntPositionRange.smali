.class public Lcom/amazon/android/docviewer/IntPositionRange;
.super Ljava/lang/Object;
.source "IntPositionRange.java"

# interfaces
.implements Lcom/amazon/android/docviewer/IPositionRange;


# instance fields
.field private final firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private final lastPosition:Lcom/amazon/kindle/krx/reader/IPosition;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gt p1, p2, :cond_0

    .line 16
    new-instance v0, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/IntPositionRange;->firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 17
    new-instance p1, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {p1, p2}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/android/docviewer/IntPositionRange;->lastPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {v0, p2}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/IntPositionRange;->firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 20
    new-instance p2, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {p2, p1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    iput-object p2, p0, Lcom/amazon/android/docviewer/IntPositionRange;->lastPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-interface {p2, p1}, Lcom/amazon/kindle/krx/reader/IPosition;->isAfter(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2, p1}, Lcom/amazon/kindle/krx/reader/IPosition;->isEqual(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    iput-object p2, p0, Lcom/amazon/android/docviewer/IntPositionRange;->firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 30
    iput-object p1, p0, Lcom/amazon/android/docviewer/IntPositionRange;->lastPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/amazon/android/docviewer/IntPositionRange;->firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 27
    iput-object p2, p0, Lcom/amazon/android/docviewer/IntPositionRange;->lastPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    :goto_1
    return-void
.end method


# virtual methods
.method public contains(Lcom/amazon/android/docviewer/IPositionRange;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/amazon/android/docviewer/IntPositionRange;->firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 47
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/IntPositionRange;->lastPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 48
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 63
    const-class v2, Lcom/amazon/android/docviewer/IntPositionRange;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 67
    :cond_1
    check-cast p1, Lcom/amazon/android/docviewer/IntPositionRange;

    .line 69
    iget-object v2, p0, Lcom/amazon/android/docviewer/IntPositionRange;->firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/amazon/android/docviewer/IntPositionRange;->firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v2, v3}, Lcom/amazon/kindle/krx/reader/IPosition;->isEqual(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/amazon/android/docviewer/IntPositionRange;->firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 72
    :cond_3
    iget-object v2, p0, Lcom/amazon/android/docviewer/IntPositionRange;->lastPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    iget-object p1, p1, Lcom/amazon/android/docviewer/IntPositionRange;->lastPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz v2, :cond_4

    invoke-interface {v2, p1}, Lcom/amazon/kindle/krx/reader/IPosition;->isEqual(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    :goto_1
    return v1

    :cond_5
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public getEnd()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/android/docviewer/IntPositionRange;->lastPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getStart()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/android/docviewer/IntPositionRange;->firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/amazon/android/docviewer/IntPositionRange;->firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 82
    iget-object v2, p0, Lcom/amazon/android/docviewer/IntPositionRange;->lastPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public overlaps(Lcom/amazon/android/docviewer/IPositionRange;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/amazon/android/docviewer/IntPositionRange;->firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 54
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/IntPositionRange;->lastPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 55
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/android/docviewer/IntPositionRange;->firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/android/docviewer/IntPositionRange;->lastPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
