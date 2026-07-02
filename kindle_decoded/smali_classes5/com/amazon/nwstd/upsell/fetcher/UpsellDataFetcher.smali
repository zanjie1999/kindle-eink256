.class public Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;
.super Ljava/lang/Object;
.source "UpsellDataFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$DownloadStats;,
        Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;,
        Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;
    }
.end annotation


# static fields
.field private static final FILE_PREFIX:Ljava/lang/String; = "tempUpsell"

.field private static QUERY_PARAM_ASIN:Ljava/lang/String; = null

.field private static QUERY_PARAM_DEVICE_TYPE:Ljava/lang/String; = null

.field private static QUERY_PARAM_METHOD:Ljava/lang/String; = null

.field private static QUERY_PARAM_TARGET:Ljava/lang/String; = null

.field private static QUERY_PARAM_USER_CODE:Ljava/lang/String; = null

.field private static TAG:Ljava/lang/String; = null

.field private static final TEMP_DIR_NAME:Ljava/lang/String; = "tmpUpsell"


# instance fields
.field private MAX_HTTP_RETRIES_DEFAULT:I

.field private WAIT_TIME_MS_DEFAULT:I

.field private final mContext:Landroid/content/Context;

.field private mCookieDomain:Ljava/lang/String;

.field private mDeviceType:Ljava/lang/String;

.field private mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

.field private final mFilesDir:Ljava/io/File;

.field private mMaxHttpGetRetries:I

