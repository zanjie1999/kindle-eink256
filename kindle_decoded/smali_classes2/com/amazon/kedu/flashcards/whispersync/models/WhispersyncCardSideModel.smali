.class public Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;
.super Lcom/amazon/kedu/flashcards/models/CardSideModel;
.source "WhispersyncCardSideModel.java"


# static fields
.field private static final EMPTY_GHL_POSITION:I = 0x0

.field private static final GEOMETRIC_COORD_BITS_X:I = 0x9

.field private static final GEOMETRIC_COORD_BITS_Y:I = 0xa

.field private static final GEOMETRIC_COORD_MAX_X:I = 0x1ff

.field private static final GEOMETRIC_COORD_MAX_Y:I = 0x3ff

.field private static final JSON_CARDEND:Ljava/lang/String; = "end"

.field private static final JSON_CARDSTART:Ljava/lang/String; = "start"

.field private static final JSON_CARDTEXT:Ljava/lang/String; = "text"

.field private static final JSON_CARDTYPE:Ljava/lang/String; = "type"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/amazon/kedu/flashcards/models/CardSideModel;-><init>(Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 1

    const-string v0, ""

    .line 50
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/amazon/kedu/flashcards/models/CardSideModel;-><init>(Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/amazon/kedu/flashcards/models/CardSideModel;-><init>(Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    return-void
.end method

.method private static convertMoPGHLToPosition(JZ)Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kedu/flashcards/data/PositionConversionException;
        }
    .end annotation

    .line 69
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getGHLPositionFactory()Lcom/amazon/kindle/krx/reader/IGHLPositionFactory;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x13

    ushr-long v1, p0, v1

    const-wide/16 v3, 0x1fff

    and-long/2addr v1, v3

    long-to-int v2, v1

    const/4 v1, 0x1

    sub-int/2addr v2, v1

    .line 76
    invoke-static {v2}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;->isPageInBook(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    invoke-static {p0, p1}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;->extractOffsetFromMoPGHL(J)Landroid/graphics/PointF;

    move-result-object p0

    if-eqz p2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 84
    iget p2, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/PointF;->y:F

    .line 89
    :cond_0
    invoke-interface {v0, v2, p0}, Lcom/amazon/kindle/krx/reader/IGHLPositionFactory;->createFromIndexAndOffset(ILandroid/graphics/PointF;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p0

    return-object p0

    .line 78
    :cond_1
    new-instance p2, Lcom/amazon/kedu/flashcards/data/PositionConversionException;

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "page %d is not in book"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, p1, v0}, Lcom/amazon/kedu/flashcards/data/PositionConversionException;-><init>(JLjava/lang/String;)V

    throw p2

    .line 72
    :cond_2
    new-instance p2, Lcom/amazon/kedu/flashcards/data/PositionConversionException;

    const-string v0, "no position factory"

    invoke-direct {p2, p0, p1, v0}, Lcom/amazon/kedu/flashcards/data/PositionConversionException;-><init>(JLjava/lang/String;)V

    throw p2
.end method

.method private static convertPositionToMoPGHL(Lcom/amazon/kindle/krx/reader/IPosition;)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kedu/flashcards/data/PositionConversionException;
        }
    .end annotation

    .line 95
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getGHLPositionFactory()Lcom/amazon/kindle/krx/reader/IGHLPositionFactory;

    move-result-object v0

    if-eqz p0, :cond_1

    if-eqz v0, :cond_0

    .line 105
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookContent()Lcom/amazon/kindle/krx/content/IBookContent;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/amazon/kindle/krx/content/IBookContent;->getPageIndexFromPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v1, v1

    .line 106
    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/reader/IGHLPositionFactory;->extractOffsetFromPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Landroid/graphics/PointF;

    move-result-object p0

    .line 107
    iget v0, p0, Landroid/graphics/PointF;->x:F

    const v3, 0x43ff8000    # 511.0f

    mul-float v0, v0, v3

    float-to-long v3, v0

    .line 108
    iget p0, p0, Landroid/graphics/PointF;->y:F

    const v0, 0x447fc000    # 1023.0f

    mul-float p0, p0, v0

    float-to-long v5, p0

    const-wide/16 v7, 0x1fff

    and-long v0, v1, v7

    const/16 p0, 0x13

    shl-long/2addr v0, p0

    const-wide/16 v7, 0x1ff

    and-long v2, v3, v7

    const/16 p0, 0xa

    shl-long/2addr v2, p0

    or-long/2addr v0, v2

    const-wide/16 v2, 0x3ff

    and-long/2addr v2, v5

    or-long/2addr v0, v2

    return-wide v0

    .line 102
    :cond_0
    new-instance v0, Lcom/amazon/kedu/flashcards/data/PositionConversionException;

    const-string v1, "no position factory"

    invoke-direct {v0, p0, v1}, Lcom/amazon/kedu/flashcards/data/PositionConversionException;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    new-instance p0, Lcom/amazon/kedu/flashcards/data/PositionConversionException;

    const/4 v0, 0x0

    const-string v1, "null position"

    invoke-direct {p0, v0, v1}, Lcom/amazon/kedu/flashcards/data/PositionConversionException;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Ljava/lang/String;)V

    throw p0
.end method

.method private static extractOffsetFromMoPGHL(J)Landroid/graphics/PointF;
    .locals 4

    const/16 v0, 0xa

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1ff

    and-long/2addr v0, v2

    const-wide/16 v2, 0x3ff

    and-long/2addr p0, v2

    .line 121
    new-instance v2, Landroid/graphics/PointF;

    long-to-float v0, v0

    const v1, 0x43ff8000    # 511.0f

    div-float/2addr v0, v1

    long-to-float p0, p0

    const p1, 0x447fc000    # 1023.0f

    div-float/2addr p0, p1

    invoke-direct {v2, v0, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kedu/flashcards/data/PositionConversionException;
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    invoke-direct {v0}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;-><init>()V

    .line 56
    invoke-virtual {v0, p0}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;->setJSONObject(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method private static isPageInBook(I)Z
    .locals 2

    .line 134
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 136
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookPageNumberManager()Lcom/amazon/kindle/krx/reader/IPageNumberManager;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 137
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPageNumberManager;->getTotalPages()I

    move-result v0

    if-ge p0, v0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method public getJSONObject()Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/amazon/kedu/flashcards/data/PositionConversionException;
        }
    .end annotation

    .line 142
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 143
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->getType()Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    .line 147
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    .line 149
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->getType()Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    move-result-object v3

    sget-object v4, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->GHL:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    const-string v5, "end"

    const-string v6, "start"

    if-ne v3, v4, :cond_0

    .line 151
    invoke-static {v1}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;->convertPositionToMoPGHL(Lcom/amazon/kindle/krx/reader/IPosition;)J

    move-result-wide v3

    invoke-virtual {v0, v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 152
    invoke-static {v2}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;->convertPositionToMoPGHL(Lcom/amazon/kindle/krx/reader/IPosition;)J

    move-result-wide v1

    invoke-virtual {v0, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 156
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->toSerializableString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v2, :cond_2

    .line 157
    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->toSerializableString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2
    return-object v0
.end method

.method public setJSONObject(Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kedu/flashcards/data/PositionConversionException;
        }
    .end annotation

    const-string v0, "text"

    const-string/jumbo v1, "type"

    .line 165
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v2

    if-eqz p1, :cond_9

    if-eqz v2, :cond_9

    .line 170
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->fromString(Ljava/lang/String;)Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->CUSTOM:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->setType(Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;)V

    .line 171
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    invoke-virtual {p0, v0}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->setText(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->getType()Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    move-result-object v0

    sget-object v1, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->GHL:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "end"

    const-string v5, "start"

    if-ne v0, v1, :cond_6

    .line 180
    :try_start_2
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_2

    :cond_2
    move-wide v5, v1

    .line 181
    :goto_2
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_3

    :cond_3
    move-wide v3, v1

    :goto_3
    const/4 p1, 0x0

    cmp-long v0, v5, v1

    if-nez v0, :cond_4

    cmp-long v0, v3, v1

    if-eqz v0, :cond_5

    .line 186
    :cond_4
    invoke-static {v5, v6}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;->extractOffsetFromMoPGHL(J)Landroid/graphics/PointF;

    move-result-object v0

    .line 187
    invoke-static {v3, v4}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;->extractOffsetFromMoPGHL(J)Landroid/graphics/PointF;

    move-result-object v1

    .line 189
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    const/4 p1, 0x1

    .line 195
    :cond_5
    invoke-static {v5, v6, p1}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;->convertMoPGHLToPosition(JZ)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->setStart(Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 196
    invoke-static {v3, v4, p1}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;->convertMoPGHLToPosition(JZ)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->setEnd(Lcom/amazon/kindle/krx/reader/IPosition;)V

    goto :goto_5

    .line 200
    :cond_6
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_7
    move-object v0, v3

    :goto_4
    invoke-interface {v2, v0}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromSerializedString(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->setStart(Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 201
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_8
    invoke-interface {v2, v3}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromSerializedString(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->setEnd(Lcom/amazon/kindle/krx/reader/IPosition;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_9
    :goto_5
    return-void
.end method
