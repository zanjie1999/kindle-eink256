.class public Lcom/amazon/kcp/reader/Annotation;
.super Ljava/lang/Object;
.source "Annotation.java"

# interfaces
.implements Lcom/amazon/kindle/model/sync/annotation/IAnnotation;


# instance fields
.field private isAvailable:Z

.field private location:I

.field private m_annotationAction:I

.field private m_bookText:Ljava/lang/String;

.field private final m_creationTime:J

.field private final m_effect:I

.field protected m_endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private m_isMutable:Z

.field private m_isRemovable:Z

.field private m_metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final m_page:I

.field private final m_pagePosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field protected m_startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private final m_state:[B

.field private final m_type:I

.field private final m_userText:Ljava/lang/String;

.field private modificationType:Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIILjava/lang/String;[B)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 23
    invoke-direct/range {v0 .. v8}, Lcom/amazon/kcp/reader/Annotation;-><init>(Ljava/lang/String;IIIILjava/lang/String;[BLjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILjava/lang/String;[BLjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 362
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/Annotation;->isAvailable:Z

    .line 363
    sget-object v1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;->NONE:Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;

    iput-object v1, p0, Lcom/amazon/kcp/reader/Annotation;->modificationType:Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;

    const/4 v1, -0x1

    .line 371
    iput v1, p0, Lcom/amazon/kcp/reader/Annotation;->location:I

    .line 372
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kcp/reader/Annotation;->m_metadata:Ljava/util/Map;

    .line 34
    new-instance v2, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {v2, p3}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    iput-object v2, p0, Lcom/amazon/kcp/reader/Annotation;->m_startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 35
    new-instance p3, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {p3, p4}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    iput-object p3, p0, Lcom/amazon/kcp/reader/Annotation;->m_endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 36
    new-instance p3, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {p3, p5}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    iput-object p3, p0, Lcom/amazon/kcp/reader/Annotation;->m_pagePosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 37
    iput p2, p0, Lcom/amazon/kcp/reader/Annotation;->m_type:I

    .line 38
    iput-object p1, p0, Lcom/amazon/kcp/reader/Annotation;->m_bookText:Ljava/lang/String;

    .line 39
    iput-object p6, p0, Lcom/amazon/kcp/reader/Annotation;->m_userText:Ljava/lang/String;

    .line 40
    iput v0, p0, Lcom/amazon/kcp/reader/Annotation;->m_annotationAction:I

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/kcp/reader/Annotation;->m_creationTime:J

    .line 42
    iput-object p7, p0, Lcom/amazon/kcp/reader/Annotation;->m_state:[B

    .line 43
    iput v1, p0, Lcom/amazon/kcp/reader/Annotation;->m_page:I

    .line 44
    iput v1, p0, Lcom/amazon/kcp/reader/Annotation;->m_effect:I

    .line 45
    invoke-static {p8}, Lcom/amazon/kindle/util/JsonUtils;->unmodifiableDeepCopyOf(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/Annotation;->m_metadata:Ljava/util/Map;

    .line 46
    iget p1, p0, Lcom/amazon/kcp/reader/Annotation;->m_type:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/Annotation;->m_isMutable:Z

    .line 47
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/Annotation;->m_isRemovable:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Ljava/lang/String;[BLjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 362
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/Annotation;->isAvailable:Z

    .line 363
    sget-object v1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;->NONE:Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;

    iput-object v1, p0, Lcom/amazon/kcp/reader/Annotation;->modificationType:Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;

    const/4 v1, -0x1

    .line 371
    iput v1, p0, Lcom/amazon/kcp/reader/Annotation;->location:I

    .line 372
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kcp/reader/Annotation;->m_metadata:Ljava/util/Map;

    .line 68
    iput-object p3, p0, Lcom/amazon/kcp/reader/Annotation;->m_startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 69
    iput-object p4, p0, Lcom/amazon/kcp/reader/Annotation;->m_endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 70
    iput-object p5, p0, Lcom/amazon/kcp/reader/Annotation;->m_pagePosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 71
    iput p2, p0, Lcom/amazon/kcp/reader/Annotation;->m_type:I

    .line 72
    iput-object p1, p0, Lcom/amazon/kcp/reader/Annotation;->m_bookText:Ljava/lang/String;

    .line 73
    iput-object p6, p0, Lcom/amazon/kcp/reader/Annotation;->m_userText:Ljava/lang/String;

    .line 74
    iput v0, p0, Lcom/amazon/kcp/reader/Annotation;->m_annotationAction:I

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/kcp/reader/Annotation;->m_creationTime:J

    .line 76
    iput-object p7, p0, Lcom/amazon/kcp/reader/Annotation;->m_state:[B

    .line 77
    iput v1, p0, Lcom/amazon/kcp/reader/Annotation;->m_page:I

    .line 78
    iput v1, p0, Lcom/amazon/kcp/reader/Annotation;->m_effect:I

    .line 79
    invoke-static {p8}, Lcom/amazon/kindle/util/JsonUtils;->unmodifiableDeepCopyOf(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/Annotation;->m_metadata:Ljava/util/Map;

    .line 80
    iget p1, p0, Lcom/amazon/kcp/reader/Annotation;->m_type:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/Annotation;->m_isMutable:Z

    .line 81
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/Annotation;->m_isRemovable:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;
    .locals 10

    .line 219
    new-instance v9, Lcom/amazon/kcp/reader/Annotation;

    iget-object v1, p0, Lcom/amazon/kcp/reader/Annotation;->m_bookText:Ljava/lang/String;

    iget v2, p0, Lcom/amazon/kcp/reader/Annotation;->m_type:I

    iget-object v3, p0, Lcom/amazon/kcp/reader/Annotation;->m_startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    iget-object v4, p0, Lcom/amazon/kcp/reader/Annotation;->m_endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    iget-object v5, p0, Lcom/amazon/kcp/reader/Annotation;->m_pagePosition:Lcom/amazon/kindle/krx/reader/IPosition;

    iget-object v6, p0, Lcom/amazon/kcp/reader/Annotation;->m_userText:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/kcp/reader/Annotation;->m_state:[B

    .line 226
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->cloneByteArray([B)[B

    move-result-object v7

    iget-object v8, p0, Lcom/amazon/kcp/reader/Annotation;->m_metadata:Ljava/util/Map;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/amazon/kcp/reader/Annotation;-><init>(Ljava/lang/String;ILcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Ljava/lang/String;[BLjava/util/Map;)V

    .line 228
    iget v0, p0, Lcom/amazon/kcp/reader/Annotation;->m_annotationAction:I

    iput v0, v9, Lcom/amazon/kcp/reader/Annotation;->m_annotationAction:I

    return-object v9
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/Annotation;->clone()Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 140
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 144
    :cond_1
    check-cast p1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/Annotation;->isEqual(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAction()I
    .locals 1

    .line 239
    iget v0, p0, Lcom/amazon/kcp/reader/Annotation;->m_annotationAction:I

    return v0
.end method

.method public getBegin()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/amazon/kcp/reader/Annotation;->m_startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getBookText()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/amazon/kcp/reader/Annotation;->m_bookText:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectionTag()Ljava/lang/String;
    .locals 2

    .line 127
    iget v0, p0, Lcom/amazon/kcp/reader/Annotation;->m_type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/amazon/kcp/reader/Annotation;->m_userText:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnd()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/amazon/kcp/reader/Annotation;->m_endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getLocation()I
    .locals 1

    .line 274
    iget v0, p0, Lcom/amazon/kcp/reader/Annotation;->location:I

    return v0
.end method

.method public getMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/amazon/kcp/reader/Annotation;->m_metadata:Ljava/util/Map;

    return-object v0
.end method

.method public getPos()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/amazon/kcp/reader/Annotation;->m_pagePosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getState()[B
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/amazon/kcp/reader/Annotation;->m_state:[B

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 269
    iget-wide v0, p0, Lcom/amazon/kcp/reader/Annotation;->m_creationTime:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 234
    iget v0, p0, Lcom/amazon/kcp/reader/Annotation;->m_type:I

    return v0
.end method

.method public getUserText()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/amazon/kcp/reader/Annotation;->m_userText:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/amazon/kcp/reader/Annotation;->m_endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 334
    iget-object v2, p0, Lcom/amazon/kcp/reader/Annotation;->m_pagePosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 335
    iget-object v2, p0, Lcom/amazon/kcp/reader/Annotation;->m_startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 336
    iget v2, p0, Lcom/amazon/kcp/reader/Annotation;->m_type:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 337
    iget v2, p0, Lcom/amazon/kcp/reader/Annotation;->m_annotationAction:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 338
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/Annotation;->getMetadata()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 344
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/Annotation;->isAvailable:Z

    return v0
.end method

.method public isEqual(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 154
    :cond_0
    instance-of v1, p1, Lcom/amazon/kcp/reader/Annotation;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 155
    check-cast p1, Lcom/amazon/kcp/reader/Annotation;

    .line 156
    iget-object v1, p0, Lcom/amazon/kcp/reader/Annotation;->m_bookText:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/kcp/reader/Annotation;->m_bookText:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/kcp/reader/Annotation;->m_userText:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/kcp/reader/Annotation;->m_userText:Ljava/lang/String;

    .line 157
    invoke-static {v1, v3}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/kcp/reader/Annotation;->m_pagePosition:Lcom/amazon/kindle/krx/reader/IPosition;

    iget-object v3, p1, Lcom/amazon/kcp/reader/Annotation;->m_pagePosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 158
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/kcp/reader/Annotation;->m_startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    iget-object v3, p1, Lcom/amazon/kcp/reader/Annotation;->m_startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 159
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/kcp/reader/Annotation;->m_endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    iget-object v3, p1, Lcom/amazon/kcp/reader/Annotation;->m_endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 160
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/amazon/kcp/reader/Annotation;->m_type:I

    iget v3, p1, Lcom/amazon/kcp/reader/Annotation;->m_type:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/amazon/kcp/reader/Annotation;->m_annotationAction:I

    iget v3, p1, Lcom/amazon/kcp/reader/Annotation;->m_annotationAction:I

    if-ne v1, v3, :cond_1

    iget-wide v3, p0, Lcom/amazon/kcp/reader/Annotation;->m_creationTime:J

    iget-wide v5, p1, Lcom/amazon/kcp/reader/Annotation;->m_creationTime:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/Annotation;->getMetadata()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Annotation;->getMetadata()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/amazon/kcp/reader/Annotation;->m_isRemovable:Z

    iget-boolean v3, p1, Lcom/amazon/kcp/reader/Annotation;->m_isRemovable:Z

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/amazon/kcp/reader/Annotation;->m_isMutable:Z

    iget-boolean p1, p1, Lcom/amazon/kcp/reader/Annotation;->m_isMutable:Z

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v2, v0

    :cond_2
    return v2
.end method

.method public isMutable()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/Annotation;->m_isMutable:Z

    return v0
.end method

.method public isRemovable()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/Annotation;->m_isRemovable:Z

    return v0
.end method

.method public setAnnotationAction(I)V
    .locals 0

    .line 192
    iput p1, p0, Lcom/amazon/kcp/reader/Annotation;->m_annotationAction:I

    return-void
.end method

.method public setAnnotationOrigin(Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/amazon/kcp/reader/Annotation;->modificationType:Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;

    return-void
.end method

.method public setAvailability(Z)V
    .locals 0

    .line 351
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/Annotation;->isAvailable:Z

    return-void
.end method

.method public setBookText(Ljava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/amazon/kcp/reader/Annotation;->m_bookText:Ljava/lang/String;

    return-void
.end method

.method public setIsMutable(Z)V
    .locals 0

    .line 297
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/Annotation;->m_isMutable:Z

    return-void
.end method

.method public setIsRemovable(Z)V
    .locals 0

    .line 293
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/Annotation;->m_isRemovable:Z

    return-void
.end method

.method public setMetadata(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 202
    invoke-static {p1}, Lcom/amazon/kindle/util/JsonUtils;->unmodifiableDeepCopyOf(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/Annotation;->m_metadata:Ljava/util/Map;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    iget v1, p0, Lcom/amazon/kcp/reader/Annotation;->m_type:I

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const-string v1, "OTHER"

    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "GRAPHICAL HIGHLIGHT"

    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "HIGHLIGHT"

    .line 304
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, "NOTE"

    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string v1, "BOOKMARK"

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ": ["

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/reader/Annotation;->m_startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/reader/Annotation;->m_endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    iget-object v3, p0, Lcom/amazon/kcp/reader/Annotation;->m_userText:Ljava/lang/String;

    if-eqz v3, :cond_4

    const-string v3, ", ["

    .line 321
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kcp/reader/Annotation;->m_userText:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/Annotation;->getMetadata()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isMutable : "

    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kcp/reader/Annotation;->m_isMutable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isRemovable : "

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kcp/reader/Annotation;->m_isRemovable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
