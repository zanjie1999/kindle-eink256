.class public final Lcom/amazon/kindle/services/sync/AnnotationExport;
.super Ljava/lang/Object;
.source "AnnotationExport.java"


# static fields
.field public static final BE_COLORING_STYLES:I = 0xf

.field public static final BE_COLORRGB:I = 0xf

.field static final BE_MARGINBAR:I = 0x20

.field private static final BT_ADDEDPAGE:I = 0x8

.field public static final BT_ALL:I = 0x7f

.field private static final BT_ALL_SPAN:I = 0x36

.field private static final BT_ALL_TEXT:I = 0x3f

.field public static final BT_AUDIO:I = 0x40

.field public static final BT_BOOKMARK:I = 0x1

.field public static final BT_CONTINUOUS_READING_PROGRESS:I = 0x800

.field public static final BT_GRAPHICAL_HIGHLIGHT:I = 0x200

.field static final BT_HIDDEN:I = 0x4000

.field public static final BT_HIGHLIGHT:I = 0x4

.field public static final BT_LAST_READ_PAGE:I = 0x80

.field private static final BT_LINK:I = 0x20

.field private static final BT_MODIFICATION:I = 0x10

.field public static final BT_MOST_RECENT_PAGE_READ:I = 0x400

.field public static final BT_NOTE:I = 0x2

.field private static final BT_NOTYPE:I = 0x0

.field public static final BT_RESERVED1:I = 0x100

.field private static final BT_WORD:I = 0x8000

.field public static final SUPPORTED_MASK:I = 0x307


# instance fields
.field public begin:Lcom/amazon/kindle/krx/reader/IPosition;

.field public effect:I

.field public end:Lcom/amazon/kindle/krx/reader/IPosition;

.field public location:I

.field private metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public modifiedTime:J

.field public page:I

.field public pos:Lcom/amazon/kindle/krx/reader/IPosition;

