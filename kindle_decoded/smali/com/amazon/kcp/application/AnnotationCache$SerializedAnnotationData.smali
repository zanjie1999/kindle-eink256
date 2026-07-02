.class Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;
.super Ljava/lang/Object;
.source "AnnotationCache.java"

# interfaces
.implements Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/AnnotationCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedAnnotationData"
.end annotation


# instance fields
.field private final annotation:Lcom/amazon/kindle/services/sync/AnnotationExport;

.field private annotationAction:I

.field private annotationTime:J


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/services/sync/AnnotationExport;)V
    .locals 2

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotation:Lcom/amazon/kindle/services/sync/AnnotationExport;

    .line 118
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotationTime:J

    return-void
.end method

.method public static timeToTimestamp(J)Ljava/lang/String;
    .locals 3

    .line 286
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 287
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 289
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 290
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 292
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->zeroPadding(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    .line 293
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v2}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->zeroPadding(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    .line 294
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->zeroPadding(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "T"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xb

    .line 296
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->zeroPadding(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xc

    .line 297
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->zeroPadding(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xd

    .line 298
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-static {p0}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->zeroPadding(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static timestampToTime(Ljava/lang/String;)J
    .locals 4

    .line 304
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 306
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    const/4 v3, 0x7

    .line 307
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0x8

    const/16 v3, 0xa

    .line 308
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    const/16 v2, 0xb

    .line 309
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    const/16 v3, 0x10

    .line 310
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0x11

    const/16 v3, 0x13

    .line 311
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    .line 313
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private static zeroPadding(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 277
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 279
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public clone()Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;
    .locals 4

    .line 127
    new-instance v0, Lcom/amazon/kindle/services/sync/AnnotationExport;

    invoke-direct {v0}, Lcom/amazon/kindle/services/sync/AnnotationExport;-><init>()V

    .line 129
    iget-object v1, p0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotation:Lcom/amazon/kindle/services/sync/AnnotationExport;

    iget-object v2, v1, Lcom/amazon/kindle/services/sync/AnnotationExport;->begin:Lcom/amazon/kindle/krx/reader/IPosition;

    iput-object v2, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->begin:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 130
    iget v2, v1, Lcom/amazon/kindle/services/sync/AnnotationExport;->effect:I

    iput v2, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->effect:I

    .line 131
    iget-object v2, v1, Lcom/amazon/kindle/services/sync/AnnotationExport;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    iput-object v2, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 132
    iget v2, v1, Lcom/amazon/kindle/services/sync/AnnotationExport;->page:I

    iput v2, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->page:I

    .line 133
    iget-object v2, v1, Lcom/amazon/kindle/services/sync/AnnotationExport;->pos:Lcom/amazon/kindle/krx/reader/IPosition;

    iput-object v2, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->pos:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 134
    iget-object v2, v1, Lcom/amazon/kindle/services/sync/AnnotationExport;->subject:Ljava/lang/String;

    iput-object v2, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->subject:Ljava/lang/String;

    .line 135
    iget-object v1, v1, Lcom/amazon/kindle/services/sync/AnnotationExport;->state:[B

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->cloneByteArray([B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->state:[B

    .line 136
    iget-object v1, p0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotation:Lcom/amazon/kindle/services/sync/AnnotationExport;

    iget-object v2, v1, Lcom/amazon/kindle/services/sync/AnnotationExport;->text:Ljava/lang/String;

    iput-object v2, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->text:Ljava/lang/String;

    .line 137
    iget v2, v1, Lcom/amazon/kindle/services/sync/AnnotationExport;->type:I

    iput v2, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->type:I

    .line 138
    iget v2, v1, Lcom/amazon/kindle/services/sync/AnnotationExport;->location:I

    iput v2, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->location:I

    .line 140
    invoke-virtual {v1}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getMetadata()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/services/sync/AnnotationExport;->setMetadata(Ljava/util/Map;)V

    .line 143
    new-instance v1, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;-><init>(Lcom/amazon/kindle/services/sync/AnnotationExport;)V

    .line 144
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->getAction()I

    move-result v0

    iput v0, v1, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotationAction:I

    .line 145
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->getTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotationTime:J

    return-object v1
.end method

.method public bridge synthetic clone()Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->clone()Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->clone()Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;

    move-result-object v0

    return-object v0
.end method

.method public cloneModel()Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;
    .locals 4

    .line 341
    new-instance v0, Lcom/amazon/kindle/services/sync/AnnotationExport;

    invoke-direct {v0}, Lcom/amazon/kindle/services/sync/AnnotationExport;-><init>()V

    .line 343
    iget-object v1, p0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotation:Lcom/amazon/kindle/services/sync/AnnotationExport;

    iget-object v2, v1, Lcom/amazon/kindle/services/sync/AnnotationExport;->begin:Lcom/amazon/kindle/krx/reader/IPosition;

    iput-object v2, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->begin:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 344
    iget v2, v1, Lcom/amazon/kindle/services/sync/AnnotationExport;->effect:I

    iput v2, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->effect:I

    .line 345
    iget-object v2, v1, Lcom/amazon/kindle/services/sync/AnnotationExport;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    iput-object v2, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 346
    iget v2, v1, Lcom/amazon/kindle/services/sync/AnnotationExport;->page:I

    iput v2, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->page:I

    .line 347
    iget-object v2, v1, Lcom/amazon/kindle/services/sync/AnnotationExport;->pos:Lcom/amazon/kindle/krx/reader/IPosition;

    iput-object v2, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->pos:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 348
    iget-object v2, v1, Lcom/amazon/kindle/services/sync/AnnotationExport;->subject:Ljava/lang/String;

    iput-object v2, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->subject:Ljava/lang/String;

    .line 349
    iget-object v2, v1, Lcom/amazon/kindle/services/sync/AnnotationExport;->state:[B

    iput-object v2, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->state:[B

    .line 350
    iget-object v2, v1, Lcom/amazon/kindle/services/sync/AnnotationExport;->text:Ljava/lang/String;

    iput-object v2, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->text:Ljava/lang/String;

    .line 351
    iget v2, v1, Lcom/amazon/kindle/services/sync/AnnotationExport;->type:I

    iput v2, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->type:I

    .line 352
    iget v2, v1, Lcom/amazon/kindle/services/sync/AnnotationExport;->location:I

    iput v2, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->location:I

    .line 353
    invoke-virtual {v1}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getMetadata()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/services/sync/AnnotationExport;->setMetadata(Ljava/util/Map;)V

    .line 355
    new-instance v1, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;-><init>(Lcom/amazon/kindle/services/sync/AnnotationExport;)V

    .line 357
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->getAction()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->setAction(I)V

    .line 358
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->setTime(J)V

    return-object v1
.end method

.method public getAction()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotationAction:I

    return v0
.end method

.method public getBegin()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotation:Lcom/amazon/kindle/services/sync/AnnotationExport;

    iget-object v0, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->begin:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getEnd()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotation:Lcom/amazon/kindle/services/sync/AnnotationExport;

    iget-object v0, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getLocation()I
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotation:Lcom/amazon/kindle/services/sync/AnnotationExport;

    iget v0, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->location:I

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

    .line 198
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotation:Lcom/amazon/kindle/services/sync/AnnotationExport;

    invoke-virtual {v0}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getMetadata()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getPos()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotation:Lcom/amazon/kindle/services/sync/AnnotationExport;

    iget-object v0, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->pos:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getState()[B
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotation:Lcom/amazon/kindle/services/sync/AnnotationExport;

    iget-object v0, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->state:[B

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 177
    iget-wide v0, p0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotationTime:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotation:Lcom/amazon/kindle/services/sync/AnnotationExport;

    iget v0, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->type:I

    .line 183
    invoke-static {v0}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getAnnotationDataTypeFromAnnotationExportType(I)I

    move-result v0

    return v0
.end method

.method public getUserText()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotation:Lcom/amazon/kindle/services/sync/AnnotationExport;

    iget-object v0, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(I)V
    .locals 0

    .line 216
    iput p1, p0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotationAction:I

    return-void
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 2

    const-string v0, "create"

    .line 318
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "modify"

    .line 320
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "delete"

    .line 322
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    .line 325
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/application/AnnotationCache;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Forgot to handle a new action type in SerializedAnnotationData::setAction"

    invoke-static {p1, v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;ZLjava/lang/String;)V

    .line 327
    invoke-static {}, Lcom/amazon/kcp/application/AnnotationCache;->access$100()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;ZLjava/lang/String;)V

    .line 331
    :goto_0
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->setAction(I)V

    return-void
.end method

.method public setBegin(Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotation:Lcom/amazon/kindle/services/sync/AnnotationExport;

    iput-object p1, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->begin:Lcom/amazon/kindle/krx/reader/IPosition;

    return-void
.end method

.method public setEnd(Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotation:Lcom/amazon/kindle/services/sync/AnnotationExport;

    iput-object p1, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    return-void
.end method

.method public setLocation(I)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotation:Lcom/amazon/kindle/services/sync/AnnotationExport;

    iput p1, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->location:I

    return-void
.end method

.method public setMetadata(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotation:Lcom/amazon/kindle/services/sync/AnnotationExport;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/services/sync/AnnotationExport;->setMetadata(Ljava/util/Map;)V

    return-void
.end method

.method public setPos(Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotation:Lcom/amazon/kindle/services/sync/AnnotationExport;

    iput-object p1, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->pos:Lcom/amazon/kindle/krx/reader/IPosition;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotation:Lcom/amazon/kindle/services/sync/AnnotationExport;

    invoke-static {p1}, Lcom/amazon/kcp/application/AnnotationCache;->decodeState(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->state:[B

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 265
    iput-wide p1, p0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotationTime:J

    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 2

    .line 335
    invoke-static {p1}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->timestampToTime(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->setTime(J)V

    return-void
.end method

.method public setType(I)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotation:Lcom/amazon/kindle/services/sync/AnnotationExport;

    .line 209
    invoke-static {p1}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getAnnotationExportTypeFromAnnotationDataType(I)I

    move-result p1

    iput p1, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->type:I

    return-void
.end method

.method public setUserText(Ljava/lang/String;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->annotation:Lcom/amazon/kindle/services/sync/AnnotationExport;

    iput-object p1, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->text:Ljava/lang/String;

    return-void
.end method
