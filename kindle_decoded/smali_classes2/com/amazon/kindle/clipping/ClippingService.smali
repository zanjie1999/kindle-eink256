.class public final Lcom/amazon/kindle/clipping/ClippingService;
.super Ljava/lang/Object;
.source "ClippingService.java"

# interfaces
.implements Lcom/amazon/kindle/clipping/IClippingService;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final libraryService:Lcom/amazon/kindle/content/ILibraryService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/kindle/content/LibraryContentService;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/clipping/ClippingService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/content/ILibraryService;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 33
    iput-object p1, p0, Lcom/amazon/kindle/clipping/ClippingService;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "libraryService is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private clippingBalanceHelper(Lcom/amazon/android/docviewer/KindleDoc;IIZ)Z
    .locals 16

    move-object/from16 v0, p0

    if-eqz p1, :cond_9

    move/from16 v1, p2

    move/from16 v2, p3

    if-gt v1, v2, :cond_8

    .line 69
    invoke-interface/range {p1 .. p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v3

    .line 70
    invoke-interface {v3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    .line 71
    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v5

    .line 72
    iget-object v6, v0, Lcom/amazon/kindle/clipping/ClippingService;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v6}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v6

    .line 73
    iget-object v7, v0, Lcom/amazon/kindle/clipping/ClippingService;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v7, v5, v6}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v6, :cond_0

    return v7

    .line 80
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v8

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-eqz v8, :cond_1

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v11

    aput-object v4, v8, v7

    .line 82
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v10

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v9

    const-string v4, "ClippingService.updateAndCheckClippingBalance(), document: [%s], book ID: [%s], firstPosition: [%d], lastPosition: [%d]"

    .line 81
    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    :cond_1
    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IListableBook;->isSample()Z

    move-result v4

    if-eqz v4, :cond_2

    return v7

    .line 92
    :cond_2
    invoke-interface {v3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getClippingLimit()F

    move-result v3

    .line 93
    invoke-interface/range {p1 .. p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBeginningPosition()I

    move-result v4

    invoke-interface/range {p1 .. p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookEndPosition()I

    move-result v8

    invoke-static {v4, v8}, Lcom/amazon/kindle/clipping/ClippingService;->getClippingAmount(II)J

    move-result-wide v12

    .line 94
    invoke-static/range {p2 .. p3}, Lcom/amazon/kindle/clipping/ClippingService;->getClippingAmount(II)J

    move-result-wide v1

    .line 96
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    new-array v4, v9, [Ljava/lang/Object;

    .line 98
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v4, v11

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v10

    const-string v8, "ClippingService.updateAndCheckClippingBalance(), clipping limit: [%f], book size: [%d], clipping amount: [%d]"

    .line 97
    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    :cond_3
    invoke-virtual {v6}, Lcom/amazon/kindle/content/ContentMetadata;->getClippingBalance()J

    move-result-wide v8

    add-long/2addr v8, v1

    .line 102
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    new-array v1, v7, [Ljava/lang/Object;

    .line 103
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v11

    const-string v2, "ClippingService.updateAndCheckClippingBalance(), new balance: [%d]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_4
    float-to-double v1, v3

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v1, v14

    if-gez v4, :cond_5

    long-to-float v1, v8

    long-to-float v2, v12

    mul-float v2, v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 107
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    return v11

    :cond_5
    if-eqz p4, :cond_6

    .line 114
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 115
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->CLIPPING_BALANCE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v2, v0, Lcom/amazon/kindle/clipping/ClippingService;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    const/4 v3, 0x0

    invoke-interface {v2, v5, v3, v1, v7}, Lcom/amazon/kindle/content/ILibraryService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 119
    :cond_6
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    new-array v1, v11, [Ljava/lang/Object;

    const-string v2, "ClippingService.updateAndCheckClippingBalance(),  new clipping balance is within clipping limit"

    .line 120
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_7
    return v7

    .line 67
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "firstPosition is greater than lastPosition"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_9
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "document is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getClippingAmount(II)J
    .locals 0

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    int-to-long p0, p1

    return-wide p0
.end method


# virtual methods
.method public canUpdateClippingBalance(Lcom/amazon/android/docviewer/KindleDoc;II)Z
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/kindle/clipping/ClippingService;->clippingBalanceHelper(Lcom/amazon/android/docviewer/KindleDoc;IIZ)Z

    move-result p1

    return p1
.end method

.method public updateAndCheckClippingBalance(Lcom/amazon/android/docviewer/KindleDoc;II)Z
    .locals 1

    const/4 v0, 0x1

    .line 38
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/kindle/clipping/ClippingService;->clippingBalanceHelper(Lcom/amazon/android/docviewer/KindleDoc;IIZ)Z

    move-result p1

    return p1
.end method
