.class public Lcom/amazon/kcp/cover/WebserviceCoverProvider;
.super Ljava/lang/Object;
.source "WebserviceCoverProvider.java"

# interfaces
.implements Lcom/amazon/kindle/cover/ICoverProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/cover/WebserviceCoverProvider$WebserviceCoverProviderResultResponseHandler;,
        Lcom/amazon/kcp/cover/WebserviceCoverProvider$GetImageFromWebTask;
    }
.end annotation


# static fields
.field private static ACCEPTABLE_EXTENSIONS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ATTEMPTS:Ljava/lang/String; = "attempts"

.field private static final BUFFER_SIZE:I = 0x8000

.field private static final CONNECTION_TIMEOUT:I = 0xea60

.field private static final DOWNLOAD_FAILED_ERROR:Ljava/lang/String; = "downloadFailedError"

.field private static final FORCE_FORMAT:Ljava/lang/String; = "FMjpg_"

.field private static final GET_WEBSERVICE_COVER_METRIC:Ljava/lang/String; = "GetWebserviceCover"

.field private static final GET_WEBSERVICE_COVER_PER_KILOBYTE:Ljava/lang/String; = "GetWebserviceCoverPerKB"

.field private static final JPG_SUFFIX:Ljava/lang/String; = ".jpg"

.field private static final MAIN_THREAD_COVER_FETCHING_ERROR:Ljava/lang/String; = "coverImageFetchingOnMainThreadError"

.field private static final STREAM_CLOSED_ERROR:Ljava/lang/String; = "streamClosedError"

.field private static final SUCCESS:Ljava/lang/String; = "success"

.field private static final TAG:Ljava/lang/String;

.field private static final TIME_OUT_THRESHOLD:I = 0x3

.field private static final TOO_SMALL_ERROR:Ljava/lang/String; = "tooSmallError"

.field private static final WEBSERVICE_COVER_PROVIDER_METRIC:Ljava/lang/String; = "WebserviceCoverProvider"


# instance fields
.field private context:Landroid/content/Context;

.field private coverDimenParamString:Ljava/lang/String;

.field private coverHeightParamString:Ljava/lang/String;

.field private coverRequestBaseURL:Ljava/lang/String;

.field private coverRequestFallbackSuffixString:Ljava/lang/String;

.field private coverRequestIntermediateString:Ljava/lang/String;

.field private coverRequestSuffixString:Ljava/lang/String;

.field private coverWidthParamString:Ljava/lang/String;

.field private groupCoverRequestBaseURL:Ljava/lang/String;

