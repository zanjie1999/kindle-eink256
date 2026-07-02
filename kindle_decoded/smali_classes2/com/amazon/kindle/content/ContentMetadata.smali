.class public Lcom/amazon/kindle/content/ContentMetadata;
.super Ljava/lang/Object;
.source "ContentMetadata.java"

# interfaces
.implements Lcom/amazon/kindle/model/content/IListableBook;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final dateFormatter:Ljava/text/SimpleDateFormat;


# instance fields
.field private archivable:Z

.field private asinCount:I

.field private authorPronunciation:Ljava/lang/String;

.field private authors:Ljava/lang/String;

.field private campaignSlot:Ljava/lang/String;

.field private cdeErrorCode:Ljava/lang/String;

.field private contentTags:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private deliveryDate:J

.field private dictionaryType:Lcom/amazon/kindle/model/content/DictionaryType;

.field private error:I

.field private errorLink:Ljava/lang/String;

.field private errorLinkTitle:Ljava/lang/String;

.field private errorMessage:Ljava/lang/String;

.field private errorTitle:Ljava/lang/String;

.field private extendedMetadata:Lcom/amazon/kindle/content/ExtendedMetadataWrapper;

.field private groupItemPosition:Ljava/lang/String;

.field private groupType:Lcom/amazon/kcp/library/models/SeriesGroupType;

.field private hasMultimediaContent:Z

.field private hasReadAloneTitle:Z

.field private hasXray:Z

.field private id:Lcom/amazon/kindle/model/content/IBookID;

.field private isComic:Z

.field private isDownloadedFromRemoteTodo:Z

.field private isFalkorEpisode:Z

.field private isFreeFalkorContent:Z

.field private isHidden:Z

.field private isKept:Z

.field private isMostRecentIssue:Z

.field private isOpenForReading:Z

.field private language:Ljava/lang/String;

.field private localBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

.field private localContent:Lcom/amazon/kindle/content/LocalContent;

.field private orderRank:I

.field private originType:Ljava/lang/String;

.field private parentAsin:Ljava/lang/String;

.field private publicationDate:J

.field private publisher:Ljava/lang/String;

.field private readData:Lcom/amazon/kindle/content/ReadData;

.field private seriesOrderType:Lcom/amazon/kcp/library/models/SeriesOrderType;

.field private shareOriginId:Ljava/lang/String;

.field private shouldDisplayCDEError:Z

.field private sortAuthorLock:Ljava/lang/Object;

.field private sortTitleLock:Ljava/lang/Object;

.field private sortableAuthor:Ljava/lang/String;

.field private sortableTitle:Ljava/lang/String;

.field private state:Lcom/amazon/kindle/model/content/ContentState;

.field private title:Ljava/lang/String;

.field private titleDetailsJson:Ljava/lang/String;

.field private titlePronunciation:Ljava/lang/String;

.field private type:Lcom/amazon/kcp/library/models/BookType;