.field public state:[B

.field public subject:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public time:J

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->metadata:Ljava/util/Map;

    .line 193
    new-instance v0, Lcom/amazon/kindle/model/Annotations/IntPosition;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->begin:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 194
    new-instance v0, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 195
    new-instance v0, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->pos:Lcom/amazon/kindle/krx/reader/IPosition;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;IIILjava/lang/String;Ljava/lang/String;[BI)V
    .locals 12

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    .line 244
    invoke-direct/range {v0 .. v11}, Lcom/amazon/kindle/services/sync/AnnotationExport;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;IIILjava/lang/String;Ljava/lang/String;[BILjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;IIILjava/lang/String;Ljava/lang/String;[BILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[BI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->metadata:Ljava/util/Map;

    .line 250
    iput-object p1, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->begin:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 251
    iput-object p2, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 252
    iput-object p3, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->pos:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 253
    iput p4, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->page:I

    .line 254
    iput p5, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->effect:I

    .line 255
    iput p6, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->type:I

    .line 256
    iput-object p7, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->subject:Ljava/lang/String;

    .line 257
    iput-object p8, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->text:Ljava/lang/String;

    .line 258
    iput-object p9, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->state:[B

    .line 259
    iput p10, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->location:I

    .line 260
    invoke-static {p11}, Lcom/amazon/kindle/util/JsonUtils;->unmodifiableDeepCopyOf(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->metadata:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 2

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->metadata:Ljava/util/Map;

    .line 213
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->begin:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 214
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 215
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getPos()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->pos:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 216
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getAction()I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->effect:I

    .line 217
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getAnnotationExportTypeFromAnnotationDataType(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->type:I

    .line 218
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->time:J

    .line 219
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getUserText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->text:Ljava/lang/String;

    .line 220
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->getBookText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->subject:Ljava/lang/String;

    .line 221
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getState()[B

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->state:[B

    .line 222
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getLocation()I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->location:I

    const-wide/16 v0, 0x0

    .line 223
    iput-wide v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->modifiedTime:J

    .line 224
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getMetadata()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/util/JsonUtils;->unmodifiableDeepCopyOf(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->metadata:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;)V
    .locals 2

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->metadata:Ljava/util/Map;

    .line 199
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->begin:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 200
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 201
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getPos()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->pos:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 202
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getAction()I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->effect:I

    .line 203
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getAnnotationExportTypeFromAnnotationDataType(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->type:I

    .line 204
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->time:J

    .line 205
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getUserText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->text:Ljava/lang/String;

    .line 206
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getState()[B

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->state:[B

    .line 207
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getLocation()I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->location:I

    const-wide/16 v0, 0x0

    .line 208
    iput-wide v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->modifiedTime:J

    .line 209
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getMetadata()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/util/JsonUtils;->unmodifiableDeepCopyOf(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->metadata:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/services/sync/AnnotationExport;)V
    .locals 2

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->metadata:Ljava/util/Map;

    .line 228
    iget-object v0, p1, Lcom/amazon/kindle/services/sync/AnnotationExport;->begin:Lcom/amazon/kindle/krx/reader/IPosition;

    iput-object v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->begin:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 229
    iget-object v0, p1, Lcom/amazon/kindle/services/sync/AnnotationExport;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    iput-object v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 230
    iget-object v0, p1, Lcom/amazon/kindle/services/sync/AnnotationExport;->pos:Lcom/amazon/kindle/krx/reader/IPosition;

    iput-object v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->pos:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 231
    iget v0, p1, Lcom/amazon/kindle/services/sync/AnnotationExport;->page:I

    iput v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->page:I

    .line 232
    iget v0, p1, Lcom/amazon/kindle/services/sync/AnnotationExport;->effect:I

    iput v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->effect:I

    .line 233
    iget v0, p1, Lcom/amazon/kindle/services/sync/AnnotationExport;->type:I

    iput v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->type:I

    .line 234
    iget-object v0, p1, Lcom/amazon/kindle/services/sync/AnnotationExport;->subject:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->subject:Ljava/lang/String;

    .line 235
    iget-object v0, p1, Lcom/amazon/kindle/services/sync/AnnotationExport;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->text:Ljava/lang/String;

    .line 236
    iget-object v0, p1, Lcom/amazon/kindle/services/sync/AnnotationExport;->state:[B

    iput-object v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->state:[B

    .line 237
    iget v0, p1, Lcom/amazon/kindle/services/sync/AnnotationExport;->location:I

    iput v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->location:I

    .line 238
    iget-wide v0, p1, Lcom/amazon/kindle/services/sync/AnnotationExport;->modifiedTime:J

    iput-wide v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->modifiedTime:J

    .line 239
    invoke-virtual {p1}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getMetadata()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->metadata:Ljava/util/Map;

    return-void
.end method

.method public static getAnnotationDataTypeFromAnnotationExportType(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v1, 0x2

    if-eq p0, v1, :cond_5

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4

    const/16 v0, 0x80

    if-eq p0, v0, :cond_3

    const/16 v0, 0x200

    if-eq p0, v0, :cond_2

    const/16 v0, 0x400

    if-eq p0, v0, :cond_1

    const/16 v0, 0x800

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 p0, 0x8

    return p0

    :cond_1
    const/16 p0, 0x9

    return p0

    :cond_2
    const/4 p0, 0x7

    return p0

    :cond_3
    const/4 p0, 0x3

    return p0

    :cond_4
    return v1

    :cond_5
    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static getAnnotationExportTypeFromAnnotationDataType(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_6

    const/4 v1, 0x2

    if-eq p0, v0, :cond_5

    if-eq p0, v1, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x7

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 p0, 0x400

    return p0

    :cond_1
    const/16 p0, 0x800

    return p0

    :cond_2
    const/16 p0, 0x200

    return p0

    :cond_3
    const/16 p0, 0x80

    return p0

    :cond_4
    const/4 p0, 0x4

    return p0

    :cond_5
    return v1

    :cond_6
    return v0
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .line 272
    iget v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->effect:I

    return v0
.end method

.method public getBegin()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->begin:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getEnd()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getLocation()I
    .locals 1

    .line 300
    iget v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->location:I

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

    .line 304
    iget-object v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public getModifiedTime()J
    .locals 2

    .line 296
    iget-wide v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->modifiedTime:J

    return-wide v0
.end method

.method public getPos()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->pos:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getState()[B
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->state:[B

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 292
    iget-wide v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->time:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 268
    iget v0, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->type:I

    return v0
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

    .line 308
    invoke-static {p1}, Lcom/amazon/kindle/util/JsonUtils;->unmodifiableDeepCopyOf(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/services/sync/AnnotationExport;->metadata:Ljava/util/Map;

    return-void
.end method
