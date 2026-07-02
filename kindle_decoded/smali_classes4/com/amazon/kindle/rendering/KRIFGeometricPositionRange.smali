.class public Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;
.super Ljava/lang/Object;
.source "KRIFGeometricPositionRange.java"

# interfaces
.implements Lcom/amazon/android/docviewer/IPositionRange;


# static fields
.field private static final EPSILON:F = 1.0E-5f

.field private static final TAG:Ljava/lang/String; = "com.amazon.kindle.rendering.KRIFGeometricPositionRange"


# instance fields
.field private docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

.field private final firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private final lastPosition:Lcom/amazon/kindle/krx/reader/IPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    .line 26
    iput-object p2, p0, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 27
    iput-object p3, p0, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->lastPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-void
.end method

.method private extractPointFromIPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Landroid/graphics/PointF;
    .locals 3

    .line 42
    instance-of v0, p1, Lcom/amazon/kindle/rendering/KRIFGeometricPosition;

    if-eqz v0, :cond_0

    .line 43
    move-object v0, p1

    check-cast v0, Lcom/amazon/kindle/rendering/KRIFGeometricPosition;

    .line 44
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFNonTextPosition;->getPlatformPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFNonTextPosition;->getPlatformPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 49
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to extract a point from blank long position; short position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance p1, Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(Ljava/lang/String;)Lcom/amazon/krf/platform/Position;

    move-result-object v0

    .line 56
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->extractPointFromKRFPosition(Lcom/amazon/krf/platform/Position;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method private getRectangle()Landroid/graphics/RectF;
    .locals 5

    .line 60
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->extractPointFromIPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Landroid/graphics/PointF;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->lastPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-direct {p0, v1}, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->extractPointFromIPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    new-instance v2, Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v0, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 66
    invoke-virtual {v2}, Landroid/graphics/RectF;->sort()V

    return-object v2

    .line 63
    :cond_1
    :goto_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    return-object v0
.end method

.method private static isDistinctShortRange(Lcom/amazon/android/docviewer/IPositionRange;)Z
    .locals 1

    .line 71
    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isMissingLongRange(Lcom/amazon/android/docviewer/IPositionRange;)Z
    .locals 1

    .line 75
    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public contains(Lcom/amazon/android/docviewer/IPositionRange;)Z
    .locals 3

    .line 83
    invoke-static {p0}, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->isDistinctShortRange(Lcom/amazon/android/docviewer/IPositionRange;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->isDistinctShortRange(Lcom/amazon/android/docviewer/IPositionRange;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 84
    invoke-static {p0}, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->isMissingLongRange(Lcom/amazon/android/docviewer/IPositionRange;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->isMissingLongRange(Lcom/amazon/android/docviewer/IPositionRange;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    return v2

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->lastPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 98
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 102
    :cond_2
    instance-of v0, p1, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;

    if-nez v0, :cond_3

    return v2

    .line 108
    :cond_3
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->getRectangle()Landroid/graphics/RectF;

    move-result-object v0

    const v1, -0x48d83a54    # -1.0E-5f

    .line 109
    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 110
    check-cast p1, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;

    .line 111
    invoke-direct {p1}, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->getRectangle()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result p1

    return p1

    .line 85
    :cond_4
    :goto_0
    new-instance v0, Lcom/amazon/android/docviewer/IntPositionRange;

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(II)V

    .line 86
    new-instance v1, Lcom/amazon/android/docviewer/IntPositionRange;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-direct {v1, v2, p1}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(II)V

    .line 87
    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/IntPositionRange;->contains(Lcom/amazon/android/docviewer/IPositionRange;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 157
    const-class v2, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_4

    .line 161
    :cond_1
    check-cast p1, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;

    .line 163
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p1, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    xor-int/2addr v2, v3

    if-eqz v2, :cond_4

    return v1

    .line 167
    :cond_4
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->lastPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-nez v2, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    iget-object v3, p1, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->lastPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-nez v3, :cond_6

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    xor-int/2addr v2, v3

    if-eqz v2, :cond_7

    return v1

    .line 171
    :cond_7
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz v2, :cond_8

    iget-object v3, p1, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v2, v3}, Lcom/amazon/kindle/krx/reader/IPosition;->isEqual(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 175
    :cond_8
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->lastPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz v2, :cond_9

    iget-object p1, p1, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->lastPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v2, p1}, Lcom/amazon/kindle/krx/reader/IPosition;->isEqual(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result p1

    if-nez p1, :cond_9

    return v1

    :cond_9
    return v0

    :cond_a
    :goto_4
    return v1
.end method

.method public getEnd()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->lastPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getStart()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 185
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 186
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->lastPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-nez v2, :cond_1

    goto :goto_1

    .line 188
    :cond_1
    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->lastPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public overlaps(Lcom/amazon/android/docviewer/IPositionRange;)Z
    .locals 3

    .line 118
    invoke-static {p0}, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->isDistinctShortRange(Lcom/amazon/android/docviewer/IPositionRange;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->isDistinctShortRange(Lcom/amazon/android/docviewer/IPositionRange;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 119
    invoke-static {p0}, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->isMissingLongRange(Lcom/amazon/android/docviewer/IPositionRange;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->isMissingLongRange(Lcom/amazon/android/docviewer/IPositionRange;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    return v2

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->lastPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 133
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 137
    :cond_2
    instance-of v0, p1, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;

    if-nez v0, :cond_3

    return v2

    .line 143
    :cond_3
    check-cast p1, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;

    .line 144
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->getRectangle()Landroid/graphics/RectF;

    move-result-object v0

    .line 145
    invoke-direct {p1}, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->getRectangle()Landroid/graphics/RectF;

    move-result-object p1

    const v1, -0x48d83a54    # -1.0E-5f

    .line 146
    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 147
    invoke-virtual {p1, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 149
    invoke-static {v0, p1}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p1

    return p1

    .line 120
    :cond_4
    :goto_0
    new-instance v0, Lcom/amazon/android/docviewer/IntPositionRange;

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(II)V

    .line 121
    new-instance v1, Lcom/amazon/android/docviewer/IntPositionRange;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-direct {v1, v2, p1}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(II)V

    .line 122
    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/IntPositionRange;->overlaps(Lcom/amazon/android/docviewer/IPositionRange;)Z

    move-result p1

    return p1
.end method