.field userContent:Lcom/amazon/kindle/content/UserContent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    const-class v0, Lcom/amazon/kindle/content/ContentMetadata;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/content/ContentMetadata;->TAG:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/content/ContentMetadata;->dateFormatter:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    sget-object v0, Lcom/amazon/kcp/library/models/SeriesOrderType;->UNORDERED:Lcom/amazon/kcp/library/models/SeriesOrderType;

    iput-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->seriesOrderType:Lcom/amazon/kcp/library/models/SeriesOrderType;

    const-string v0, ""

    .line 90
    iput-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->shareOriginId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 157
    iput-boolean v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->isOpenForReading:Z

    const/4 v1, 0x0

    .line 159
    iput-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->titlePronunciation:Ljava/lang/String;

    .line 161
    iput-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->authorPronunciation:Ljava/lang/String;

    .line 163
    iput-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->sortableTitle:Ljava/lang/String;

    .line 165
    iput-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->sortableAuthor:Ljava/lang/String;

    .line 167
    iput-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->campaignSlot:Ljava/lang/String;

    .line 171
    iput-boolean v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->hasMultimediaContent:Z

    .line 182
    iput-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->localContent:Lcom/amazon/kindle/content/LocalContent;

    .line 187
    iput-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->userContent:Lcom/amazon/kindle/content/UserContent;

    .line 192
    iput-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->localBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 197
    sget-object v0, Lcom/amazon/kindle/model/content/DictionaryType;->NONE:Lcom/amazon/kindle/model/content/DictionaryType;

    iput-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->dictionaryType:Lcom/amazon/kindle/model/content/DictionaryType;

    const/4 v0, 0x1

    .line 202
    iput v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->asinCount:I

    .line 207
    sget-object v0, Lcom/amazon/kcp/library/models/SeriesGroupType;->NONE:Lcom/amazon/kcp/library/models/SeriesGroupType;

    iput-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->groupType:Lcom/amazon/kcp/library/models/SeriesGroupType;

    .line 213
    iput-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->groupItemPosition:Ljava/lang/String;

    .line 219
    iput-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->extendedMetadata:Lcom/amazon/kindle/content/ExtendedMetadataWrapper;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZILcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kindle/content/LocalContent;Lcom/amazon/kindle/content/UserContent;)V
    .locals 13

    move-object v12, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p11

    move/from16 v11, p10

    .line 356
    invoke-direct/range {v0 .. v11}, Lcom/amazon/kindle/content/ContentMetadata;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLcom/amazon/kindle/model/content/ContentState;I)V

    move-object/from16 v0, p12

    .line 358
    iput-object v0, v12, Lcom/amazon/kindle/content/ContentMetadata;->localContent:Lcom/amazon/kindle/content/LocalContent;

    move-object/from16 v0, p13

    .line 359
    iput-object v0, v12, Lcom/amazon/kindle/content/ContentMetadata;->userContent:Lcom/amazon/kindle/content/UserContent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLcom/amazon/kindle/model/content/ContentState;I)V
    .locals 2

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    sget-object v0, Lcom/amazon/kcp/library/models/SeriesOrderType;->UNORDERED:Lcom/amazon/kcp/library/models/SeriesOrderType;

    iput-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->seriesOrderType:Lcom/amazon/kcp/library/models/SeriesOrderType;

    const-string v0, ""

    .line 90
    iput-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->shareOriginId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 157
    iput-boolean v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->isOpenForReading:Z

    const/4 v1, 0x0

    .line 159
    iput-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->titlePronunciation:Ljava/lang/String;

    .line 161
    iput-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->authorPronunciation:Ljava/lang/String;

    .line 163
    iput-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->sortableTitle:Ljava/lang/String;

    .line 165
    iput-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->sortableAuthor:Ljava/lang/String;

    .line 167
    iput-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->campaignSlot:Ljava/lang/String;

    .line 171
    iput-boolean v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->hasMultimediaContent:Z

    .line 182
    iput-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->localContent:Lcom/amazon/kindle/content/LocalContent;

    .line 187
    iput-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->userContent:Lcom/amazon/kindle/content/UserContent;

    .line 192
    iput-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->localBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 197
    sget-object v0, Lcom/amazon/kindle/model/content/DictionaryType;->NONE:Lcom/amazon/kindle/model/content/DictionaryType;

    iput-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->dictionaryType:Lcom/amazon/kindle/model/content/DictionaryType;

    const/4 v0, 0x1

    .line 202
    iput v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->asinCount:I

    .line 207
    sget-object v0, Lcom/amazon/kcp/library/models/SeriesGroupType;->NONE:Lcom/amazon/kcp/library/models/SeriesGroupType;

    iput-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->groupType:Lcom/amazon/kcp/library/models/SeriesGroupType;

    .line 213
    iput-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->groupItemPosition:Ljava/lang/String;

    .line 219
    iput-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->extendedMetadata:Lcom/amazon/kindle/content/ExtendedMetadataWrapper;

    .line 244
    invoke-static {p1}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->id:Lcom/amazon/kindle/model/content/IBookID;

    .line 245
    iput-object p2, p0, Lcom/amazon/kindle/content/ContentMetadata;->type:Lcom/amazon/kcp/library/models/BookType;

    .line 246
    iput-object p3, p0, Lcom/amazon/kindle/content/ContentMetadata;->title:Ljava/lang/String;

    .line 247
    iput-object p4, p0, Lcom/amazon/kindle/content/ContentMetadata;->authors:Ljava/lang/String;

    .line 248
    iput-object p5, p0, Lcom/amazon/kindle/content/ContentMetadata;->publisher:Ljava/lang/String;

    .line 249
    iput-wide p6, p0, Lcom/amazon/kindle/content/ContentMetadata;->publicationDate:J

    .line 250
    iput-object p8, p0, Lcom/amazon/kindle/content/ContentMetadata;->language:Ljava/lang/String;

    .line 251
    iput-boolean p9, p0, Lcom/amazon/kindle/content/ContentMetadata;->archivable:Z

    .line 252
    iput p11, p0, Lcom/amazon/kindle/content/ContentMetadata;->error:I

    .line 253
    iput-object p10, p0, Lcom/amazon/kindle/content/ContentMetadata;->state:Lcom/amazon/kindle/model/content/ContentState;

    .line 254
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->sortTitleLock:Ljava/lang/Object;

    .line 255
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->sortAuthorLock:Ljava/lang/Object;

    .line 256
    new-instance p1, Lcom/amazon/kindle/content/ReadData;

    sget-object p2, Lcom/amazon/kindle/krx/content/IBook$ReadState;->UNREAD:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    sget-object p3, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;->OTHER:Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    invoke-direct {p1, p2, p3}, Lcom/amazon/kindle/content/ReadData;-><init>(Lcom/amazon/kindle/krx/content/IBook$ReadState;Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;)V

    iput-object p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->readData:Lcom/amazon/kindle/content/ReadData;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZILjava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kindle/content/LocalContent;Lcom/amazon/kindle/content/UserContent;ZZ)V
    .locals 15

    move-object v14, p0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move/from16 v9, p10

    move/from16 v10, p11

    move-object/from16 v11, p14

    move-object/from16 v12, p15

    move-object/from16 v13, p16

    .line 367
    invoke-direct/range {v0 .. v13}, Lcom/amazon/kindle/content/ContentMetadata;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZILcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kindle/content/LocalContent;Lcom/amazon/kindle/content/UserContent;)V

    move-object/from16 v0, p12

    .line 369
    iput-object v0, v14, Lcom/amazon/kindle/content/ContentMetadata;->errorMessage:Ljava/lang/String;

    move-object/from16 v0, p13

    .line 370
    iput-object v0, v14, Lcom/amazon/kindle/content/ContentMetadata;->errorTitle:Ljava/lang/String;

    move/from16 v0, p9

    .line 371
    iput-boolean v0, v14, Lcom/amazon/kindle/content/ContentMetadata;->isKept:Z

    move/from16 v0, p17

    .line 372
    iput-boolean v0, v14, Lcom/amazon/kindle/content/ContentMetadata;->isDownloadedFromRemoteTodo:Z

    move/from16 v0, p18

    .line 373
    iput-boolean v0, v14, Lcom/amazon/kindle/content/ContentMetadata;->isMostRecentIssue:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kindle/content/LocalContent;Lcom/amazon/kindle/content/UserContent;ZZ)V
    .locals 19

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p18

    move-object/from16 v15, p19

    move-object/from16 v16, p20

    move/from16 v17, p21

    move/from16 v18, p22

    .line 381
    invoke-direct/range {v0 .. v18}, Lcom/amazon/kindle/content/ContentMetadata;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZILjava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kindle/content/LocalContent;Lcom/amazon/kindle/content/UserContent;ZZ)V

    move-object/from16 v1, p14

    .line 385
    iput-object v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->errorLink:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 386
    iput-object v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->errorLinkTitle:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 387
    iput-object v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->cdeErrorCode:Ljava/lang/String;

    move/from16 v1, p17

    .line 388
    iput-boolean v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->shouldDisplayCDEError:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JJ)V
    .locals 27

    move-object/from16 v12, p0

    .line 290
    sget-object v10, Lcom/amazon/kindle/model/content/ContentState;->REMOTE:Lcom/amazon/kindle/model/content/ContentState;

    const/4 v9, 0x1

    const/4 v11, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v11}, Lcom/amazon/kindle/content/ContentMetadata;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLcom/amazon/kindle/model/content/ContentState;I)V

    move-object/from16 v0, p3

    .line 291
    iput-object v0, v12, Lcom/amazon/kindle/content/ContentMetadata;->contentType:Ljava/lang/String;

    .line 292
    new-instance v0, Lcom/amazon/kindle/content/UserContent;

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const-wide/16 v20, -0x1

    const-string v22, "-1"

    const-string v23, "-1"

    const-string v24, ""

    move-object v13, v0

    move-object/from16 v14, p10

    move-wide/from16 v15, p11

    move-wide/from16 v25, p13

    invoke-direct/range {v13 .. v26}, Lcom/amazon/kindle/content/UserContent;-><init>(Ljava/lang/String;JIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iput-object v0, v12, Lcom/amazon/kindle/content/ContentMetadata;->userContent:Lcom/amazon/kindle/content/UserContent;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .line 1062
    new-instance v0, Lcom/amazon/kindle/content/ContentMetadata;

    invoke-direct {v0}, Lcom/amazon/kindle/content/ContentMetadata;-><init>()V

    .line 1063
    iget-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->id:Lcom/amazon/kindle/model/content/IBookID;

    iput-object v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->id:Lcom/amazon/kindle/model/content/IBookID;

    .line 1064
    iget-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->parentAsin:Ljava/lang/String;

    iput-object v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->parentAsin:Ljava/lang/String;

    .line 1065
    iget-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->state:Lcom/amazon/kindle/model/content/ContentState;

    iput-object v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->state:Lcom/amazon/kindle/model/content/ContentState;

    .line 1066
    iget v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->error:I

    iput v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->error:I

    .line 1067
    iget-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->type:Lcom/amazon/kcp/library/models/BookType;

    iput-object v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->type:Lcom/amazon/kcp/library/models/BookType;

    .line 1068
    iget-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->contentType:Ljava/lang/String;

    iput-object v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->contentType:Ljava/lang/String;

    .line 1069
    iget-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->title:Ljava/lang/String;

    .line 1070
    iget-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->authors:Ljava/lang/String;

    iput-object v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->authors:Ljava/lang/String;

    .line 1071
    iget-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->publisher:Ljava/lang/String;

    iput-object v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->publisher:Ljava/lang/String;

    .line 1072
    iget-wide v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->publicationDate:J

    iput-wide v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->publicationDate:J

    .line 1073
    iget-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->language:Ljava/lang/String;

    iput-object v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->language:Ljava/lang/String;

    .line 1074
    iget-boolean v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->archivable:Z

    iput-boolean v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->archivable:Z

    .line 1075
    iget-boolean v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->isDownloadedFromRemoteTodo:Z

    iput-boolean v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->isDownloadedFromRemoteTodo:Z

    .line 1076
    iget-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->errorMessage:Ljava/lang/String;

    iput-object v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->errorMessage:Ljava/lang/String;

    .line 1077
    iget-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->errorTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->errorTitle:Ljava/lang/String;

    .line 1078
    iget-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->errorLink:Ljava/lang/String;

    iput-object v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->errorLink:Ljava/lang/String;

    .line 1079
    iget-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->errorLinkTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->errorLinkTitle:Ljava/lang/String;

    .line 1080
    iget-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->cdeErrorCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->cdeErrorCode:Ljava/lang/String;

    .line 1081
    iget-boolean v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->shouldDisplayCDEError:Z

    iput-boolean v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->shouldDisplayCDEError:Z

    .line 1082
    iget-boolean v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->hasReadAloneTitle:Z

    iput-boolean v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->hasReadAloneTitle:Z

    .line 1083
    iget-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->localContent:Lcom/amazon/kindle/content/LocalContent;

    iput-object v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->localContent:Lcom/amazon/kindle/content/LocalContent;

    .line 1084
    iget-boolean v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->isMostRecentIssue:Z

    iput-boolean v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->isMostRecentIssue:Z

    .line 1085
    iget-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->originType:Ljava/lang/String;

    iput-object v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->originType:Ljava/lang/String;

    .line 1086
    iget-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->shareOriginId:Ljava/lang/String;

    iput-object v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->shareOriginId:Ljava/lang/String;

    .line 1087
    iget-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->userContent:Lcom/amazon/kindle/content/UserContent;

    if-eqz v1, :cond_0

    .line 1088
    invoke-virtual {v1}, Lcom/amazon/kindle/content/UserContent;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/UserContent;

    iput-object v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->userContent:Lcom/amazon/kindle/content/UserContent;

    .line 1090
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->localBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    iput-object v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->localBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 1091
    iget-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->campaignSlot:Ljava/lang/String;

    iput-object v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->campaignSlot:Ljava/lang/String;

    .line 1092
    iget-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->extendedMetadata:Lcom/amazon/kindle/content/ExtendedMetadataWrapper;

    iput-object v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->extendedMetadata:Lcom/amazon/kindle/content/ExtendedMetadataWrapper;

    .line 1093
    iget-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->dictionaryType:Lcom/amazon/kindle/model/content/DictionaryType;

    iput-object v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->dictionaryType:Lcom/amazon/kindle/model/content/DictionaryType;

    .line 1094
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getIsComic()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/content/ContentMetadata;->setIsComic(Z)V

    .line 1095
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getIsFalkorEpisode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/content/ContentMetadata;->setIsFalkorEpisode(Z)V

    .line 1096
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getSeriesOrderTye()Lcom/amazon/kcp/library/models/SeriesOrderType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/content/ContentMetadata;->setSeriesOrderType(Lcom/amazon/kcp/library/models/SeriesOrderType;)V

    .line 1097
    new-instance v1, Lcom/amazon/kindle/content/ReadData;

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getReadData()Lcom/amazon/kindle/content/ReadData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/content/ReadData;->getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getReadData()Lcom/amazon/kindle/content/ReadData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/content/ReadData;->getReadStateOrigin()Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/content/ReadData;-><init>(Lcom/amazon/kindle/krx/content/IBook$ReadState;Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;)V

    iput-object v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->readData:Lcom/amazon/kindle/content/ReadData;

    .line 1098
    iget-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->groupType:Lcom/amazon/kcp/library/models/SeriesGroupType;

    iput-object v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->groupType:Lcom/amazon/kcp/library/models/SeriesGroupType;

    .line 1099
    iget-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->groupItemPosition:Ljava/lang/String;

    iput-object v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->groupItemPosition:Ljava/lang/String;

    .line 1100
    iget-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->titleDetailsJson:Ljava/lang/String;

    iput-object v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->titleDetailsJson:Ljava/lang/String;

    .line 1101
    iget-boolean v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->isFreeFalkorContent:Z

    iput-boolean v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->isFreeFalkorContent:Z

    .line 1102
    iget-boolean v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->isHidden:Z

    iput-boolean v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->isHidden:Z

    return-object v0
.end method

.method contentTagsContainTag(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1218
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1220
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1221
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 1222
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 884
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->id:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsinCount()I
    .locals 1

    .line 1274
    iget v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->asinCount:I

    return v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->authors:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorPronunciation()Ljava/lang/String;
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->authorPronunciation:Ljava/lang/String;

    return-object v0
.end method

.method public getBookID()Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->id:Lcom/amazon/kindle/model/content/IBookID;

    return-object v0
.end method

.method public getBookType()Lcom/amazon/kcp/library/models/BookType;
    .locals 1

    .line 960
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->type:Lcom/amazon/kcp/library/models/BookType;

    return-object v0
.end method

.method public getCDEErrorCode()Ljava/lang/String;
    .locals 1

    .line 814
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->cdeErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignSlot()Ljava/lang/String;
    .locals 1

    .line 762
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->campaignSlot:Ljava/lang/String;

    return-object v0
.end method

.method public getClippingBalance()J
    .locals 2

    .line 570
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->userContent:Lcom/amazon/kindle/content/UserContent;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 573
    :cond_0
    iget-wide v0, v0, Lcom/amazon/kindle/content/UserContent;->clippingBalance:J

    return-wide v0
.end method

.method public getContentTags()Ljava/lang/String;
    .locals 1

    .line 1213
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->contentTags:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .line 865
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->userContent:Lcom/amazon/kindle/content/UserContent;

    if-eqz v0, :cond_0

    .line 866
    iget-wide v0, v0, Lcom/amazon/kindle/content/UserContent;->lastAccessTime:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDeliveryDate()J
    .locals 2

    .line 1255
    iget-wide v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->deliveryDate:J

    return-wide v0
.end method

.method public getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;
    .locals 1

    .line 1235
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->dictionaryType:Lcom/amazon/kindle/model/content/DictionaryType;

    return-object v0
.end method

.method public getError()I
    .locals 1

    .line 463
    iget v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->error:I

    return v0
.end method

.method public getErrorLink()Ljava/lang/String;
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->errorLink:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorLinkTitle()Ljava/lang/String;
    .locals 1

    .line 806
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->errorLinkTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 790
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorTitle()Ljava/lang/String;
    .locals 1

    .line 782
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->errorTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendedMetadata()Lcom/amazon/kindle/content/ExtendedMetadataWrapper;
    .locals 1

    .line 1292
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->extendedMetadata:Lcom/amazon/kindle/content/ExtendedMetadataWrapper;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->localContent:Lcom/amazon/kindle/content/LocalContent;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, v0, Lcom/amazon/kindle/content/LocalContent;->filePath:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 619
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->localContent:Lcom/amazon/kindle/content/LocalContent;

    if-eqz v0, :cond_0

    .line 620
    iget-wide v0, v0, Lcom/amazon/kindle/content/LocalContent;->fileSize:J

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getFurthestPositionRead()I
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->userContent:Lcom/amazon/kindle/content/UserContent;

    if-eqz v0, :cond_0

    .line 728
    iget v0, v0, Lcom/amazon/kindle/content/UserContent;->furthestPositionRead:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getGroupItemPosition()Ljava/lang/String;
    .locals 1

    .line 1314
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->groupItemPosition:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupType()Lcom/amazon/kcp/library/models/SeriesGroupType;
    .locals 1

    .line 1305
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->groupType:Lcom/amazon/kcp/library/models/SeriesGroupType;

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .line 826
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->localContent:Lcom/amazon/kindle/content/LocalContent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/content/LocalContent;->getGuid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->id:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsComic()Z
    .locals 1

    .line 1170
    iget-boolean v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->isComic:Z

    return v0
.end method

.method public getIsFalkorEpisode()Z
    .locals 1

    .line 1178
    iget-boolean v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->isFalkorEpisode:Z

    return v0
.end method

.method public getIsFreeFalkorContent()Z
    .locals 1

    .line 1209
    iget-boolean v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->isFreeFalkorContent:Z

    return v0
.end method

.method public getIsHidden()Z
    .locals 1

    .line 1202
    iget-boolean v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->isHidden:Z

    return v0
.end method

.method public getIsInCarousel()Z
    .locals 1

    .line 1130
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->userContent:Lcom/amazon/kindle/content/UserContent;

    iget-boolean v0, v0, Lcom/amazon/kindle/content/UserContent;->isInCarousel:Z

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLastAccessTime()J
    .locals 2

    .line 554
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->userContent:Lcom/amazon/kindle/content/UserContent;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 557
    :cond_0
    iget-wide v0, v0, Lcom/amazon/kindle/content/UserContent;->lastAccessTime:J

    return-wide v0
.end method

.method public getLastAccessed()Ljava/util/Date;
    .locals 3

    .line 1260
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getLastAccessTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .line 626
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->localContent:Lcom/amazon/kindle/content/LocalContent;

    if-eqz v0, :cond_0

    .line 627
    iget-wide v0, v0, Lcom/amazon/kindle/content/LocalContent;->lastModified:J

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getLastReadPosition()I
    .locals 2

    .line 658
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->userContent:Lcom/amazon/kindle/content/UserContent;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/amazon/kindle/content/UserContent;->lastReadPosition:I

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method public getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;
    .locals 1

    .line 856
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->localBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    return-object v0
.end method

.method public getMLTLastUpdated()J
    .locals 2

    .line 860
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->userContent:Lcom/amazon/kindle/content/UserContent;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/amazon/kindle/content/UserContent;->mltLastUpdated:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getMrpr()Ljava/lang/String;
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->userContent:Lcom/amazon/kindle/content/UserContent;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/amazon/kindle/content/UserContent;->mrpr:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->userContent:Lcom/amazon/kindle/content/UserContent;

    iget-object v0, v0, Lcom/amazon/kindle/content/UserContent;->mrpr:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, -0x1

    .line 669
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrderRank()I
    .locals 1

    .line 1150
    iget v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->orderRank:I

    return v0
.end method

.method public getOriginType()Ljava/lang/String;
    .locals 1

    .line 919
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->originType:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->userContent:Lcom/amazon/kindle/content/UserContent;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/amazon/kindle/content/UserContent;->userId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->localContent:Lcom/amazon/kindle/content/LocalContent;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, v0, Lcom/amazon/kindle/content/LocalContent;->ownershipType:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    return-object v0

    .line 654
    :cond_0
    sget-object v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;->Unknown:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    return-object v0
.end method

.method public getParentAsin()Ljava/lang/String;
    .locals 1

    .line 894
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->parentAsin:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicationDate()Ljava/lang/String;
    .locals 5

    .line 530
    iget-wide v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->publicationDate:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 531
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadata;->dateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->publicationDate:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getPublicationDateInMillis()J
    .locals 2

    .line 546
    iget-wide v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->publicationDate:J

    return-wide v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->publisher:Ljava/lang/String;

    return-object v0
.end method

.method public getReadData()Lcom/amazon/kindle/content/ReadData;
    .locals 1

    .line 1300
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->readData:Lcom/amazon/kindle/content/ReadData;

    return-object v0
.end method

.method public getReadingProgress()I
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->userContent:Lcom/amazon/kindle/content/UserContent;

    if-eqz v0, :cond_0

    .line 735
    iget v0, v0, Lcom/amazon/kindle/content/UserContent;->readingProgress:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getSeriesOrderTye()Lcom/amazon/kcp/library/models/SeriesOrderType;
    .locals 1

    .line 1327
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->seriesOrderType:Lcom/amazon/kcp/library/models/SeriesOrderType;

    return-object v0
.end method

.method public getShareOriginId()Ljava/lang/String;
    .locals 1

    .line 946
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->shareOriginId:Ljava/lang/String;

    return-object v0
.end method

.method public getSortableAuthor()Ljava/lang/String;
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->sortableAuthor:Ljava/lang/String;

    return-object v0
.end method

.method public getSortableTitle()Ljava/lang/String;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->sortableTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/amazon/kindle/model/content/ContentState;
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->state:Lcom/amazon/kindle/model/content/ContentState;

    return-object v0
.end method

.method public getTags()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 597
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->userContent:Lcom/amazon/kindle/content/UserContent;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, v0, Lcom/amazon/kindle/content/UserContent;->tags:Ljava/util/Collection;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleDetailsJson()Ljava/lang/String;
    .locals 1

    .line 1336
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->titleDetailsJson:Ljava/lang/String;

    return-object v0
.end method

.method public getTitlePronunciation()Ljava/lang/String;
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->titlePronunciation:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/amazon/kcp/library/models/BookType;
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->type:Lcom/amazon/kcp/library/models/BookType;

    return-object v0
.end method

.method public getWaterMark()Ljava/lang/String;
    .locals 1

    .line 830
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->localContent:Lcom/amazon/kindle/content/LocalContent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/content/LocalContent;->getWatermark()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getWaypointsAsIntegerList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 680
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 682
    iget-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->userContent:Lcom/amazon/kindle/content/UserContent;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/amazon/kindle/content/UserContent;->waypoints:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 685
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/amazon/kindle/content/ContentMetadata;->userContent:Lcom/amazon/kindle/content/UserContent;

    iget-object v3, v3, Lcom/amazon/kindle/content/UserContent;->waypoints:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 688
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    if-eqz v1, :cond_0

    .line 691
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 694
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    .line 700
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v4

    .line 697
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    return-object v0
.end method

.method public getWaypointsAsJSON()Ljava/lang/String;
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->userContent:Lcom/amazon/kindle/content/UserContent;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/amazon/kindle/content/UserContent;->waypoints:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public hasLocalContent()Z
    .locals 1

    .line 770
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->localContent:Lcom/amazon/kindle/content/LocalContent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/content/LocalContent;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMultimediaContent()Z
    .locals 1

    .line 1158
    iget-boolean v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->hasMultimediaContent:Z

    return v0
.end method

.method public hasReadAlongTitle()Z
    .locals 1

    .line 965
    iget-boolean v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->hasReadAloneTitle:Z

    return v0
.end method

.method public hasUserContent()Z
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->userContent:Lcom/amazon/kindle/content/UserContent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasXray()Z
    .locals 1

    .line 1112
    iget-boolean v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->hasXray:Z

    return v0
.end method

.method public isArchivable()Z
    .locals 1

    .line 585
    iget-boolean v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->archivable:Z

    return v0
.end method

.method public isDownloadedFromRemoteTodo()Z
    .locals 1

    .line 589
    iget-boolean v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->isDownloadedFromRemoteTodo:Z

    return v0
.end method

.method public isEncrypted()Z
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->localContent:Lcom/amazon/kindle/content/LocalContent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/content/LocalContent;->isEncrypted()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFromOrderedSeries()Z
    .locals 2

    .line 1331
    sget-object v0, Lcom/amazon/kcp/library/models/SeriesOrderType;->ORDERED:Lcom/amazon/kcp/library/models/SeriesOrderType;

    iget-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->seriesOrderType:Lcom/amazon/kcp/library/models/SeriesOrderType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isKept()Z
    .locals 1

    .line 750
    iget-boolean v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->isKept:Z

    return v0
.end method

.method public isLocal()Z
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->state:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v0}, Lcom/amazon/kindle/model/content/ContentState;->isLocal()Z

    move-result v0

    return v0
.end method

.method public isNew()Z
    .locals 2

    .line 974
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getReadingProgress()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOpenForReading()Z
    .locals 1

    .line 1122
    iget-boolean v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->isOpenForReading:Z

    return v0
.end method

.method public isOwned()Z
    .locals 2

    .line 445
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->isArchivable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->state:Lcom/amazon/kindle/model/content/ContentState;

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->REMOTE:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isPeriodical()Z
    .locals 2

    .line 1247
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isPeriodicalBackissue()Z
    .locals 2

    .line 982
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->type:Lcom/amazon/kcp/library/models/BookType;

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 983
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->isMostRecentIssue:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSample()Z
    .locals 2

    .line 879
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->id:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setArchivable(Z)V
    .locals 0

    .line 846
    iput-boolean p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->archivable:Z

    return-void
.end method

.method public setAsinCount(I)V
    .locals 0

    .line 1269
    iput p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->asinCount:I

    return-void
.end method

.method public setAuthorPronunciation(Ljava/lang/String;)V
    .locals 0

    .line 1138
    iput-object p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->authorPronunciation:Ljava/lang/String;

    return-void
.end method

.method public setBookID(Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 403
    iput-object p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->id:Lcom/amazon/kindle/model/content/IBookID;

    goto :goto_0

    .line 405
    :cond_0
    sget-object p1, Lcom/amazon/kindle/content/ContentMetadata;->TAG:Ljava/lang/String;

    const-string v0, "Trying to set null bookId on a valid metadata"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setCampaignSlot(Ljava/lang/String;)V
    .locals 0

    .line 766
    iput-object p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->campaignSlot:Ljava/lang/String;

    return-void
.end method

.method public setContentTags(Ljava/lang/String;)V
    .locals 1

    .line 1182
    iput-object p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->contentTags:Ljava/lang/String;

    .line 1183
    invoke-static {p1}, Lcom/amazon/kindle/model/content/DictionaryType;->getTypeFromTags(Ljava/lang/String;)Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->dictionaryType:Lcom/amazon/kindle/model/content/DictionaryType;

    const-string v0, "comics"

    .line 1184
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/content/ContentMetadata;->contentTagsContainTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "manga"

    .line 1185
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/content/ContentMetadata;->contentTagsContainTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->isComic:Z

    const-string v0, "falkor"

    .line 1186
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/content/ContentMetadata;->contentTagsContainTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->isFalkorEpisode:Z

    const-string v0, "free"

    .line 1187
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/content/ContentMetadata;->contentTagsContainTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->isFreeFalkorContent:Z

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setDeliveryDate(J)V
    .locals 0

    .line 1251
    iput-wide p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->deliveryDate:J

    return-void
.end method

.method public setDictionaryType(Lcom/amazon/kindle/model/content/DictionaryType;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1243
    iput-object p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->dictionaryType:Lcom/amazon/kindle/model/content/DictionaryType;

    return-void

    .line 1240
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempted to set ContentMetadata.dictionaryType to null. Use DictionaryType.NONE instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setExtendedMetadata(Lcom/amazon/kindle/content/ExtendedMetadataWrapper;)V
    .locals 0

    .line 1283
    iput-object p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->extendedMetadata:Lcom/amazon/kindle/content/ExtendedMetadataWrapper;

    return-void
.end method

.method public setGroupItemPosition(Ljava/lang/String;)V
    .locals 0

    .line 1318
    iput-object p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->groupItemPosition:Ljava/lang/String;

    return-void
.end method

.method public setGroupType(Lcom/amazon/kcp/library/models/SeriesGroupType;)V
    .locals 0

    .line 1309
    iput-object p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->groupType:Lcom/amazon/kcp/library/models/SeriesGroupType;

    return-void
.end method

.method public setHasMutlimediaContent(Z)V
    .locals 0

    .line 1162
    iput-boolean p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->hasMultimediaContent:Z

    return-void
.end method

.method public setHasReadAloneTitle(Z)V
    .locals 0

    .line 969
    iput-boolean p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->hasReadAloneTitle:Z

    return-void
.end method

.method public setHasXray(Z)V
    .locals 0

    .line 1117
    iput-boolean p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->hasXray:Z

    return-void
.end method

.method public setIsComic(Z)V
    .locals 0

    .line 1166
    iput-boolean p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->isComic:Z

    return-void
.end method

.method public setIsFalkorEpisode(Z)V
    .locals 0

    .line 1174
    iput-boolean p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->isFalkorEpisode:Z

    return-void
.end method

.method public setIsHidden(Z)V
    .locals 0

    .line 1195
    iput-boolean p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->isHidden:Z

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 541
    iput-object p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->language:Ljava/lang/String;

    return-void
.end method

.method public setLocalBook(Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 1

    .line 839
    iput-object p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->localBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 840
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getLastReadPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->setLastPositionRead(I)V

    .line 841
    iget-object p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->localBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getFurthestPositionRead()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->setFurthestPositionRead(I)V

    .line 842
    iget-object p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->localBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->isNew()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->setBookRead(Z)V

    return-void
.end method

.method public setOpenForReading(Z)V
    .locals 0

    .line 1126
    iput-boolean p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->isOpenForReading:Z

    return-void
.end method

.method public setOriginType(Ljava/lang/String;)V
    .locals 0

    .line 928
    iput-object p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->originType:Ljava/lang/String;

    return-void
.end method

.method public setOwner(Ljava/lang/String;Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 418
    iget-object v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->userContent:Lcom/amazon/kindle/content/UserContent;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v3, p1

    .line 419
    iput-object v3, v1, Lcom/amazon/kindle/content/UserContent;->userId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    .line 421
    new-instance v1, Lcom/amazon/kindle/content/UserContent;

    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const-wide/16 v9, -0x1

    const-wide/16 v14, 0x0

    const-string v11, "-1"

    const-string v12, "-1"

    const-string v13, ""

    move-object v2, v1

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v15}, Lcom/amazon/kindle/content/UserContent;-><init>(Ljava/lang/String;JIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iput-object v1, v0, Lcom/amazon/kindle/content/ContentMetadata;->userContent:Lcom/amazon/kindle/content/UserContent;

    :goto_0
    return-void
.end method

.method public setParentAsin(Ljava/lang/String;)V
    .locals 0

    .line 903
    iput-object p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->parentAsin:Ljava/lang/String;

    return-void
.end method

.method public setPublicationDateInMillis(J)V
    .locals 0

    .line 550
    iput-wide p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->publicationDate:J

    return-void
.end method

.method public setPublisher(Ljava/lang/String;)V
    .locals 0

    .line 523
    iput-object p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->publisher:Ljava/lang/String;

    return-void
.end method

.method public setSeriesOrderType(Lcom/amazon/kcp/library/models/SeriesOrderType;)V
    .locals 0

    .line 1322
    iput-object p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->seriesOrderType:Lcom/amazon/kcp/library/models/SeriesOrderType;

    return-void
.end method

.method public setShareOriginId(Ljava/lang/String;)V
    .locals 0

    .line 955
    iput-object p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->shareOriginId:Ljava/lang/String;

    return-void
.end method

.method public setSortableAuthor(Ljava/lang/String;)V
    .locals 0

    .line 1146
    iput-object p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->sortableAuthor:Ljava/lang/String;

    return-void
.end method

.method public setSortableTitle(Ljava/lang/String;)V
    .locals 0

    .line 1142
    iput-object p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->sortableTitle:Ljava/lang/String;

    return-void
.end method

.method public setState(Lcom/amazon/kindle/model/content/ContentState;)Z
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->state:Lcom/amazon/kindle/model/content/ContentState;

    if-eq v0, p1, :cond_0

    .line 456
    iput-object p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->state:Lcom/amazon/kindle/model/content/ContentState;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setTitleDetailsJson(Ljava/lang/String;)V
    .locals 0

    .line 1340
    iput-object p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->titleDetailsJson:Ljava/lang/String;

    return-void
.end method

.method public setTitlePronunciation(Ljava/lang/String;)V
    .locals 0

    .line 1134
    iput-object p1, p0, Lcom/amazon/kindle/content/ContentMetadata;->titlePronunciation:Ljava/lang/String;

    return-void
.end method

.method public shouldDisplayCDEError()Z
    .locals 1

    .line 822
    iget-boolean v0, p0, Lcom/amazon/kindle/content/ContentMetadata;->shouldDisplayCDEError:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentMetadata{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->id:Lcom/amazon/kindle/model/content/IBookID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parentAsin=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->parentAsin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", originType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->originType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", shareOriginId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->shareOriginId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->state:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", error="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->error:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->type:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", contentType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sortTitleLock="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->sortTitleLock:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", authors=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->authors:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sortAuthorLock="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->sortAuthorLock:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", publisher=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->publisher:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", publicationDate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->publicationDate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", language=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->language:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", archivable="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->archivable:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isKept="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->isKept:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isDownloadedFromRemoteTodo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->isDownloadedFromRemoteTodo:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", errorMessage=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", errorTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->errorTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", errorLink=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->errorLink:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", errorLinkTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->errorLinkTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cdeErrorCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->cdeErrorCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", shouldDisplayCDEError="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->shouldDisplayCDEError:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasReadAloneTitle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->hasReadAloneTitle:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isMostRecentIssue="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->isMostRecentIssue:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasXray="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->hasXray:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isOpenForReading="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->isOpenForReading:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", titlePronunciation=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->titlePronunciation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", authorPronunciation=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->authorPronunciation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sortableTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->sortableTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sortableAuthor=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->sortableAuthor:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", campaignSlot=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->campaignSlot:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", orderRank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->orderRank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasMultimediaContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->hasMultimediaContent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", deliveryDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->deliveryDate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", localContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->localContent:Lcom/amazon/kindle/content/LocalContent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->userContent:Lcom/amazon/kindle/content/UserContent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", localBookItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->localBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dictionaryType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->dictionaryType:Lcom/amazon/kindle/model/content/DictionaryType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", asinCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->asinCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isComic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->isComic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFalkorEpisode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->isFalkorEpisode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", seriesOrderType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->seriesOrderType:Lcom/amazon/kcp/library/models/SeriesOrderType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", titleDetailsJson="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->titleDetailsJson:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isFreeFalkorContent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->isFreeFalkorContent:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isHidden="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->isHidden:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", readState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->readData:Lcom/amazon/kindle/content/ReadData;

    .line 1053
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ReadData;->getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", readStateOrigin="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->readData:Lcom/amazon/kindle/content/ReadData;

    .line 1054
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ReadData;->getReadStateOrigin()Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", groupItemPosition="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/content/ContentMetadata;->groupItemPosition:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/content/ContentMetadata;->groupItemPosition:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/content/ContentMetadata;->titleDetailsJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
