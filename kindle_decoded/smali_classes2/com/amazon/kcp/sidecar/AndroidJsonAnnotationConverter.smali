.class public Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;
.super Ljava/lang/Object;
.source "AndroidJsonAnnotationConverter.java"

# interfaces
.implements Lcom/amazon/kcp/sidecar/IJsonAnnotationConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kcp/sidecar/IJsonAnnotationConverter<",
        "Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;",
        ">;"
    }
.end annotation


# static fields
.field private static final STRING_DATE_FALLBACK:Ljava/lang/String; = "1970-01-01 00:00:01.0"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addJsonStartSection(Lorg/json/JSONObject;Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 271
    invoke-virtual {p2}, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->getMd5()Ljava/lang/String;

    move-result-object v0

    const-string v1, "md5"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "payload"

    .line 273
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    invoke-virtual {p2}, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    invoke-virtual {p2}, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->getType()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    invoke-virtual {p2}, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->getGuid()Ljava/lang/String;

    move-result-object p1

    const-string v1, "guid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    invoke-virtual {p2}, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->getAcr()Ljava/lang/String;

    move-result-object p1

    const-string p2, "acr"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private static convertLongToStringDate(J)Ljava/lang/String;
    .locals 3

    .line 256
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.S"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 257
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 258
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertStringDateToLong(Ljava/lang/String;)J
    .locals 3

    .line 236
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.S"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 239
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0

    .line 241
    :catch_0
    sget-object v0, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while parsing date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private createJsonFromAnnotation(Lcom/amazon/kindle/services/sync/AnnotationExport;)Lorg/json/JSONObject;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 291
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 292
    invoke-virtual {p1}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getType()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "startPositionLF"

    const-string v4, "subject"

    const-string v5, "startPosition"

    const-string v6, "lastModificationTime"

    const-string/jumbo v7, "type"

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    const-string v8, "endPositionLF"

    const-string v9, "endPosition"

    const-string v10, "creationTime"

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/16 v2, 0x80

    const-string v3, "location"

    if-eq v1, v2, :cond_2

    const/16 v2, 0x400

    if-eq v1, v2, :cond_1

    const/16 v2, 0x800

    if-eq v1, v2, :cond_0

    .line 352
    sget-object v2, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid annotation type while writing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "kindle.continuous_read"

    .line 337
    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 338
    invoke-virtual {p1}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getPos()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    invoke-virtual {p1}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;->convertLongToStringDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;->convertLongToStringDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_1
    const-string v1, "kindle.most_recent_read"

    .line 344
    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    invoke-virtual {p1}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getPos()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    invoke-virtual {p1}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;->convertLongToStringDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;->convertLongToStringDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_2
    const-string v1, "kindle.lpr"

    .line 330
    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    invoke-virtual {p1}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getPos()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 332
    invoke-virtual {p1}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;->convertLongToStringDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;->convertLongToStringDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_3
    const-string v1, "kindle.highlight"

    .line 309
    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    invoke-virtual {p1}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    invoke-virtual {p1}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    invoke-virtual {p1}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "startLFPosition"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    invoke-virtual {p1}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    iget-object v1, p1, Lcom/amazon/kindle/services/sync/AnnotationExport;->subject:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    invoke-virtual {p1}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;->convertLongToStringDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;->convertLongToStringDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_4
    const-string v1, "kindle.note"

    .line 297
    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    invoke-virtual {p1}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 299
    invoke-virtual {p1}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    invoke-virtual {p1}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    invoke-virtual {p1}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    invoke-virtual {p1}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    invoke-virtual {p1}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;->convertLongToStringDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;->convertLongToStringDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_5
    const-string v1, "kindle.bookmark"

    .line 321
    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    iget-object v1, p1, Lcom/amazon/kindle/services/sync/AnnotationExport;->subject:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    invoke-virtual {p1}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    invoke-virtual {p1}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;->convertLongToStringDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getMetadata()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getMetadata()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 357
    invoke-virtual {p1}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getMetadata()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/util/JsonUtils;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "metadata"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    return-object v0
.end method

.method private parseSingleJsonRecord(Lorg/json/JSONObject;Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;)Lcom/amazon/kindle/services/sync/AnnotationExport;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string/jumbo v2, "type"

    .line 94
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kindle.note"

    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/16 v5, 0x400

    const/16 v6, 0x200

    const/16 v7, 0x80

    const/4 v8, 0x1

    const/4 v9, 0x4

    const/4 v10, 0x2

    const/4 v11, -0x1

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const-string v3, "kindle.highlight"

    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const-string v3, "kindle.bookmark"

    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "kindle.lpr"

    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v2, 0x80

    goto :goto_0

    :cond_3
    const-string v3, "kindle.most_recent_read"

    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v2, 0x400

    goto :goto_0

    :cond_4
    const-string v3, "kindle.continuous_read"

    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v2, 0x800

    goto :goto_0

    :cond_5
    const-string v3, "kindle.graphical_highlight"

    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x200

    goto :goto_0

    :cond_6
    const/4 v2, -0x1

    .line 113
    :goto_0
    new-instance v15, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {v15, v11}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    const-string v3, "subject"

    const-string v13, "startPosition"

    const-string v14, "metadata"

    const-string v12, "1970-01-01 00:00:01.0"

    const-string v11, "lastModificationTime"

    if-eq v2, v8, :cond_e

    const-string v8, "endPosition"

    const-string v4, "creationTime"

    if-eq v2, v10, :cond_d

    if-eq v2, v9, :cond_c

    const-string v3, "location"

    if-eq v2, v7, :cond_b

    if-eq v2, v6, :cond_9

    if-eq v2, v5, :cond_8

    const/16 v5, 0x800

    if-eq v2, v5, :cond_7

    .line 219
    sget-object v0, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Annotation Type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    goto/16 :goto_2

    .line 204
    :cond_7
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 205
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;->convertStringDateToLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 206
    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;->convertStringDateToLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 207
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/JsonUtils;->parseJsonMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v23

    .line 209
    new-instance v0, Lcom/amazon/kindle/services/sync/AnnotationExport;

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v12, v0

    move-object v13, v15

    move-object v14, v15

    move/from16 v18, v2

    move/from16 v22, v3

    invoke-direct/range {v12 .. v23}, Lcom/amazon/kindle/services/sync/AnnotationExport;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;IIILjava/lang/String;Ljava/lang/String;[BILjava/util/Map;)V

    .line 211
    iput-wide v4, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->time:J

    .line 212
    iput-wide v6, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->modifiedTime:J

    .line 214
    invoke-virtual {v1, v3}, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->setCrp(I)V

    goto/16 :goto_2

    .line 176
    :cond_8
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 177
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;->convertStringDateToLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 178
    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;->convertStringDateToLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 179
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/JsonUtils;->parseJsonMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v23

    .line 180
    new-instance v0, Lcom/amazon/kindle/services/sync/AnnotationExport;

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v12, v0

    move-object v13, v15

    move-object v14, v15

    move/from16 v18, v2

    move/from16 v22, v3

    invoke-direct/range {v12 .. v23}, Lcom/amazon/kindle/services/sync/AnnotationExport;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;IIILjava/lang/String;Ljava/lang/String;[BILjava/util/Map;)V

    .line 182
    iput-wide v4, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->time:J

    .line 183
    iput-wide v6, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->modifiedTime:J

    .line 185
    invoke-virtual {v1, v3}, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->setMrpr(I)V

    goto/16 :goto_2

    :cond_9
    const-string v1, "startLongPosition"

    .line 146
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "endLongPosition"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 147
    new-instance v5, Lcom/amazon/kindle/model/Annotations/ReaderPosition;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v6, -0x1

    invoke-direct {v5, v6, v1}, Lcom/amazon/kindle/model/Annotations/ReaderPosition;-><init>(ILjava/lang/String;)V

    .line 148
    new-instance v1, Lcom/amazon/kindle/model/Annotations/ReaderPosition;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v6, v3}, Lcom/amazon/kindle/model/Annotations/ReaderPosition;-><init>(ILjava/lang/String;)V

    move-object v15, v5

    goto :goto_1

    :cond_a
    const/4 v6, -0x1

    .line 150
    new-instance v1, Lcom/amazon/kindle/model/Annotations/ReaderPosition;

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v6, v3}, Lcom/amazon/kindle/model/Annotations/ReaderPosition;-><init>(ILjava/lang/String;)V

    .line 151
    new-instance v3, Lcom/amazon/kindle/model/Annotations/ReaderPosition;

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v6, v5}, Lcom/amazon/kindle/model/Annotations/ReaderPosition;-><init>(ILjava/lang/String;)V

    move-object v15, v1

    move-object v1, v3

    .line 153
    :goto_1
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;->convertStringDateToLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 154
    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;->convertStringDateToLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 155
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/JsonUtils;->parseJsonMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v23

    .line 157
    new-instance v0, Lcom/amazon/kindle/services/sync/AnnotationExport;

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    move-object v12, v0

    move-object v13, v15

    move-object v14, v1

    move/from16 v18, v2

    invoke-direct/range {v12 .. v23}, Lcom/amazon/kindle/services/sync/AnnotationExport;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;IIILjava/lang/String;Ljava/lang/String;[BILjava/util/Map;)V

    .line 158
    iput-wide v3, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->time:J

    .line 159
    iput-wide v5, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->modifiedTime:J

    goto/16 :goto_2

    .line 190
    :cond_b
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 191
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;->convertStringDateToLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 192
    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;->convertStringDateToLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 193
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/JsonUtils;->parseJsonMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v23

    .line 194
    new-instance v0, Lcom/amazon/kindle/services/sync/AnnotationExport;

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v12, v0

    move-object v13, v15

    move-object v14, v15

    move/from16 v18, v2

    move/from16 v22, v3

    invoke-direct/range {v12 .. v23}, Lcom/amazon/kindle/services/sync/AnnotationExport;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;IIILjava/lang/String;Ljava/lang/String;[BILjava/util/Map;)V

    .line 196
    iput-wide v4, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->time:J

    .line 197
    iput-wide v6, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->modifiedTime:J

    .line 199
    invoke-virtual {v1, v3}, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->setLastReadPosition(I)V

    goto/16 :goto_2

    .line 131
    :cond_c
    new-instance v15, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v15, v1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    .line 132
    new-instance v1, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    const/4 v5, 0x0

    .line 133
    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 134
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;->convertStringDateToLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 135
    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;->convertStringDateToLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 136
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/JsonUtils;->parseJsonMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v23

    .line 138
    new-instance v0, Lcom/amazon/kindle/services/sync/AnnotationExport;

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    move-object v12, v0

    move-object v13, v15

    move-object v14, v1

    move/from16 v18, v2

    invoke-direct/range {v12 .. v23}, Lcom/amazon/kindle/services/sync/AnnotationExport;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;IIILjava/lang/String;Ljava/lang/String;[BILjava/util/Map;)V

    .line 139
    iput-wide v3, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->time:J

    .line 140
    iput-wide v5, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->modifiedTime:J

    goto/16 :goto_2

    .line 117
    :cond_d
    new-instance v15, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v15, v1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    .line 118
    new-instance v1, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v3}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    const-string v3, "text"

    .line 119
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 120
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;->convertStringDateToLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 121
    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;->convertStringDateToLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 122
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/JsonUtils;->parseJsonMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v23

    .line 124
    new-instance v0, Lcom/amazon/kindle/services/sync/AnnotationExport;

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    move-object v12, v0

    move-object v13, v15

    move-object v14, v1

    move/from16 v18, v2

    invoke-direct/range {v12 .. v23}, Lcom/amazon/kindle/services/sync/AnnotationExport;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;IIILjava/lang/String;Ljava/lang/String;[BILjava/util/Map;)V

    .line 125
    iput-wide v3, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->time:J

    .line 126
    iput-wide v5, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->modifiedTime:J

    goto :goto_2

    .line 164
    :cond_e
    new-instance v15, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v15, v1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    const/4 v1, 0x0

    .line 165
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 166
    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;->convertStringDateToLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 167
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/JsonUtils;->parseJsonMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v23

    .line 169
    new-instance v0, Lcom/amazon/kindle/services/sync/AnnotationExport;

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    move-object v12, v0

    move-object v13, v15

    move-object v14, v15

    move/from16 v18, v2

    invoke-direct/range {v12 .. v23}, Lcom/amazon/kindle/services/sync/AnnotationExport;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;IIILjava/lang/String;Ljava/lang/String;[BILjava/util/Map;)V

    .line 170
    iput-wide v3, v0, Lcom/amazon/kindle/services/sync/AnnotationExport;->modifiedTime:J

    :goto_2
    return-object v12