.field private urlStringsFetched:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    const-class v0, Lcom/amazon/kcp/cover/WebserviceCoverProvider;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->TAG:Ljava/lang/String;

    const-string v0, "jpg"

    const-string/jumbo v1, "png"

    .line 74
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->ACCEPTABLE_EXTENSIONS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->urlStringsFetched:Z

    .line 93
    iput-object p1, p0, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/cover/WebserviceCoverProvider;Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Ljava/lang/String;)Lcom/amazon/kindle/cover/ICoverBuilder;
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->getImageFromWeb(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Ljava/lang/String;)Lcom/amazon/kindle/cover/ICoverBuilder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Ljava/lang/String;)Z
    .locals 0

    .line 58
    invoke-static {p0}, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->isImage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createResponseHandler(Ljava/lang/String;Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/ResultResponseHandler;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            "Lcom/amazon/kindle/cover/ImageSizes$Type;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/kindle/webservices/ResultResponseHandler<",
            "Lcom/amazon/kindle/cover/ICoverBuilder;",
            ">;"
        }
    .end annotation

    .line 351
    new-instance v6, Lcom/amazon/kcp/cover/WebserviceCoverProvider$WebserviceCoverProviderResultResponseHandler;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/cover/WebserviceCoverProvider$WebserviceCoverProviderResultResponseHandler;-><init>(Ljava/lang/String;Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method private getAltGroupCoverBuilder(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Ljava/lang/String;)Lcom/amazon/kindle/cover/ICoverBuilder;
    .locals 0

    .line 222
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/util/GroupContentUtils;->getGroupCoverBookMetadata(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/model/content/IListableBook;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 224
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->getImageFromWeb(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Ljava/lang/String;)Lcom/amazon/kindle/cover/ICoverBuilder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getCover(Ljava/lang/String;Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/cover/ICoverBuilder;
    .locals 0

    .line 269
    invoke-direct/range {p0 .. p5}, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->createResponseHandler(Ljava/lang/String;Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/ResultResponseHandler;

    move-result-object p2

    .line 271
    new-instance p3, Lcom/amazon/kindle/webservices/BaseWebRequest;

    invoke-direct {p3, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>(Ljava/lang/String;)V

    const p1, 0xea60

    .line 272
    invoke-virtual {p3, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setTimeout(I)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p1

    sget-object p3, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->BLOCKING:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    .line 273
    invoke-interface {p1, p3}, Lcom/amazon/kindle/webservices/IWebRequest;->setPriority(Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p1

    .line 274
    invoke-interface {p1, p2}, Lcom/amazon/kindle/webservices/IWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p1

    .line 275
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object p3

    .line 276
    invoke-interface {p3, p1}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    .line 278
    invoke-virtual {p2}, Lcom/amazon/kindle/webservices/ResultResponseHandler;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/cover/ICoverBuilder;

    return-object p1
.end method

.method private getCoverImageUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;ZZ)Ljava/lang/String;
    .locals 1

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->coverRequestIntermediateString:Ljava/lang/String;

    .line 330
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->coverRequestFallbackSuffixString:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->coverRequestSuffixString:Ljava/lang/String;

    .line 332
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_1

    const-string p1, "FMjpg_"

    .line 334
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getImageFromWeb(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Ljava/lang/String;)Lcom/amazon/kindle/cover/ICoverBuilder;
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    .line 163
    invoke-direct/range {p0 .. p1}, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->isStateInvalid(Lcom/amazon/kindle/model/content/IListableBook;)Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    return-object v6

    .line 167
    :cond_0
    iget-object v0, v7, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->context:Landroid/content/Context;

    invoke-virtual {v7, v0}, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->fetchURLStrings(Landroid/content/Context;)V

    .line 168
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_1

    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/BookType;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 172
    iget-object v0, v7, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->groupCoverRequestBaseURL:Ljava/lang/String;

    .line 173
    move-object/from16 v1, p1

    check-cast v1, Lcom/amazon/kindle/content/GroupMetadata;

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/GroupMetadata;->getImageExtension()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-virtual {v1}, Lcom/amazon/kindle/content/GroupMetadata;->getImageId()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-static {v2}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 179
    :cond_2
    sget-object v3, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->ACCEPTABLE_EXTENSIONS:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v9

    move-object v11, v0

    move-object v13, v1

    move-object v12, v2

    move v14, v3

    goto :goto_2

    .line 177
    :cond_3
    :goto_1
    invoke-direct/range {p0 .. p3}, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->getAltGroupCoverBuilder(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Ljava/lang/String;)Lcom/amazon/kindle/cover/ICoverBuilder;

    move-result-object v0

    return-object v0

    .line 181
    :cond_4
    iget-object v0, v7, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->coverRequestBaseURL:Ljava/lang/String;

    .line 184
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/cover/CoverImageService;->getCoverId(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".jpg"

    move-object v11, v0

    move-object v13, v1

    move-object v12, v2

    const/4 v14, 0x0

    .line 188
    :goto_2
    invoke-static {v6}, Lcom/amazon/kindle/cover/ImageSizes;->getInstance(Ljava/util/Map;)Lcom/amazon/kindle/cover/ImageSizes;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcom/amazon/kindle/cover/ImageSizes;->getWidth(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kcp/library/models/BookType;)I

    move-result v15

    .line 189
    invoke-static {v6}, Lcom/amazon/kindle/cover/ImageSizes;->getInstance(Ljava/util/Map;)Lcom/amazon/kindle/cover/ImageSizes;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcom/amazon/kindle/cover/ImageSizes;->getHeight(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kcp/library/models/BookType;)I

    move-result v16

    .line 191
    sget-object v0, Lcom/amazon/kindle/cover/ImageSizes$Type;->MEDIUM:Lcom/amazon/kindle/cover/ImageSizes$Type;

    if-eq v8, v0, :cond_6

    sget-object v0, Lcom/amazon/kindle/cover/ImageSizes$Type;->LARGE:Lcom/amazon/kindle/cover/ImageSizes$Type;

    if-ne v8, v0, :cond_5

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v13

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    .line 195
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->getUrlWithBothDimensions(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    :goto_3
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v13

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    .line 193
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->getMaxDimensionUrl(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    .line 197
    :goto_4
    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-object v6

    .line 200
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v13

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->getCover(Ljava/lang/String;Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/cover/ICoverBuilder;

    move-result-object v0

    if-nez v0, :cond_8

    .line 206
    sget-object v1, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    if-ne v8, v1, :cond_8

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v13

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    .line 207
    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->getUrlWithBothDimensions(Ljava/lang/String;Ljava/lang/String;IIZZ)Ljava/lang/String;

    move-result-object v0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v13

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->getCover(Ljava/lang/String;Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/cover/ICoverBuilder;

    move-result-object v0

    :cond_8
    if-eqz v0, :cond_a

    .line 213
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    if-ne v1, v2, :cond_9

    goto :goto_5

    :cond_9
    const/4 v9, 0x0

    .line 214
    :goto_5
    invoke-interface {v0, v9}, Lcom/amazon/kindle/cover/ICoverBuilder;->setCanBeDecorated(Z)V

    :cond_a
    return-object v0
.end method

.method private getMaxDimensionUrl(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 6

    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->coverDimenParamString:Ljava/lang/String;

    .line 298
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p5

    .line 300
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->getCoverImageUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getUrlWithBothDimensions(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 305
    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->getUrlWithBothDimensions(Ljava/lang/String;Ljava/lang/String;IIZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getUrlWithBothDimensions(Ljava/lang/String;Ljava/lang/String;IIZZ)Ljava/lang/String;
    .locals 6

    .line 313
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->coverHeightParamString:Ljava/lang/String;

    .line 314
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->coverWidthParamString:Ljava/lang/String;

    .line 315
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p5

    move v5, p6

    .line 316
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->getCoverImageUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isGroupWithoutImageData(Lcom/amazon/kindle/model/content/IListableBook;)Z
    .locals 2

    .line 251
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/BookType;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    check-cast p1, Lcom/amazon/kindle/content/GroupMetadata;

    .line 253
    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getImageExtension()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getImageId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static isImage(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 285
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPdoc(Lcom/amazon/kindle/model/content/IListableBook;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 261
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    instance-of v1, v1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    instance-of v1, v1, Lcom/amazon/kcp/library/models/internal/UpdateBookID;

    if-eqz v1, :cond_1

    .line 262
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    if-eq v1, v2, :cond_1

    .line 263
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PSNL:Lcom/amazon/kcp/library/models/BookType;

    if-ne p1, v1, :cond_2

    :cond_1
    const/4 p1, 0x1

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private isStateInvalid(Lcom/amazon/kindle/model/content/IListableBook;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 234
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->isGroupWithoutImageData(Lcom/amazon/kindle/model/content/IListableBook;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 238
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->isPdoc(Lcom/amazon/kindle/model/content/IListableBook;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    .line 242
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object p1

    .line 243
    invoke-interface {p1}, Lcom/amazon/kindle/network/INetworkService;->isWanConnected()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p1}, Lcom/amazon/kindle/network/INetworkService;->isWifiConnected()Z

    move-result p1

    if-nez p1, :cond_3

    .line 244
    sget-object p1, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->TAG:Ljava/lang/String;

    const-string v1, "No Internet connectivity, will skip download image"

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method fetchURLStrings(Landroid/content/Context;)V
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->urlStringsFetched:Z

    if-eqz v0, :cond_0

    return-void

    .line 107
    :cond_0
    sget v0, Lcom/amazon/kindle/krl/R$string;->group_cover_webrequest_base_url:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->groupCoverRequestBaseURL:Ljava/lang/String;

    .line 108
    sget v0, Lcom/amazon/kindle/krl/R$string;->cover_webrequest_base_url:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->coverRequestBaseURL:Ljava/lang/String;

    .line 109
    sget v0, Lcom/amazon/kindle/krl/R$string;->cover_request_intermediate:I

    .line 110
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->coverRequestIntermediateString:Ljava/lang/String;

    .line 111
    sget v0, Lcom/amazon/kindle/krl/R$string;->cover_width_param:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->coverWidthParamString:Ljava/lang/String;

    .line 112
    sget v0, Lcom/amazon/kindle/krl/R$string;->cover_height_param:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->coverHeightParamString:Ljava/lang/String;

    .line 113
    sget v0, Lcom/amazon/kindle/krl/R$string;->cover_webrequest_suffix:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->coverRequestSuffixString:Ljava/lang/String;

    .line 114
    sget v0, Lcom/amazon/kindle/krl/R$string;->cover_webrequest_fallback_suffix:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->coverRequestFallbackSuffixString:Ljava/lang/String;

    .line 115
    sget v0, Lcom/amazon/kindle/krl/R$string;->cover_dimen_param:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->coverDimenParamString:Ljava/lang/String;

    const/4 p1, 0x1

    .line 116
    iput-boolean p1, p0, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->urlStringsFetched:Z

    return-void
.end method

.method public getCover(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/cover/ICoverFilenamer;)Lcom/amazon/kindle/cover/ICoverBuilder;
    .locals 7

    .line 122
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    .line 123
    invoke-interface {p3, v0, p2}, Lcom/amazon/kindle/cover/ICoverFilenamer;->getCoverFilename(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 133
    new-instance v2, Lcom/amazon/kcp/cover/WebserviceCoverProvider$GetImageFromWebTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/amazon/kcp/cover/WebserviceCoverProvider$GetImageFromWebTask;-><init>(Lcom/amazon/kcp/cover/WebserviceCoverProvider;Lcom/amazon/kcp/cover/WebserviceCoverProvider$1;)V

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v5

    aput-object p2, v6, v4

    const/4 v4, 0x2

    aput-object v1, v6, v4

    .line 134
    invoke-virtual {v2, v6}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-wide/16 v4, 0x3

    .line 140
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/AsyncTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/cover/ICoverBuilder;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 145
    sget-object v2, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->TAG:Ljava/lang/String;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "WebserviceCoverProvider"

    const-string v2, "coverImageFetchingOnMainThreadError"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->getCover(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/cover/ICoverFilenamer;)Lcom/amazon/kindle/cover/ICoverBuilder;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    .line 142
    :goto_1
    sget-object p2, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->TAG:Ljava/lang/String;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 150
    :cond_1
    invoke-direct {p0, p1, p2, v1}, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->getImageFromWeb(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Ljava/lang/String;)Lcom/amazon/kindle/cover/ICoverBuilder;

    move-result-object v3

    :goto_2
    return-object v3
.end method

.method public getCoverType()Lcom/amazon/kindle/cover/ICoverImageService$CoverType;
    .locals 1

    .line 341
    sget-object v0, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->WEBSERVICE:Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    return-object v0
.end method

.method public isRemoteProvider()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