.field private mParentAsins:[Ljava/lang/String;

.field private mPfm:Ljava/lang/String;

.field private mStoreEndPoint:Ljava/lang/String;

.field private mWaitTimeMS:I

.field private mXfsn:Ljava/lang/String;

.field private mXmain:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-class v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    const-string v0, "method=getCEWidgetJson"

    .line 136
    sput-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->QUERY_PARAM_METHOD:Ljava/lang/String;

    const-string/jumbo v0, "userCode=NewsstandReaderUpsell"

    .line 137
    sput-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->QUERY_PARAM_USER_CODE:Ljava/lang/String;

    const-string v0, "deviceType="

    .line 138
    sput-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->QUERY_PARAM_DEVICE_TYPE:Ljava/lang/String;

    const-string/jumbo v0, "target=ALL"

    .line 139
    sput-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->QUERY_PARAM_TARGET:Ljava/lang/String;

    const-string v0, "asin="

    .line 140
    sput-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->QUERY_PARAM_ASIN:Ljava/lang/String;

    return-void
.end method

.method protected varargs constructor <init>(Lcom/amazon/nwstd/resources/DynamicResourcesController;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 124
    iput v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->MAX_HTTP_RETRIES_DEFAULT:I

    .line 125
    iput v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mMaxHttpGetRetries:I

    const/16 v0, 0x3e8

    .line 130
    iput v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->WAIT_TIME_MS_DEFAULT:I

    .line 131
    iput v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mWaitTimeMS:I

    .line 216
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 217
    :goto_0
    invoke-static {p1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 219
    iput-object p2, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mStoreEndPoint:Ljava/lang/String;

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 220
    :goto_1
    invoke-static {p1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 222
    iput-object p3, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mDeviceType:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 223
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-static {p1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 225
    iput-object p9, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mParentAsins:[Ljava/lang/String;

    if-eqz p9, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    .line 226
    :goto_3
    invoke-static {p1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 228
    iput-object p4, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mContext:Landroid/content/Context;

    if-eqz p4, :cond_4

    const/4 p1, 0x1

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    .line 229
    :goto_4
    invoke-static {p1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 231
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    .line 232
    invoke-virtual {p4, p2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mFilesDir:Ljava/io/File;

    goto :goto_5

    .line 234
    :cond_5
    iput-object p2, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mFilesDir:Ljava/io/File;

    .line 236
    :goto_5
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mFilesDir:Ljava/io/File;

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_6

    :cond_6
    const/4 p1, 0x0

    :goto_6
    invoke-static {p1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 238
    iput-object p5, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mXfsn:Ljava/lang/String;

    if-eqz p5, :cond_7

    const/4 p1, 0x1

    goto :goto_7

    :cond_7
    const/4 p1, 0x0

    .line 239
    :goto_7
    invoke-static {p1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 241
    iput-object p6, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mXmain:Ljava/lang/String;

    if-eqz p6, :cond_8

    const/4 p1, 0x1

    goto :goto_8

    :cond_8
    const/4 p1, 0x0

    .line 242
    :goto_8
    invoke-static {p1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 244
    iput-object p7, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mPfm:Ljava/lang/String;

    if-eqz p7, :cond_9

    const/4 p1, 0x1

    goto :goto_9

    :cond_9
    const/4 p1, 0x0

    .line 245
    :goto_9
    invoke-static {p1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 247
    iput-object p8, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mCookieDomain:Ljava/lang/String;

    if-eqz p8, :cond_a

    goto :goto_a

    :cond_a
    const/4 v0, 0x0

    .line 248
    :goto_a
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 250
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mFilesDir:Ljava/io/File;

    const-string/jumbo p3, "tmpUpsell"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 251
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_b

    .line 252
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    :cond_b
    return-void
.end method

.method private addFlagResource(Ljava/lang/String;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V
    .locals 2

    .line 1083
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;

    iget-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    invoke-direct {v0, v1}, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;-><init>(Lcom/amazon/nwstd/resources/DynamicResourcesController;)V

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->setReference(Ljava/lang/String;)Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;

    invoke-virtual {v0, p2}, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->setTargetType(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;)Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;

    invoke-virtual {v0, p3}, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->setOriginType(Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;

    invoke-virtual {v0}, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->create()Lcom/amazon/nwstd/resources/DynamicResource;

    move-result-object p2

    if-nez p2, :cond_0

    .line 1085
    sget-object p2, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    const/16 p3, 0x10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "couldn\'t insert the flag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private addIdResource(Ljava/lang/String;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V
    .locals 2

    .line 1072
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;

    iget-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    invoke-direct {v0, v1}, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;-><init>(Lcom/amazon/nwstd/resources/DynamicResourcesController;)V

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->setReference(Ljava/lang/String;)Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;

    invoke-virtual {v0, p2}, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->setTargetType(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;)Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;

    invoke-virtual {v0, p3}, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->setOriginType(Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;

    invoke-virtual {v0}, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->create()Lcom/amazon/nwstd/resources/DynamicResource;

    move-result-object p2

    if-nez p2, :cond_0

    .line 1074
    sget-object p2, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    const/16 p3, 0x10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "couldn\'t insert the id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private addImageResources(Ljava/util/Map;Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Z)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;",
            "Lcom/amazon/nwstd/resources/DynamicResourceTargetType;",
            "Lcom/amazon/nwstd/resources/DynamicResourceOrigin;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string/jumbo v4, "tmpUpsell"

    const-string v5, "Unable to close stream"

    const-string v6, "couldn\'t fetch and write the image at url "

    .line 934
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 936
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 937
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 938
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/util/Map$Entry;

    .line 939
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    const/16 v11, 0x10

    .line 944
    :try_start_0
    new-instance v12, Ljava/net/URI;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v12, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_5

    .line 951
    new-instance v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$DownloadStats;

    const/4 v13, 0x0

    invoke-direct {v0, v13}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$DownloadStats;-><init>(Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$1;)V

    .line 953
    :try_start_1
    invoke-virtual {v1, v12, v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->fetchData(Ljava/net/URI;Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$DownloadStats;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v13, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v14, v0

    .line 955
    sget-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v11, v13, v14}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 956
    invoke-direct {v1, v2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->reportImageFetchError(Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;)V

    const/4 v13, 0x0

    :goto_2
    if-nez v13, :cond_2

    goto :goto_0

    .line 966
    :cond_2
    :try_start_2
    new-instance v0, Ljava/io/File;

    iget-object v14, v1, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mFilesDir:Ljava/io/File;

    invoke-direct {v0, v14, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v14, "tempUpsell"

    const-string v15, ""

    .line 967
    invoke-static {v14, v15, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 968
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v16, v12

    .line 969
    invoke-virtual {v1, v13, v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->writeFile(Ljava/io/InputStream;Ljava/io/File;)J

    move-result-wide v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v13, :cond_3

    .line 977
    :try_start_3
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v13, v0

    .line 980
    sget-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    const/16 v15, 0x10

    invoke-static {v0, v15, v5, v13}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 984
    :cond_3
    :goto_3
    invoke-static {v14}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-wide/16 v17, 0x0

    cmp-long v0, v11, v17

    if-gtz v0, :cond_4

    goto :goto_6

    .line 992
    :cond_4
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_image:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    if-ne v3, v0, :cond_5

    .line 993
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    :cond_5
    const/4 v13, 0x0

    .line 995
    :goto_4
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;

    iget-object v15, v1, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    invoke-direct {v0, v15}, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;-><init>(Lcom/amazon/nwstd/resources/DynamicResourcesController;)V

    invoke-virtual {v0, v14}, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->setResourceFile(Ljava/lang/String;)Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;

    invoke-virtual {v0, v13}, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->setResourceFileSuffix(Ljava/lang/String;)Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;

    invoke-virtual {v0, v3}, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->setTargetType(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;)Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;

    move-object/from16 v14, p4

    invoke-virtual {v0, v14}, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->setOriginType(Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;

    if-eqz p5, :cond_6

    .line 998
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lcom/amazon/nwstd/utils/LocaleUtils;->toLanguageTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->setLanguage(Ljava/lang/String;)Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;

    invoke-virtual {v0}, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->create()Lcom/amazon/nwstd/resources/DynamicResource;

    move-result-object v0

    goto :goto_5

    .line 1000
    :cond_6
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->setParentASIN(Ljava/lang/String;)Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;

    invoke-virtual {v0}, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->create()Lcom/amazon/nwstd/resources/DynamicResource;

    move-result-object v0

    .line 1003
    :goto_5
    sget-object v10, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;->COVER_SYNC:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;

    if-ne v2, v10, :cond_7

    const-string v10, "CECoverSize"

    .line 1004
    invoke-virtual {v1, v2, v10, v11, v12}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->reportSyncMetricTimer(Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;Ljava/lang/String;J)V

    :cond_7
    if-nez v0, :cond_0

    .line 1008
    sget-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    const-string v10, "couldn\'t insert the image resource"

    const/16 v11, 0x10

    invoke-static {v0, v11, v10}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 1009
    invoke-direct {v1, v2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->reportImageFetchError(Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;)V

    goto/16 :goto_0

    :cond_8
    :goto_6
    move-object/from16 v14, p4

    .line 985
    sget-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x10

    invoke-static {v0, v11, v10}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 986
    invoke-direct {v1, v2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->reportImageFetchError(Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v14, p4

    .line 971
    :try_start_4
    sget-object v11, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v12, 0x10

    invoke-static {v11, v12, v10, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 972
    invoke-direct {v1, v2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->reportImageFetchError(Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v13, :cond_0

    .line 977
    :try_start_5
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    move-object v10, v0

    .line 980
    sget-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    invoke-static {v0, v12, v5, v10}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :goto_7
    if-eqz v13, :cond_9

    .line 977
    :try_start_6
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v3, v0

    .line 980
    sget-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    const/16 v4, 0x10

    invoke-static {v0, v4, v5, v3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 982
    :cond_9
    :goto_8
    throw v2

    :catch_5
    move-object/from16 v14, p4

    .line 946
    sget-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "could not parse the URI for the file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x10

    invoke-static {v0, v11, v10}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 947
    invoke-direct {v1, v2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->reportImageFetchError(Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;)V

    goto/16 :goto_0

    .line 1013
    :cond_a
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_image:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    if-ne v3, v0, :cond_b

    .line 1014
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v7

    const-string v0, "CEBannerImageSyncDuration"

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->reportSyncMetricTimer(Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;Ljava/lang/String;J)V

    :cond_b
    return-void
.end method

.method private addTargetPageResources(Ljava/util/Map;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/nwstd/resources/DynamicResourceTargetType;",
            "Lcom/amazon/nwstd/resources/DynamicResourceOrigin;",
            ")V"
        }
    .end annotation

    .line 1020
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1021
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1022
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1023
    new-instance v1, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;

    iget-object v2, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    invoke-direct {v1, v2}, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;-><init>(Lcom/amazon/nwstd/resources/DynamicResourcesController;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->setReference(Ljava/lang/String;)Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;

    invoke-virtual {v1, p2}, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->setTargetType(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;)Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;

    invoke-virtual {v1, p3}, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->setOriginType(Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->setParentASIN(Ljava/lang/String;)Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;

    invoke-virtual {v1}, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->create()Lcom/amazon/nwstd/resources/DynamicResource;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1025
    sget-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    const/16 v1, 0x10

    const-string v2, "couldn\'t insert target page and asin info."

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addTextResources(Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V
    .locals 1

    const/4 v0, 0x0

    .line 900
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->addTextResources(Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;)V

    return-void
.end method

.method private addTextResources(Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 914
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->getLocalizedStrings()Ljava/util/Map;

    move-result-object p1

    .line 915
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 916
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 917
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 918
    new-instance v1, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;

    iget-object v2, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    invoke-direct {v1, v2}, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;-><init>(Lcom/amazon/nwstd/resources/DynamicResourcesController;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->setReference(Ljava/lang/String;)Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;

    invoke-virtual {v1, p2}, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->setTargetType(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;)Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/nwstd/utils/LocaleUtils;->toLanguageTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->setLanguage(Ljava/lang/String;)Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;

    invoke-virtual {v1, p3}, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->setOriginType(Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;

    invoke-virtual {v1, p4}, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->setParentASIN(Ljava/lang/String;)Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;

    invoke-virtual {v1}, Lcom/amazon/nwstd/resources/DynamicResourcesController$Builder;->create()Lcom/amazon/nwstd/resources/DynamicResource;

    move-result-object v1

    if-nez v1, :cond_1

    .line 920
    sget-object v1, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    const/16 v2, 0x10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t insert the text resource "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static appendValueToList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    .line 1272
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1275
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2c

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static varargs createInstance(Lcom/amazon/nwstd/resources/DynamicResourcesController;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;
    .locals 11

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-nez p7, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    new-instance v10, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;-><init>(Lcom/amazon/nwstd/resources/DynamicResourcesController;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v10

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private hasCampaignChanged(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1301
    sget-object p1, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    const/4 p2, 0x4

    const-string v1, "Upsell campaign id is null so the campaign is considered disabled."

    invoke-static {p1, p2, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    :cond_0
    if-nez p2, :cond_1

    if-nez p1, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1306
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private isCampaignActiveServerSide(Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 838
    :goto_0
    invoke-static {v2}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 841
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->getCampaignContentDownloadValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 846
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 848
    :catch_0
    sget-object v2, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    const/16 v3, 0x10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t parse upsell campaign content download status : ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]; cannot know if campaign was consumed, assuming true."

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    const/4 p1, 0x1

    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-nez p1, :cond_2

    and-int/lit8 p1, v2, 0x1

    goto :goto_3

    :cond_2
    and-int/lit8 p1, v2, 0x0

    :goto_3
    return p1
.end method

.method private isCampaignExternallyDeclined(Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 870
    :goto_0
    invoke-static {v2}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 873
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->getNumberOfCampaignExternalDeclinesValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 878
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p1

    goto :goto_1

    .line 880
    :catch_0
    sget-object v2, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    const/16 v3, 0x8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t parse upsell campaign number of declines : ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]; cannot know if the campaign was declined, assuming true."

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-lez v1, :cond_2

    goto :goto_3

    :cond_2
    move v0, p1

    :goto_3
    return v0
.end method

.method private prepareImageListToDownload(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/nwstd/resources/DynamicResource;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 730
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 732
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 733
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_3

    .line 734
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 735
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 736
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 739
    invoke-static {v3}, Lcom/amazon/nwstd/utils/LocaleUtils;->toLanguageTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 740
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 743
    :cond_0
    invoke-static {v3}, Lcom/amazon/nwstd/utils/LocaleUtils;->toLanguageTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/nwstd/resources/DynamicResource;

    .line 746
    invoke-virtual {v4}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 748
    array-length v6, v5

    const/16 v7, 0x8

    if-eq v6, v2, :cond_1

    .line 749
    sget-object v2, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected filename format="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". File will be downloaded again"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v7, v5}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 750
    iget-object v2, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    invoke-virtual {v2, v4}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->removeResource(Lcom/amazon/nwstd/resources/DynamicResource;)Z

    .line 751
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    .line 755
    aget-object v5, v5, v6

    .line 759
    :try_start_0
    new-instance v6, Ljava/net/URI;

    invoke-direct {v6, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    new-instance v7, Ljava/io/File;

    invoke-virtual {v6}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 769
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 770
    sget-object v5, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New banner available:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v2, v6}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 771
    iget-object v2, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    invoke-virtual {v2, v4}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->removeResource(Lcom/amazon/nwstd/resources/DynamicResource;)Z

    .line 772
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    :cond_2
    :goto_1
    invoke-static {v3}, Lcom/amazon/nwstd/utils/LocaleUtils;->toLanguageTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 761
    :catch_0
    sget-object v2, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unparsable url="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url will be ignored"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v7, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 763
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    invoke-virtual {v1, v4}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->removeResource(Lcom/amazon/nwstd/resources/DynamicResource;)Z

    goto/16 :goto_0

    .line 783
    :cond_3
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/nwstd/resources/DynamicResource;

    .line 784
    sget-object v1, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Purging banner resource:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 785
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    invoke-virtual {v1, p2}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->removeResource(Lcom/amazon/nwstd/resources/DynamicResource;)Z

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method private readJson(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1218
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF8"

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1220
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1221
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1223
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1288
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    invoke-static {p3}, Lcom/amazon/nwstd/utils/LocaleUtils;->toLanguageTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1289
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/nwstd/resources/DynamicResource;

    .line 1290
    iget-object p3, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    invoke-virtual {p3, p2}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->removeResource(Lcom/amazon/nwstd/resources/DynamicResource;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeParentAsinSpecificData(Ljava/util/Map;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/nwstd/resources/DynamicResourceTargetType;",
            "Lcom/amazon/nwstd/resources/DynamicResourceOrigin;",
            ")V"
        }
    .end annotation

    .line 1056
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1057
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1058
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1059
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 1060
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1061
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p2, p3, v1, v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private reportImageFetchError(Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;)V
    .locals 3

    .line 1034
    sget-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$1;->$SwitchMap$com$amazon$nwstd$upsell$fetcher$UpsellDataFetcher$Target:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1044
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown UpsellDataFecther.Target value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "CECoverFetchError"

    .line 1036
    invoke-virtual {p0, p1, v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->reportSyncMetricEvent(Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "CEBannerImageFetchError"

    .line 1040
    invoke-virtual {p0, p1, v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->reportSyncMetricEvent(Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private saveBannerData(Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V
    .locals 2

    .line 702
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->BANNER_button_shop:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1, v1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->BANNER_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    invoke-direct {p0, v0, p2, v1, v1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->BANNER_retail_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    invoke-direct {p0, v0, p2, v1, v1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->BANNER_title:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    invoke-direct {p0, v0, p2, v1, v1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->BANNER_freq:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    invoke-direct {p0, v0, p2, v1, v1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 708
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->getTitle()Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    move-result-object v0

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->BANNER_title:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    invoke-direct {p0, v0, v1, p2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->addTextResources(Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    .line 709
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->getDescription()Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    move-result-object v0

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->BANNER_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    invoke-direct {p0, v0, v1, p2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->addTextResources(Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    .line 710
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->getRetailDescription()Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    move-result-object v0

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->BANNER_retail_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    invoke-direct {p0, v0, v1, p2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->addTextResources(Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    .line 711
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->getSeeDetailsButtonText()Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    move-result-object v0

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->BANNER_button_shop:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    invoke-direct {p0, v0, v1, p2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->addTextResources(Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    .line 712
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->getBannerFreuqency()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 714
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->getBannerFreuqency()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->BANNER_freq:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->addIdResource(Ljava/lang/String;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    goto :goto_0

    .line 717
    :cond_0
    sget-object p1, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    const/16 p2, 0x8

    const-string v0, "The banner part of the JSON was not present"

    invoke-static {p1, p2, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private saveBannerRetailDescription(Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;)V
    .locals 5

    if-nez p1, :cond_0

    .line 484
    sget-object p1, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    const/16 v0, 0x8

    const-string v1, "Banner\'s retail Description specific to parentASIN is available in JSON"

    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 488
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;->getAsinRetailDescription()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 490
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 491
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 492
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->BANNER_retail_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->ALL:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->BANNER_retail_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v3, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->ALL:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->addTextResources(Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private saveCoverData(Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;)V
    .locals 9

    .line 451
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->getCeUpsellFullPageAdInfo()Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 453
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;->getCoverImagesURL()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_cover:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->ALL:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeParentAsinSpecificData(Ljava/util/Map;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    .line 454
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;->getCoverImagesURL()Ljava/util/Map;

    move-result-object v4

    sget-object v6, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_cover:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v7, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->ALL:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->addImageResources(Ljava/util/Map;Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Z)V

    goto :goto_0

    .line 456
    :cond_0
    sget-object p1, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    const/16 p2, 0x8

    const-string v0, "The cover page part of the JSON was not present when performing a cover sync"

    invoke-static {p1, p2, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private saveFullPageRetailDescription(Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;)V
    .locals 5

    if-nez p1, :cond_0

    .line 505
    sget-object p1, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    const/16 v0, 0x8

    const-string v1, "FullPage\'s retail Description specific to parentASIN is available in JSON"

    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 509
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;->getAsinRetailDescription()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 511
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 513
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_retail_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->ALL:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_retail_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v3, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->ALL:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->addTextResources(Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private saveFullpageAdData(Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V
    .locals 8

    .line 669
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_button_shop:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1, v1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    invoke-direct {p0, v0, p2, v1, v1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_retail_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    invoke-direct {p0, v0, p2, v1, v1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_title:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    invoke-direct {p0, v0, p2, v1, v1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_freq:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    invoke-direct {p0, v0, p2, v1, v1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 675
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;->getTitle()Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    move-result-object v0

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_title:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    invoke-direct {p0, v0, v2, p2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->addTextResources(Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    .line 676
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;->getDescription()Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    move-result-object v0

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    invoke-direct {p0, v0, v2, p2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->addTextResources(Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    .line 677
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;->getRetailDescription()Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    move-result-object v0

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_retail_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    invoke-direct {p0, v0, v2, p2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->addTextResources(Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    .line 678
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;->getSeeDetailsButtonText()Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    move-result-object v0

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_button_shop:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    invoke-direct {p0, v0, v2, p2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->addTextResources(Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    .line 679
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;->getBannerFreuqency()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 681
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;->getBannerFreuqency()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_freq:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    invoke-direct {p0, v0, v2, p2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->addIdResource(Ljava/lang/String;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    .line 683
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;->getCardBackgroundImage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 684
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;->getCardBackgroundImage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 686
    iget-object p2, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_card_background:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->ALL:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-virtual {p2, v0, v2, v1, v1}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 687
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 688
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 689
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;->getCardBackgroundImage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    sget-object v4, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;->FULL_SYNC:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;

    sget-object v5, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_card_background:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v6, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->ALL:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->addImageResources(Ljava/util/Map;Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Z)V

    goto :goto_0

    .line 694
    :cond_2
    sget-object p1, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    const/16 p2, 0x8

    const-string v0, "The full page part of the JSON was not present when performing a full page sync"

    invoke-static {p1, p2, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private saveHomeBannerData(Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;)V
    .locals 11

    .line 641
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_title:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_button_start:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_cardrank:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->getUpsellHomeBannerInfo()Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;

    move-result-object p1

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    .line 647
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;->getTitle()Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    move-result-object v1

    sget-object v3, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_title:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v4, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, v1, v3, v4}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->addTextResources(Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    .line 648
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;->getDescription()Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    move-result-object v1

    sget-object v3, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v4, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, v1, v3, v4}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->addTextResources(Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    .line 649
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;->getStartButtonText()Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    move-result-object v1

    sget-object v3, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_button_start:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v4, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, v1, v3, v4}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->addTextResources(Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    .line 650
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;->getCardRank()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_cardrank:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v4, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, v1, v3, v4}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->addFlagResource(Ljava/lang/String;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    .line 651
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellHomeBannerInfo;->getHomeBannerImages()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 653
    sget-object p1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_image:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, p1, v0, v2, v2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    sget-object v8, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_image:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v9, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    const/4 v10, 0x0

    move-object v5, p0

    move-object v7, p2

    invoke-direct/range {v5 .. v10}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->addImageResources(Ljava/util/Map;Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Z)V

    goto :goto_0

    .line 656
    :cond_0
    sget-object p1, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    const-string p2, "Home banner images are not present in fullSync JSON "

    invoke-static {p1, v0, p2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 657
    sget-object p1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_image:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object p2, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, p1, p2, v2, v2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 660
    :cond_1
    sget-object p1, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    const-string p2, "Home Banner is not present in fullSync JSON"

    invoke-static {p1, v0, p2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private saveLibraryAndCampaignData(Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;)V
    .locals 8

    .line 524
    invoke-static {}, Lcom/amazon/nwstd/upsell/UpsellUtils;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    .line 525
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->hasCampaignChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 528
    iget-object v2, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->getCampaignId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->reportCampaignChangedEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const-string/jumbo v3, "upsell.library.decline"

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 534
    invoke-virtual {p0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeLibraryBanner()V

    .line 535
    invoke-virtual {p0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeHomeBanner()V

    .line 537
    sget-object p1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->CAMPAIGN_ID:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object p2, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, p1, p2, v4, v4}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/nwstd/storage/CachedKVStorage;->getInstance(Landroid/content/Context;)Lcom/amazon/nwstd/storage/CachedKVStorage;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/amazon/nwstd/storage/KVStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 542
    :cond_1
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->CAMPAIGN_ID:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v5, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, v0, v5, v4, v4}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->isCampaignActiveServerSide(Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;)Z

    move-result v0

    .line 546
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->getCampaignId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->CAMPAIGN_ID:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v7, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, v5, v6, v7}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->addIdResource(Ljava/lang/String;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    .line 550
    iget-object v5, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/amazon/nwstd/storage/CachedKVStorage;->getInstance(Landroid/content/Context;)Lcom/amazon/nwstd/storage/CachedKVStorage;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/amazon/nwstd/storage/KVStorage;->getValueAsBoolean(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v5

    .line 559
    :goto_0
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->isCampaignExternallyDeclined(Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v6, v2

    :goto_1
    if-nez v6, :cond_6

    if-eqz v1, :cond_5

    .line 569
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 570
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "NewsstandCELibrary"

    const-string v2, "CELibraryBannerDisplayed"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :cond_5
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$bool;->nwstd_fortate_identity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 575
    invoke-direct {p0, p1, p2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->saveHomeBannerData(Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;)V

    .line 576
    invoke-direct {p0, p1, p2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->saveLibraryBannerData(Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;)V

    .line 577
    invoke-static {}, Lcom/amazon/nwstd/modules/FosVersionInNewsstand;->getFosVersion()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-static {}, Lcom/amazon/nwstd/modules/FosVersionInNewsstand;->getFosVersion()Ljava/lang/String;

    move-result-object p2

    const-string v0, "fos4"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 578
    invoke-virtual {p0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->pushLibraryBannerUpdate()V

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    const-string v0, "CEExternallyDeclinedCampaign"

    .line 585
    invoke-virtual {p0, p2, v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->reportSyncMetricEvent(Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;Ljava/lang/String;)V

    .line 587
    :cond_7
    invoke-virtual {p0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeLibraryBanner()V

    .line 588
    invoke-virtual {p0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeHomeBanner()V

    .line 590
    :cond_8
    :goto_2
    iget-object p2, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/amazon/nwstd/storage/CachedKVStorage;->getInstance(Landroid/content/Context;)Lcom/amazon/nwstd/storage/CachedKVStorage;

    move-result-object p2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Lcom/amazon/nwstd/storage/KVStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 592
    sget-object p2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_SYNC_FREQ:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->ALL:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, p2, v0, v4, v4}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->getFullSyncFrequenyValue()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 594
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->getFullSyncFrequenyValue()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_SYNC_FREQ:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->ALL:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->addIdResource(Ljava/lang/String;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    goto :goto_3

    .line 596
    :cond_9
    sget-object p1, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    const/4 p2, 0x2

    const-string v0, "Full sync frequency is absent in the received JSON"

    invoke-static {p1, p2, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    :goto_3
    return-void
.end method

.method private saveLibraryBannerData(Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;)V
    .locals 8

    .line 607
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_button_cancel:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_button_start:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_title:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->getUpsellLibBannerInfo()Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 614
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->getTitle()Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    move-result-object v0

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_title:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v3, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, v0, v1, v3}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->addTextResources(Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    .line 615
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->getDescription()Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    move-result-object v0

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v3, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, v0, v1, v3}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->addTextResources(Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    .line 616
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->getCancelButtonText()Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    move-result-object v0

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_button_cancel:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v3, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, v0, v1, v3}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->addTextResources(Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    .line 617
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->getStartButtonText()Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    move-result-object v0

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_button_start:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v3, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, v0, v1, v3}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->addTextResources(Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    .line 620
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_image:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v3, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-virtual {v0, v1, v3, v2, v2}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 621
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 622
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/nwstd/resources/DynamicResource;

    .line 623
    invoke-virtual {v2}, Lcom/amazon/nwstd/resources/DynamicResource;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 626
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellLibBannerInfo;->getImages()Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;

    move-result-object p1

    .line 627
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/LocalizedString;->getLocalizedStrings()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->prepareImageListToDownload(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 629
    sget-object v5, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_image:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v6, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    const/4 v7, 0x1

    move-object v2, p0

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->addImageResources(Ljava/util/Map;Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Z)V

    goto :goto_1

    .line 632
    :cond_1
    sget-object p1, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    const/16 p2, 0x8

    const-string v0, "The library banner part of the JSON was not present"

    invoke-static {p1, p2, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 633
    sget-object p1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_image:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object p2, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, p1, p2, v2, v2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private saveTargetPageData(Lcom/amazon/nwstd/upsell/fetcher/UpsellTargetPageInfo;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 466
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellTargetPageInfo;->getTargetAsins()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->TARGET_ASIN:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->ALL:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeParentAsinSpecificData(Ljava/util/Map;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    .line 467
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellTargetPageInfo;->getTargetPages()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->TARGET_PAGE:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->ALL:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeParentAsinSpecificData(Ljava/util/Map;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    .line 469
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellTargetPageInfo;->getTargetAsins()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->TARGET_ASIN:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->ALL:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->addTargetPageResources(Ljava/util/Map;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    .line 470
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellTargetPageInfo;->getTargetPages()Ljava/util/Map;

    move-result-object p1

    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->TARGET_PAGE:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->ALL:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->addTargetPageResources(Ljava/util/Map;Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    goto :goto_0

    .line 472
    :cond_0
    sget-object p1, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    const/16 v0, 0x8

    const-string v1, "TargetPage and TargetAsin info is not present in JSON"

    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected fetchData(Ljava/net/URI;Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$DownloadStats;)Ljava/io/InputStream;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;,
            Lorg/apache/http/NoHttpResponseException;
        }
    .end annotation

    .line 1138
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1141
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v2

    .line 1142
    invoke-interface {v2}, Lcom/amazon/kindle/network/INetworkService;->isWifiConnected()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/amazon/kindle/network/INetworkService;->isDataConnected()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/amazon/kindle/network/INetworkService;->isWanConnected()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 1183
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p2, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$DownloadStats;->totalDownloadTimeMS:J

    return-object v4

    :cond_1
    const/4 v2, 0x0

    .line 1146
    :goto_0
    :try_start_1
    iget v3, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mMaxHttpGetRetries:I

    if-ge v2, v3, :cond_0

    .line 1147
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1150
    sget-object v3, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Pulling URL="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v7, v8}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 1152
    iget-object v3, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mCookieDomain:Ljava/lang/String;

    iget-object v7, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mXfsn:Ljava/lang/String;

    iget-object v8, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mXmain:Ljava/lang/String;

    iget-object v9, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mPfm:Ljava/lang/String;

    invoke-static {p1, v3, v7, v8, v9}, Lcom/amazon/nwstd/service/upsell/UpsellStoreURLBuilder;->sendStoreHttpRequest(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1158
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    .line 1159
    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 1160
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 1161
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_2

    .line 1165
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    iput-wide v7, p2, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$DownloadStats;->successDownloadTimeMS:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1183
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    iput-wide v4, p2, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$DownloadStats;->totalDownloadTimeMS:J

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 1169
    :try_start_2
    iget v3, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mMaxHttpGetRetries:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v5, 0x8

    const-string v6, "Failed to download response. HTTP status code="

    if-eq v2, v3, :cond_3

    .line 1174
    :try_start_3
    sget-object v3, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Will retry in "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mWaitTimeMS:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "ms"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 1175
    iget v3, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mWaitTimeMS:I

    int-to-long v5, v3

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    .line 1170
    :cond_3
    sget-object p1, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v5, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 1171
    new-instance p1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1155
    :cond_4
    new-instance v2, Lorg/apache/http/NoHttpResponseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retrieve HTTP response for uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/apache/http/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 1183
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p2, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$DownloadStats;->totalDownloadTimeMS:J

    .line 1184
    throw p1
.end method

.method public getStoreURI(Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;)Ljava/net/URI;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mStoreEndPoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->QUERY_PARAM_METHOD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->QUERY_PARAM_DEVICE_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mDeviceType:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->QUERY_PARAM_USER_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1098
    sget-object v2, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;->FULL_SYNC:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;

    if-ne p1, v2, :cond_0

    .line 1099
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->QUERY_PARAM_TARGET:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1103
    :cond_0
    sget-object v2, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;->COVER_SYNC:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;

    if-ne p1, v2, :cond_2

    const/4 p1, 0x0

    .line 1105
    iget-object v2, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mParentAsins:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 1106
    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->appendValueToList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 1110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->QUERY_PARAM_ASIN:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1114
    :cond_2
    new-instance p1, Ljava/net/URI;

    invoke-direct {p1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public parseAndSaveSampleJson(Ljava/lang/String;)V
    .locals 3

    .line 1313
    sget-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;->FULL_SYNC:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->parseJsonResponse(Ljava/lang/String;Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;)Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1315
    sget-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    const/16 v1, 0x10

    const-string v2, "Unable to parse the JSON from local file"

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 1319
    :cond_0
    sget-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;->FULL_SYNC:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->saveData(Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;)V

    .line 1322
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/nwstd/storage/CachedKVStorage;->getInstance(Landroid/content/Context;)Lcom/amazon/nwstd/storage/CachedKVStorage;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1323
    :goto_0
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 1324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string/jumbo v2, "upsell.sync.timestamp"

    .line 1325
    invoke-virtual {p1, v2}, Lcom/amazon/nwstd/storage/KVStorage;->getValueAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 1326
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/amazon/nwstd/storage/KVStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected parseJsonResponse(Ljava/lang/String;Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;)Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;
    .locals 4

    .line 1236
    new-instance v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;

    invoke-direct {v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;-><init>()V

    const/4 v1, 0x0

    .line 1238
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->parse(Lorg/json/JSONObject;)V

    .line 1239
    invoke-virtual {v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->getCampaignId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->getCampaignId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;->FULL_SYNC:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;

    if-ne p2, p1, :cond_0

    const-string p1, "CEJsonDataInvalidMissingcampaignID"

    .line 1240
    invoke-virtual {p0, p2, p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->reportSyncMetricEvent(Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;Ljava/lang/String;)V

    return-object v1

    .line 1243
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->getReceivedLocales()Ljava/util/Set;

    move-result-object p1

    const/4 v2, 0x1

    .line 1245
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1246
    invoke-virtual {v0, v3}, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->check(Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v2, v3

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const-string p1, "CEJsonDataInvalidMissingResource"

    .line 1249
    invoke-virtual {p0, p2, p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->reportSyncMetricEvent(Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "CEJsonDataValid"

    .line 1252
    invoke-virtual {p0, p2, p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->reportSyncMetricEvent(Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception p1

    const-string v0, "CEJsonDataInvalidMalformed"

    .line 1256
    invoke-virtual {p0, p2, v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->reportSyncMetricEvent(Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;Ljava/lang/String;)V

    .line 1258
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1
.end method

.method protected pushLibraryBannerUpdate()V
    .locals 2

    .line 812
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    iget-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mFilesDir:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/amazon/nwstd/cms/CMSLibraryBannerFactory;->createLibraryBanner(Lcom/amazon/nwstd/resources/DynamicResourcesController;Ljava/io/File;)Lcom/amazon/nwstd/cms/CMSLibraryBanner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 815
    invoke-static {v0}, Lcom/amazon/nwstd/cms/NewsstandCMSUtils;->pushLibraryBanner(Lcom/amazon/nwstd/cms/CMSLibraryBanner;)V

    :cond_0
    return-void
.end method

.method protected removeHomeBanner()V
    .locals 3

    .line 825
    sget-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "Remove Home banner"

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 826
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_title:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_button_start:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_image:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->removeDataFromDB(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected removeLibraryBanner()V
    .locals 3

    .line 796
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$bool;->nwstd_fortate_identity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 797
    invoke-static {}, Lcom/amazon/nwstd/modules/FosVersionInNewsstand;->getFosVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/nwstd/modules/FosVersionInNewsstand;->getFosVersion()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fos4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    invoke-static {v1, v1}, Lcom/amazon/nwstd/cms/NewsstandCMSUtils;->removeLibraryBanner(ZZ)V

    goto :goto_0

    .line 800
    :cond_0
    invoke-static {v1, v1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->removeLibraryBanner(ZZ)V

    goto :goto_0

    .line 803
    :cond_1
    invoke-static {v1, v1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->removeLibraryBanner(ZZ)V

    :goto_0
    return-void
.end method

.method protected reportSyncMetricEvent(Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;Ljava/lang/String;)V
    .locals 1

    .line 383
    sget-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;->FULL_SYNC:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;

    if-ne p1, v0, :cond_0

    .line 384
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "NewsstandCEFullSync"

    invoke-virtual {p1, v0, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :cond_0
    sget-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;->COVER_SYNC:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;

    if-ne p1, v0, :cond_1

    .line 387
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "NewsstandCECoverSync"

    invoke-virtual {p1, v0, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected reportSyncMetricTimer(Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;Ljava/lang/String;J)V
    .locals 7

    .line 398
    sget-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;->FULL_SYNC:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;

    if-ne p1, v0, :cond_0

    .line 399
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    sget-object v4, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    const-string v2, "NewsstandCEFullSyncTimer"

    move-object v3, p2

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;J)V

    goto :goto_0

    .line 404
    :cond_0
    sget-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;->COVER_SYNC:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;

    if-ne p1, v0, :cond_1

    .line 405
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    sget-object v4, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    const-string v2, "NewsstandCECoverSyncTimer"

    move-object v3, p2

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected saveData(Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 419
    :goto_0
    invoke-static {v2}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 421
    sget-object v2, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$1;->$SwitchMap$com$amazon$nwstd$upsell$fetcher$UpsellDataFetcher$Target:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_2

    const/4 v0, 0x2

    if-eq v2, v0, :cond_1

    .line 440
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown UpsellDataFecther.Target value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    goto :goto_1

    .line 433
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->saveCoverData(Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;)V

    .line 434
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->getUpsellTargetPageInfo()Lcom/amazon/nwstd/upsell/fetcher/UpsellTargetPageInfo;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->saveTargetPageData(Lcom/amazon/nwstd/upsell/fetcher/UpsellTargetPageInfo;)V

    .line 435
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->getCeUpsellBannerInfo()Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->saveBannerRetailDescription(Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;)V

    .line 436
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->getCeUpsellFullPageAdInfo()Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->saveFullPageRetailDescription(Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;)V

    goto :goto_1

    .line 423
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->saveLibraryAndCampaignData(Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;)V

    .line 424
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->getCeUpsellBannerInfo()Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;

    move-result-object p2

    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, p2, v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->saveBannerData(Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    .line 425
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->getKuUpsellBannerInfo()Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;

    move-result-object p2

    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->KU:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, p2, v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->saveBannerData(Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    .line 426
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->getPrUpsellBannerInfo()Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;

    move-result-object p2

    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->PR:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, p2, v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->saveBannerData(Lcom/amazon/nwstd/upsell/fetcher/UpsellBannerInfo;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    .line 427
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->getCeUpsellFullPageAdInfo()Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;

    move-result-object p2

    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, p2, v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->saveFullpageAdData(Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    .line 428
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->getKuUpsellFullPageAdInfo()Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;

    move-result-object p2

    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->KU:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, p2, v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->saveFullpageAdData(Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    .line 429
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;->getPrUpsellFullPageAdInfo()Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;

    move-result-object p1

    sget-object p2, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->PR:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-direct {p0, p1, p2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->saveFullpageAdData(Lcom/amazon/nwstd/upsell/fetcher/UpsellFullPageAdInfo;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    :goto_1
    return-void
.end method

.method public sync(Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;)Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;
    .locals 13

    const-string v0, "Unable to close stream"

    const-string v1, "Unable to fetch store data on "

    const-string v2, "Unable to build store URL"

    const/16 v3, 0x10

    .line 285
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->getStoreURI(Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;)Ljava/net/URI;

    move-result-object v4
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 290
    :goto_0
    invoke-static {v7}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    if-nez v4, :cond_1

    .line 293
    sget-object p1, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    invoke-static {p1, v3, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 294
    sget-object p1, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;->SYNC_ERROR:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;

    return-object p1

    .line 297
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 300
    new-instance v2, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$DownloadStats;

    const/4 v9, 0x0

    invoke-direct {v2, v9}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$DownloadStats;-><init>(Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$1;)V

    .line 302
    :try_start_1
    invoke-virtual {p0, v4, v2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->fetchData(Ljava/net/URI;Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$DownloadStats;)Ljava/io/InputStream;

    move-result-object v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 305
    :try_start_2
    invoke-direct {p0, v9}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->readJson(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_2

    .line 310
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_0
    move-exception v9

    .line 313
    :try_start_4
    sget-object v11, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    invoke-static {v11, v3, v0, v9}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_1
    if-nez v10, :cond_3

    .line 328
    sget-object p1, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    const/16 v0, 0x8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to connect to store url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 329
    sget-object p1, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;->SYNC_OFFLINE:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;

    return-object p1

    :cond_3
    const-string v0, "CEJsonDownloadSuccess"

    .line 331
    invoke-virtual {p0, p1, v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->reportSyncMetricEvent(Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;Ljava/lang/String;)V

    .line 333
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v7

    iget-wide v7, v2, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$DownloadStats;->totalDownloadTimeMS:J

    sub-long/2addr v0, v7

    iget-wide v7, v2, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$DownloadStats;->successDownloadTimeMS:J

    add-long/2addr v0, v7

    const-string v2, "CEJsonDownloadDuration"

    .line 332
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->reportSyncMetricTimer(Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;Ljava/lang/String;J)V

    .line 336
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 337
    sget-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "upsell json="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 341
    :cond_4
    invoke-virtual {p0, v10, p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->parseJsonResponse(Ljava/lang/String;Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;)Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;

    move-result-object v0

    if-nez v0, :cond_5

    .line 343
    sget-object p1, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to parse the JSON at uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v3, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 344
    sget-object p1, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;->SYNC_ERROR:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;

    return-object p1

    .line 348
    :cond_5
    invoke-virtual {p0, v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->saveData(Lcom/amazon/nwstd/upsell/fetcher/UpsellInfo;Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;)V

    .line 351
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/nwstd/storage/CachedKVStorage;->getInstance(Landroid/content/Context;)Lcom/amazon/nwstd/storage/CachedKVStorage;

    move-result-object v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    .line 352
    :goto_2
    invoke-static {v5}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 353
    sget-object v1, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;->FULL_SYNC:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;

    if-ne p1, v1, :cond_8

    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string/jumbo v3, "upsell.sync.timestamp"

    .line 355
    invoke-virtual {v0, v3}, Lcom/amazon/nwstd/storage/KVStorage;->getValueAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 357
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_7

    .line 358
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v7

    sget-object v10, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v11, v1, v4

    const-string v8, "NewsstandCEFullSyncTimer"

    const-string v9, "CEFullSyncInterval"

    invoke-virtual/range {v7 .. v12}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;J)V

    .line 361
    :cond_7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/amazon/nwstd/storage/KVStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 365
    :cond_8
    sget-object v1, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;->COVER_SYNC:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;

    if-ne p1, v1, :cond_9

    .line 366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 368
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->mParentAsins:[Ljava/lang/String;

    array-length v2, v1

    :goto_3
    if-ge v6, v2, :cond_9

    aget-object v3, v1, v6

    .line 369
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "upsell.coversync.timestamp."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 370
    invoke-virtual {v0, v3, p1}, Lcom/amazon/nwstd/storage/KVStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 374
    :cond_9
    sget-object p1, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;->SYNC_SUCCESS:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;

    return-object p1

    :catchall_0
    move-exception v2

    if-eqz v9, :cond_a

    .line 310
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_1
    move-exception v5

    .line 313
    :try_start_6
    sget-object v6, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    invoke-static {v6, v3, v0, v5}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 315
    :cond_a
    :goto_4
    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception v0

    .line 322
    sget-object v2, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "CEJsonDownloadFailure"

    .line 323
    invoke-virtual {p0, p1, v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->reportSyncMetricEvent(Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;Ljava/lang/String;)V

    .line 324
    sget-object p1, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;->SYNC_ERROR:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;

    return-object p1

    :catch_3
    move-exception v0

    .line 317
    sget-object v2, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "CEJsonServerFailure"

    .line 318
    invoke-virtual {p0, p1, v0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->reportSyncMetricEvent(Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;Ljava/lang/String;)V

    .line 319
    sget-object p1, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;->SYNC_ERROR:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;

    return-object p1

    :catch_4
    move-exception p1

    .line 287
    sget-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->TAG:Ljava/lang/String;

    invoke-static {v0, v3, v2, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    sget-object p1, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;->SYNC_ERROR:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;

    return-object p1
.end method

.method protected writeFile(Ljava/io/InputStream;Ljava/io/File;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1195
    :goto_0
    invoke-static {v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    const-wide/16 v1, 0x0

    .line 1197
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 p2, 0x400

    new-array p2, p2, [B

    .line 1201
    :goto_1
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 1202
    invoke-virtual {v3, p2, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v4, v4

    add-long/2addr v1, v4

    goto :goto_1

    .line 1205
    :cond_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 1206
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    return-wide v1
.end method