.end method


# virtual methods
.method public fromJson(Ljava/lang/String;)Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 50
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "payload"

    .line 56
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 58
    new-instance v10, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;

    const-string v4, "md5"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "key"

    .line 59
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v2, "type"

    .line 60
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "guid"

    .line 61
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "acr"

    .line 62
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "records"

    .line 64
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 65
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 66
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, v4, v10}, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;->parseSingleJsonRecord(Lorg/json/JSONObject;Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;)Lcom/amazon/kindle/services/sync/AnnotationExport;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 72
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {v10, v1}, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->setAnnotationList(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    :catch_0
    move-exception v1

    .line 76
    sget-object v2, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while trying to parse JSON based on String: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "line.separator"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic fromJson(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;->fromJson(Ljava/lang/String;)Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;

    move-result-object p1

    return-object p1
.end method

.method public toJson(Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;)Ljava/lang/String;
    .locals 4

    .line 25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 28
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;->addJsonStartSection(Lorg/json/JSONObject;Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;)Lorg/json/JSONObject;

    move-result-object v1

    .line 29
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "records"

    .line 30
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    invoke-virtual {p1}, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->getAnnotationList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/services/sync/AnnotationExport;

    .line 33
    invoke-direct {p0, v1}, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;->createJsonFromAnnotation(Lcom/amazon/kindle/services/sync/AnnotationExport;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 35
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 37
    sget-object v0, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while constructing JSONObject from local data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 19
    check-cast p1, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;->toJson(Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
