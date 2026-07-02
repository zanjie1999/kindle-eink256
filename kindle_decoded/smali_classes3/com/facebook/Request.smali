.class public Lcom/facebook/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;,
        Lcom/facebook/Request$GraphPlaceListCallback;,
        Lcom/facebook/Request$GraphUserCallback;,
        Lcom/facebook/Request$OnProgressCallback;,
        Lcom/facebook/Request$Callback;,
        Lcom/facebook/Request$Serializer;,
        Lcom/facebook/Request$KeyValueSerializer;,
        Lcom/facebook/Request$Attachment;
    }
.end annotation


# static fields
.field private static final ACCEPT_LANGUAGE_HEADER:Ljava/lang/String; = "Accept-Language"

.field private static final ACCESS_TOKEN_PARAM:Ljava/lang/String; = "access_token"

.field private static final ATTACHED_FILES_PARAM:Ljava/lang/String; = "attached_files"

.field private static final ATTACHMENT_FILENAME_PREFIX:Ljava/lang/String; = "file"

.field private static final BATCH_APP_ID_PARAM:Ljava/lang/String; = "batch_app_id"

.field private static final BATCH_BODY_PARAM:Ljava/lang/String; = "body"

.field private static final BATCH_ENTRY_DEPENDS_ON_PARAM:Ljava/lang/String; = "depends_on"

.field private static final BATCH_ENTRY_NAME_PARAM:Ljava/lang/String; = "name"

.field private static final BATCH_ENTRY_OMIT_RESPONSE_ON_SUCCESS_PARAM:Ljava/lang/String; = "omit_response_on_success"

.field private static final BATCH_METHOD_PARAM:Ljava/lang/String; = "method"

.field private static final BATCH_PARAM:Ljava/lang/String; = "batch"

.field private static final BATCH_RELATIVE_URL_PARAM:Ljava/lang/String; = "relative_url"

.field private static final CONTENT_TYPE_HEADER:Ljava/lang/String; = "Content-Type"

.field private static final FORMAT_JSON:Ljava/lang/String; = "json"

.field private static final FORMAT_PARAM:Ljava/lang/String; = "format"

.field private static final ISO_8601_FORMAT_STRING:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ssZ"

.field private static final ME:Ljava/lang/String; = "me"

.field private static final MIME_BOUNDARY:Ljava/lang/String; = "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

.field private static final MY_ACTION_FORMAT:Ljava/lang/String; = "me/%s"

.field private static final MY_FEED:Ljava/lang/String; = "me/feed"

.field private static final MY_FRIENDS:Ljava/lang/String; = "me/friends"

.field private static final MY_OBJECTS_FORMAT:Ljava/lang/String; = "me/objects/%s"

.field private static final MY_PHOTOS:Ljava/lang/String; = "me/photos"

.field private static final MY_STAGING_RESOURCES:Ljava/lang/String; = "me/staging_resources"

.field private static final MY_VIDEOS:Ljava/lang/String; = "me/videos"

.field private static final OBJECT_PARAM:Ljava/lang/String; = "object"

.field private static final PICTURE_PARAM:Ljava/lang/String; = "picture"

.field private static final SDK_ANDROID:Ljava/lang/String; = "android"

.field private static final SDK_PARAM:Ljava/lang/String; = "sdk"

.field private static final SEARCH:Ljava/lang/String; = "search"

.field private static final STAGING_PARAM:Ljava/lang/String; = "file"

.field private static final USER_AGENT_BASE:Ljava/lang/String; = "FBAndroidSDK"

.field private static final USER_AGENT_HEADER:Ljava/lang/String; = "User-Agent"

.field private static final VIDEOS_SUFFIX:Ljava/lang/String; = "/videos"

.field private static defaultBatchApplicationId:Ljava/lang/String;

.field private static volatile userAgent:Ljava/lang/String;

.field private static versionPattern:Ljava/util/regex/Pattern;


# instance fields
.field private batchEntryDependsOn:Ljava/lang/String;

.field private batchEntryName:Ljava/lang/String;

.field private batchEntryOmitResultOnSuccess:Z

.field private callback:Lcom/facebook/Request$Callback;

.field private graphObject:Lcom/facebook/model/GraphObject;

.field private graphPath:Ljava/lang/String;

.field private httpMethod:Lcom/facebook/HttpMethod;

.field private overriddenURL:Ljava/lang/String;

.field private parameters:Landroid/os/Bundle;

.field private session:Lcom/facebook/Session;

.field private tag:Ljava/lang/Object;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^/?v\\d+\\.\\d+/(.*)"

    .line 113
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/Request;->versionPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 132
    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/Session;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 147
    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 193
    invoke-direct/range {v0 .. v6}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;Ljava/lang/String;)V
    .locals 1

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/facebook/Request;->batchEntryOmitResultOnSuccess:Z

    .line 219
    iput-object p1, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    .line 220
    iput-object p2, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    .line 221
    iput-object p5, p0, Lcom/facebook/Request;->callback:Lcom/facebook/Request$Callback;

    .line 222
    iput-object p6, p0, Lcom/facebook/Request;->version:Ljava/lang/String;

    .line 224
    invoke-virtual {p0, p4}, Lcom/facebook/Request;->setHttpMethod(Lcom/facebook/HttpMethod;)V

    if-eqz p3, :cond_0

    .line 227
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    goto :goto_0

    .line 229
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    .line 232
    :goto_0
    iget-object p1, p0, Lcom/facebook/Request;->version:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 233
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getAPIVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/Request;->version:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method constructor <init>(Lcom/facebook/Session;Ljava/net/URL;)V
    .locals 1

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/facebook/Request;->batchEntryOmitResultOnSuccess:Z

    .line 238
    iput-object p1, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    .line 239
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/Request;->overriddenURL:Ljava/lang/String;

    .line 241
    sget-object p1, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-virtual {p0, p1}, Lcom/facebook/Request;->setHttpMethod(Lcom/facebook/HttpMethod;)V

    .line 243
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/Response;Ljava/lang/Class;)Ljava/util/List;
    .locals 0

    .line 62
    invoke-static {p0, p1}, Lcom/facebook/Request;->typedListFromResponse(Lcom/facebook/Response;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/Object;)Z
    .locals 0

    .line 62
    invoke-static {p0}, Lcom/facebook/Request;->isSupportedParameterType(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-static {p0}, Lcom/facebook/Request;->parameterToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private addCommonParameters()V
    .locals 4

    .line 1693
    iget-object v0, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    const-string v1, "access_token"

    if-eqz v0, :cond_1

    .line 1694
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1696
    iget-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1697
    iget-object v0, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    invoke-virtual {v0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 1698
    invoke-static {v0}, Lcom/facebook/internal/Logger;->registerAccessToken(Ljava/lang/String;)V

    .line 1699
    iget-object v2, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1695
    :cond_0
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Session provided to a Request in un-opened state."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1701
    :cond_1
    iget-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1702
    invoke-static {}, Lcom/facebook/Settings;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 1703
    invoke-static {}, Lcom/facebook/Settings;->getClientToken()Ljava/lang/String;

    move-result-object v2

    .line 1704
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1705
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1706
    iget-object v2, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    const-string v1, "sdk"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    iget-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    const-string v1, "format"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private appendParametersToBaseUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1717
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 1719
    iget-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1720
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1721
    iget-object v2, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    .line 1727
    :cond_0
    invoke-static {v2}, Lcom/facebook/Request;->isSupportedParameterType(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1728
    invoke-static {v2}, Lcom/facebook/Request;->parameterToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1737
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 1730
    :cond_1
    iget-object v1, p0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;

    sget-object v3, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    if-eq v1, v3, :cond_2

    goto :goto_0

    .line 1731
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Unsupported parameter type for GET request: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1740
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1681
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 1683
    invoke-static {}, Lcom/facebook/Request;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    invoke-static {}, Lcom/facebook/Request;->getMimeContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accept-Language"

    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1687
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    return-object p0
.end method

.method public static executeAndWait(Lcom/facebook/Request;)Lcom/facebook/Response;
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/facebook/Request;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 1375
    invoke-static {v1}, Lcom/facebook/Request;->executeBatchAndWait([Lcom/facebook/Request;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1377
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1381
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/Response;

    return-object p0

    .line 1378
    :cond_0
    new-instance p0, Lcom/facebook/FacebookException;

    const-string v0, "invalid state: expected a single response"

    invoke-direct {p0, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static executeBatchAndWait(Lcom/facebook/RequestBatch;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/RequestBatch;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    const-string v0, "requests"

    .line 1441
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1445
    :try_start_0
    invoke-static {p0}, Lcom/facebook/Request;->toHttpConnection(Lcom/facebook/RequestBatch;)Ljava/net/HttpURLConnection;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1452
    invoke-static {v0, p0}, Lcom/facebook/Request;->executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v0

    .line 1447
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getRequests()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/facebook/FacebookException;

    invoke-direct {v3, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1, v2, v3}, Lcom/facebook/Response;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;

    move-result-object v0

    .line 1448
    invoke-static {p0, v0}, Lcom/facebook/Request;->runCallbacks(Lcom/facebook/RequestBatch;Ljava/util/List;)V

    return-object v0
.end method

.method public static executeBatchAndWait(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/facebook/Request;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .line 1421
    new-instance v0, Lcom/facebook/RequestBatch;

    invoke-direct {v0, p0}, Lcom/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/Request;->executeBatchAndWait(Lcom/facebook/RequestBatch;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static varargs executeBatchAndWait([Lcom/facebook/Request;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/Request;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    const-string v0, "requests"

    .line 1401
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1403
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/Request;->executeBatchAndWait(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static executeBatchAsync(Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;
    .locals 1

    const-string v0, "requests"

    .line 1509
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1511
    new-instance v0, Lcom/facebook/RequestAsyncTask;

    invoke-direct {v0, p0}, Lcom/facebook/RequestAsyncTask;-><init>(Lcom/facebook/RequestBatch;)V

    .line 1512
    invoke-virtual {v0}, Lcom/facebook/RequestAsyncTask;->executeOnSettingsExecutor()Lcom/facebook/RequestAsyncTask;

    return-object v0
.end method

.method public static executeBatchAsync(Ljava/util/Collection;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/facebook/Request;",
            ">;)",
            "Lcom/facebook/RequestAsyncTask;"
        }
    .end annotation

    .line 1491
    new-instance v0, Lcom/facebook/RequestBatch;

    invoke-direct {v0, p0}, Lcom/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/Request;->executeBatchAsync(Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public static varargs executeBatchAsync([Lcom/facebook/Request;)Lcom/facebook/RequestAsyncTask;
    .locals 1

    const-string v0, "requests"

    .line 1471
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1473
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/Request;->executeBatchAsync(Ljava/util/Collection;)Lcom/facebook/RequestAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public static executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/RequestBatch;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .line 1553
    invoke-static {p0, p1}, Lcom/facebook/Response;->fromHttpConnection(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;

    move-result-object v0

    .line 1555
    invoke-static {p0}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    .line 1557
    invoke-virtual {p1}, Lcom/facebook/RequestBatch;->size()I

    move-result p0

    .line 1558
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne p0, v1, :cond_3

    .line 1563
    invoke-static {p1, v0}, Lcom/facebook/Request;->runCallbacks(Lcom/facebook/RequestBatch;Ljava/util/List;)V

    .line 1567
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 1568
    invoke-virtual {p1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/Request;

    .line 1569
    iget-object v1, v1, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    if-eqz v1, :cond_0

    .line 1570
    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1573
    :cond_1
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/Session;

    .line 1574
    invoke-virtual {p1}, Lcom/facebook/Session;->extendAccessTokenIfNeeded()V

    goto :goto_1

    :cond_2
    return-object v0

    .line 1559
    :cond_3
    new-instance p1, Lcom/facebook/FacebookException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, "Received %d responses while expecting %d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getBatchAppId(Lcom/facebook/RequestBatch;)Ljava/lang/String;
    .locals 1

    .line 2108
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getBatchApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2109
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getBatchApplicationId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2112
    :cond_0
    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/Request;

    .line 2113
    iget-object v0, v0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    if-eqz v0, :cond_1

    .line 2115
    invoke-virtual {v0}, Lcom/facebook/Session;->getApplicationId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2118
    :cond_2
    sget-object p0, Lcom/facebook/Request;->defaultBatchApplicationId:Ljava/lang/String;

    return-object p0
.end method

.method private getGraphPathWithVersion()Ljava/lang/String;
    .locals 3

    .line 1771
    sget-object v0, Lcom/facebook/Request;->versionPattern:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1772
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1773
    iget-object v0, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1775
    iget-object v2, p0, Lcom/facebook/Request;->version:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "%s/%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMimeContentType()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    aput-object v2, v0, v1

    const-string v1, "multipart/form-data; boundary=%s"

    .line 2094
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUserAgent()Ljava/lang/String;
    .locals 3

    .line 2100
    sget-object v0, Lcom/facebook/Request;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "FBAndroidSDK"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "3.18.0"

    aput-object v2, v0, v1

    const-string v1, "%s.%s"

    .line 2101
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/Request;->userAgent:Ljava/lang/String;

    .line 2104
    :cond_0
    sget-object v0, Lcom/facebook/Request;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method private static hasOnProgressCallbacks(Lcom/facebook/RequestBatch;)Z
    .locals 3

    .line 1850
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/RequestBatch$Callback;

    .line 1851
    instance-of v1, v1, Lcom/facebook/RequestBatch$OnProgressCallback;

    if-eqz v1, :cond_0

    return v2

    .line 1856
    :cond_1
    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/Request;

    .line 1857
    invoke-virtual {v0}, Lcom/facebook/Request;->getCallback()Lcom/facebook/Request$Callback;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/Request$OnProgressCallback;

    if-eqz v0, :cond_2

    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static isMeRequest(Ljava/lang/String;)Z
    .locals 3

    .line 1972
    sget-object v0, Lcom/facebook/Request;->versionPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1973
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1975
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, "me/"

    .line 1977
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "/me/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v2
.end method

.method private static isSupportedAttachmentType(Ljava/lang/Object;)Z
    .locals 1

    .line 2136
    instance-of v0, p0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    instance-of v0, p0, [B

    if-nez v0, :cond_1

    instance-of v0, p0, Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_1

    instance-of p0, p0, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;

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

.method private static isSupportedParameterType(Ljava/lang/Object;)Z
    .locals 1

    .line 2141
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_1

    instance-of p0, p0, Ljava/util/Date;

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

.method public static newGraphPathRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 7

    .line 374
    new-instance v6, Lcom/facebook/Request;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v6
.end method

.method public static newMeRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/Request;
    .locals 6

    .line 276
    new-instance v5, Lcom/facebook/Request$1;

    invoke-direct {v5, p1}, Lcom/facebook/Request$1;-><init>(Lcom/facebook/Request$GraphUserCallback;)V

    .line 284
    new-instance p1, Lcom/facebook/Request;

    const-string v2, "me"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object p1
.end method

.method public static newPlacesSearchRequest(Lcom/facebook/Session;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/Request$GraphPlaceListCallback;)Lcom/facebook/Request;
    .locals 6

    if-nez p1, :cond_1

    .line 401
    invoke-static {p4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "Either location or searchText must be specified."

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 405
    :cond_1
    :goto_0
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x5

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    const-string v0, "type"

    const-string v1, "place"

    .line 406
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "limit"

    .line 407
    invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p1, :cond_2

    .line 409
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%f,%f"

    invoke-static {p3, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "center"

    invoke-virtual {v3, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "distance"

    .line 411
    invoke-virtual {v3, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 413
    :cond_2
    invoke-static {p4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "q"

    .line 414
    invoke-virtual {v3, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_3
    new-instance v5, Lcom/facebook/Request$3;

    invoke-direct {v5, p5}, Lcom/facebook/Request$3;-><init>(Lcom/facebook/Request$GraphPlaceListCallback;)V

    .line 426
    new-instance p1, Lcom/facebook/Request;

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    const-string v2, "search"

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object p1
.end method

.method public static newPostRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 7

    .line 261
    new-instance v6, Lcom/facebook/Request;

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 262
    invoke-virtual {v6, p2}, Lcom/facebook/Request;->setGraphObject(Lcom/facebook/model/GraphObject;)V

    return-object v6
.end method

.method private static parameterToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 2146
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2147
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 2148
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_3

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2150
    :cond_1
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_2

    .line 2151
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2152
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2154
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported parameter type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2149
    :cond_3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static processGraphObject(Lcom/facebook/model/GraphObject;Ljava/lang/String;Lcom/facebook/Request$KeyValueSerializer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1992
    invoke-static {p1}, Lcom/facebook/Request;->isMeRequest(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, ":"

    .line 1993
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v3, "?"

    .line 1994
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v3, 0x3

    if-le v0, v3, :cond_1

    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    if-ge v0, p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1998
    :goto_0
    invoke-interface {p0}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 1999
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz p1, :cond_2

    .line 2000
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "image"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 2001
    :goto_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0, p2, v3}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2007
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2008
    const-class v1, Lcom/facebook/model/GraphObject;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2009
    check-cast p1, Lcom/facebook/model/GraphObject;

    invoke-interface {p1}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    .line 2010
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 2011
    :cond_0
    const-class v1, Lcom/facebook/model/GraphObjectList;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2012
    check-cast p1, Lcom/facebook/model/GraphObjectList;

    invoke-interface {p1}, Lcom/facebook/model/GraphObjectList;->getInnerJSONArray()Lorg/json/JSONArray;

    move-result-object p1

    .line 2013
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2016
    :cond_1
    :goto_0
    const-class v1, Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    .line 2017
    check-cast p1, Lorg/json/JSONObject;

    if-eqz p3, :cond_2

    .line 2021
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 2022
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2023
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p0, v5, v4

    aput-object v1, v5, v3

    const-string v6, "%s[%s]"

    .line 2024
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2025
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v1, p2, p3}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V

    goto :goto_1

    :cond_2
    const-string v0, "id"

    .line 2030
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2031
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V

    goto/16 :goto_4

    :cond_3
    const-string v0, "url"

    .line 2032
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2033
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V

    goto/16 :goto_4

    :cond_4
    const-string v0, "fbsdk:create_object"

    .line 2034
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2035
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V

    goto :goto_4

    .line 2038
    :cond_5
    const-class v1, Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2039
    check-cast p1, Lorg/json/JSONArray;

    .line 2040
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_9

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p0, v5, v4

    .line 2042
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "%s[%d]"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2043
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v6

    :try_start_0
    invoke-static {v5, v6, p2, p3}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2045
    :cond_6
    const-class p3, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-nez p3, :cond_8

    const-class p3, Ljava/lang/Number;

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-nez p3, :cond_8

    const-class p3, Ljava/lang/Boolean;

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_3

    .line 2049
    :cond_7
    const-class p3, Ljava/util/Date;

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 2050
    check-cast p1, Ljava/util/Date;

    .line 2056
    new-instance p3, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {p3, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2057
    invoke-virtual {p3, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/facebook/Request$KeyValueSerializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2048
    :cond_8
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/facebook/Request$KeyValueSerializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_4
    return-void

    :catchall_0
    move-exception p0

    .line 2043
    throw p0
.end method

.method private static processRequest(Lcom/facebook/RequestBatch;Lcom/facebook/internal/Logger;ILjava/net/URL;Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1924
    new-instance v0, Lcom/facebook/Request$Serializer;

    invoke-direct {v0, p4, p1}, Lcom/facebook/Request$Serializer;-><init>(Ljava/io/OutputStream;Lcom/facebook/internal/Logger;)V

    const-string p4, "  Attachments:\n"

    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    const/4 p2, 0x0

    .line 1927
    invoke-virtual {p0, p2}, Lcom/facebook/RequestBatch;->get(I)Lcom/facebook/Request;

    move-result-object p0

    .line 1929
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 1930
    iget-object v1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1931
    iget-object v3, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1932
    invoke-static {v3}, Lcom/facebook/Request;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1933
    new-instance v4, Lcom/facebook/Request$Attachment;

    invoke-direct {v4, p0, v3}, Lcom/facebook/Request$Attachment;-><init>(Lcom/facebook/Request;Ljava/lang/Object;)V

    invoke-interface {p2, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-string v1, "  Parameters:\n"

    .line 1938
    invoke-virtual {p1, v1}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    .line 1940
    :cond_2
    iget-object v1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-static {v1, v0, p0}, Lcom/facebook/Request;->serializeParameters(Landroid/os/Bundle;Lcom/facebook/Request$Serializer;Lcom/facebook/Request;)V

    if-eqz p1, :cond_3

    .line 1943
    invoke-virtual {p1, p4}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    .line 1945
    :cond_3
    invoke-static {p2, v0}, Lcom/facebook/Request;->serializeAttachments(Ljava/util/Map;Lcom/facebook/Request$Serializer;)V

    .line 1947
    iget-object p0, p0, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;

    if-eqz p0, :cond_6

    .line 1948
    invoke-virtual {p3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/facebook/Request;->processGraphObject(Lcom/facebook/model/GraphObject;Ljava/lang/String;Lcom/facebook/Request$KeyValueSerializer;)V

    goto :goto_1

    .line 1951
    :cond_4
    invoke-static {p0}, Lcom/facebook/Request;->getBatchAppId(Lcom/facebook/RequestBatch;)Ljava/lang/String;

    move-result-object p2

    .line 1952
    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_7

    const-string p3, "batch_app_id"

    .line 1957
    invoke-virtual {v0, p3, p2}, Lcom/facebook/Request$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1961
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 1962
    invoke-static {v0, p0, p2}, Lcom/facebook/Request;->serializeRequestsAsJSON(Lcom/facebook/Request$Serializer;Ljava/util/Collection;Ljava/util/Map;)V

    if-eqz p1, :cond_5

    .line 1965
    invoke-virtual {p1, p4}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    .line 1967
    :cond_5
    invoke-static {p2, v0}, Lcom/facebook/Request;->serializeAttachments(Ljava/util/Map;Lcom/facebook/Request$Serializer;)V

    :cond_6
    :goto_1
    return-void

    .line 1953
    :cond_7
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "At least one request in a batch must have an open Session, or a default app ID must be specified."

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static runCallbacks(Lcom/facebook/RequestBatch;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/RequestBatch;",
            "Ljava/util/List<",
            "Lcom/facebook/Response;",
            ">;)V"
        }
    .end annotation

    .line 1643
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->size()I

    move-result v0

    .line 1646
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1648
    invoke-virtual {p0, v2}, Lcom/facebook/RequestBatch;->get(I)Lcom/facebook/Request;

    move-result-object v3

    .line 1649
    iget-object v4, v3, Lcom/facebook/Request;->callback:Lcom/facebook/Request$Callback;

    if-eqz v4, :cond_0

    .line 1650
    new-instance v4, Landroid/util/Pair;

    iget-object v3, v3, Lcom/facebook/Request;->callback:Lcom/facebook/Request$Callback;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1654
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 1655
    new-instance p1, Lcom/facebook/Request$4;

    invoke-direct {p1, v1, p0}, Lcom/facebook/Request$4;-><init>(Ljava/util/ArrayList;Lcom/facebook/RequestBatch;)V

    .line 1668
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getCallbackHandler()Landroid/os/Handler;

    move-result-object p0

    if-nez p0, :cond_2

    .line 1671
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 1674
    :cond_2
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private static serializeAttachments(Ljava/util/Map;Lcom/facebook/Request$Serializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/Request$Attachment;",
            ">;",
            "Lcom/facebook/Request$Serializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2073
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2075
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2076
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/Request$Attachment;

    .line 2077
    invoke-virtual {v2}, Lcom/facebook/Request$Attachment;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/Request;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2078
    invoke-virtual {v2}, Lcom/facebook/Request$Attachment;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lcom/facebook/Request$Attachment;->getRequest()Lcom/facebook/Request;

    move-result-object v2

    invoke-virtual {p1, v1, v3, v2}, Lcom/facebook/Request$Serializer;->writeObject(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static serializeParameters(Landroid/os/Bundle;Lcom/facebook/Request$Serializer;Lcom/facebook/Request;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2062
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2064
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2065
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 2066
    invoke-static {v2}, Lcom/facebook/Request;->isSupportedParameterType(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2067
    invoke-virtual {p1, v1, v2, p2}, Lcom/facebook/Request$Serializer;->writeObject(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static serializeRequestsAsJSON(Lcom/facebook/Request$Serializer;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/Request$Serializer;",
            "Ljava/util/Collection<",
            "Lcom/facebook/Request;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/Request$Attachment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2085
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2086
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/Request;

    .line 2087
    invoke-direct {v2, v0, p2}, Lcom/facebook/Request;->serializeToBatch(Lorg/json/JSONArray;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const-string p2, "batch"

    .line 2090
    invoke-virtual {p0, p2, v0, p1}, Lcom/facebook/Request$Serializer;->writeRequestsAsJson(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Collection;)V

    return-void
.end method

.method private serializeToBatch(Lorg/json/JSONArray;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/Request$Attachment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1797
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1799
    iget-object v1, p0, Lcom/facebook/Request;->batchEntryName:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "name"

    .line 1800
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1801
    iget-boolean v1, p0, Lcom/facebook/Request;->batchEntryOmitResultOnSuccess:Z

    const-string v2, "omit_response_on_success"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1803
    :cond_0
    iget-object v1, p0, Lcom/facebook/Request;->batchEntryDependsOn:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "depends_on"

    .line 1804
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1807
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/Request;->getUrlForBatchedRequest()Ljava/lang/String;

    move-result-object v1

    const-string v2, "relative_url"

    .line 1808
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1809
    iget-object v2, p0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;

    const-string v3, "method"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1810
    iget-object v2, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    if-eqz v2, :cond_2

    .line 1811
    invoke-virtual {v2}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 1812
    invoke-static {v2}, Lcom/facebook/internal/Logger;->registerAccessToken(Ljava/lang/String;)V

    .line 1816
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1817
    iget-object v3, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1818
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1819
    iget-object v5, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1820
    invoke-static {v4}, Lcom/facebook/Request;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "file"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 1822
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "%s%d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1823
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1824
    new-instance v6, Lcom/facebook/Request$Attachment;

    invoke-direct {v6, p0, v4}, Lcom/facebook/Request$Attachment;-><init>(Lcom/facebook/Request;Ljava/lang/Object;)V

    invoke-interface {p2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1828
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, ","

    .line 1829
    invoke-static {p2, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "attached_files"

    .line 1830
    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1833
    :cond_5
    iget-object p2, p0, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;

    if-eqz p2, :cond_6

    .line 1835
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1836
    iget-object v2, p0, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;

    new-instance v3, Lcom/facebook/Request$5;

    invoke-direct {v3, p0, p2}, Lcom/facebook/Request$5;-><init>(Lcom/facebook/Request;Ljava/util/ArrayList;)V

    invoke-static {v2, v1, v3}, Lcom/facebook/Request;->processGraphObject(Lcom/facebook/model/GraphObject;Ljava/lang/String;Lcom/facebook/Request$KeyValueSerializer;)V

    const-string v1, "&"

    .line 1842
    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "body"

    .line 1843
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1846
    :cond_6
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void
.end method

.method static final serializeToUrlConnection(Lcom/facebook/RequestBatch;Ljava/net/HttpURLConnection;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1867
    new-instance v0, Lcom/facebook/internal/Logger;

    sget-object v1, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string v2, "Request"

    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/Logger;-><init>(Lcom/facebook/LoggingBehavior;Ljava/lang/String;)V

    .line 1869
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 1871
    invoke-virtual {p0, v2}, Lcom/facebook/RequestBatch;->get(I)Lcom/facebook/Request;

    move-result-object v4

    iget-object v4, v4, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    .line 1872
    :goto_0
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1874
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    const-string v6, "Request:\n"

    .line 1875
    invoke-virtual {v0, v6}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    .line 1876
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Id"

    invoke-virtual {v0, v7, v6}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "URL"

    .line 1877
    invoke-virtual {v0, v6, v5}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1878
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Method"

    invoke-virtual {v0, v7, v6}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "User-Agent"

    .line 1879
    invoke-virtual {p1, v6}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "Content-Type"

    .line 1880
    invoke-virtual {p1, v6}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1882
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getTimeout()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1883
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getTimeout()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1887
    sget-object v6, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    if-ne v4, v6, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_2

    .line 1889
    invoke-virtual {v0}, Lcom/facebook/internal/Logger;->log()V

    return-void

    .line 1893
    :cond_2
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v2, 0x0

    .line 1897
    :try_start_0
    invoke-static {p0}, Lcom/facebook/Request;->hasOnProgressCallbacks(Lcom/facebook/RequestBatch;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1899
    new-instance v3, Lcom/facebook/ProgressNoopOutputStream;

    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/ProgressNoopOutputStream;-><init>(Landroid/os/Handler;)V

    .line 1900
    invoke-static {p0, v2, v1, v5, v3}, Lcom/facebook/Request;->processRequest(Lcom/facebook/RequestBatch;Lcom/facebook/internal/Logger;ILjava/net/URL;Ljava/io/OutputStream;)V

    .line 1902
    invoke-virtual {v3}, Lcom/facebook/ProgressNoopOutputStream;->getMaxProgress()I

    move-result v4

    .line 1903
    invoke-virtual {v3}, Lcom/facebook/ProgressNoopOutputStream;->getProgressMap()Ljava/util/Map;

    move-result-object v9

    .line 1905
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {v7, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1906
    new-instance p1, Lcom/facebook/ProgressOutputStream;

    int-to-long v10, v4

    move-object v6, p1

    move-object v8, p0

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ProgressOutputStream;-><init>(Ljava/io/OutputStream;Lcom/facebook/RequestBatch;Ljava/util/Map;J)V

    move-object v2, p1

    goto :goto_1

    .line 1909
    :cond_3
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v3

    .line 1912
    :goto_1
    invoke-static {p0, v0, v1, v5, v2}, Lcom/facebook/Request;->processRequest(Lcom/facebook/RequestBatch;Lcom/facebook/internal/Logger;ILjava/net/URL;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1915
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 1918
    invoke-virtual {v0}, Lcom/facebook/internal/Logger;->log()V

    return-void

    :catchall_0
    move-exception p0

    .line 1915
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    throw p0
.end method

.method public static toHttpConnection(Lcom/facebook/RequestBatch;)Ljava/net/HttpURLConnection;
    .locals 3

    const-string v0, "could not construct request body"

    .line 1333
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 1335
    invoke-virtual {p0, v1}, Lcom/facebook/RequestBatch;->get(I)Lcom/facebook/Request;

    move-result-object v1

    .line 1337
    new-instance v2, Ljava/net/URL;

    invoke-virtual {v1}, Lcom/facebook/Request;->getUrlForSingleRequest()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1341
    :cond_0
    new-instance v2, Ljava/net/URL;

    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getGraphUrlBase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1349
    :goto_0
    :try_start_1
    invoke-static {v2}, Lcom/facebook/Request;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 1351
    invoke-static {p0, v1}, Lcom/facebook/Request;->serializeToUrlConnection(Lcom/facebook/RequestBatch;Ljava/net/HttpURLConnection;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 1355
    new-instance v1, Lcom/facebook/FacebookException;

    invoke-direct {v1, v0, p0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p0

    .line 1353
    new-instance v1, Lcom/facebook/FacebookException;

    invoke-direct {v1, v0, p0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception p0

    .line 1344
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "could not construct URL for request"

    invoke-direct {v0, v1, p0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static typedListFromResponse(Lcom/facebook/Response;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Lcom/facebook/Response;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 2122
    const-class v0, Lcom/facebook/model/GraphMultiResult;

    invoke-virtual {p0, v0}, Lcom/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object p0

    check-cast p0, Lcom/facebook/model/GraphMultiResult;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2127
    :cond_0
    invoke-interface {p0}, Lcom/facebook/model/GraphMultiResult;->getData()Lcom/facebook/model/GraphObjectList;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 2132
    :cond_1
    invoke-interface {p0, p1}, Lcom/facebook/model/GraphObjectList;->castToListOf(Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final executeAndWait()Lcom/facebook/Response;
    .locals 1

    .line 1261
    invoke-static {p0}, Lcom/facebook/Request;->executeAndWait(Lcom/facebook/Request;)Lcom/facebook/Response;

    move-result-object v0

    return-object v0
.end method

.method public final executeAsync()Lcom/facebook/RequestAsyncTask;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/Request;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 1274
    invoke-static {v0}, Lcom/facebook/Request;->executeBatchAsync([Lcom/facebook/Request;)Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final getCallback()Lcom/facebook/Request$Callback;
    .locals 1

    .line 1045
    iget-object v0, p0, Lcom/facebook/Request;->callback:Lcom/facebook/Request$Callback;

    return-object v0
.end method

.method public final getGraphObject()Lcom/facebook/model/GraphObject;
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;

    return-object v0
.end method

.method public final getHttpMethod()Lcom/facebook/HttpMethod;
    .locals 1

    .line 872
    iget-object v0, p0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;

    return-object v0
.end method

.method public final getParameters()Landroid/os/Bundle;
    .locals 1

    .line 914
    iget-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getSession()Lcom/facebook/Session;
    .locals 1

    .line 933
    iget-object v0, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    return-object v0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 1

    .line 1075
    iget-object v0, p0, Lcom/facebook/Request;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method final getUrlForBatchedRequest()Ljava/lang/String;
    .locals 2

    .line 1744
    iget-object v0, p0, Lcom/facebook/Request;->overriddenURL:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1748
    invoke-direct {p0}, Lcom/facebook/Request;->getGraphPathWithVersion()Ljava/lang/String;

    move-result-object v0

    .line 1749
    invoke-direct {p0}, Lcom/facebook/Request;->addCommonParameters()V

    .line 1750
    invoke-direct {p0, v0}, Lcom/facebook/Request;->appendParametersToBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1745
    :cond_0
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Can\'t override URL for a batch request"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final getUrlForSingleRequest()Ljava/lang/String;
    .locals 3

    .line 1754
    iget-object v0, p0, Lcom/facebook/Request;->overriddenURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1755
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1759
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/Request;->getHttpMethod()Lcom/facebook/HttpMethod;

    move-result-object v0

    sget-object v1, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "/videos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1760
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getGraphVideoUrlBase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1762
    :cond_1
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getGraphUrlBase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    .line 1764
    invoke-direct {p0}, Lcom/facebook/Request;->getGraphPathWithVersion()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "%s/%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1766
    invoke-direct {p0}, Lcom/facebook/Request;->addCommonParameters()V

    .line 1767
    invoke-direct {p0, v0}, Lcom/facebook/Request;->appendParametersToBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setCallback(Lcom/facebook/Request$Callback;)V
    .locals 0

    .line 1055
    iput-object p1, p0, Lcom/facebook/Request;->callback:Lcom/facebook/Request$Callback;

    return-void
.end method

.method public final setGraphObject(Lcom/facebook/model/GraphObject;)V
    .locals 0

    .line 844
    iput-object p1, p0, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;

    return-void
.end method

.method public final setHttpMethod(Lcom/facebook/HttpMethod;)V
    .locals 1

    .line 882
    iget-object v0, p0, Lcom/facebook/Request;->overriddenURL:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 883
    :cond_0
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Can\'t change HTTP method on request with overridden URL."

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    .line 885
    :cond_2
    sget-object p1, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    :goto_1
    iput-object p1, p0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;

    return-void
.end method

.method public final setParameters(Landroid/os/Bundle;)V
    .locals 0

    .line 924
    iput-object p1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 0

    .line 1065
    iput-object p1, p0, Lcom/facebook/Request;->tag:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", graphPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", graphObject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", httpMethod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
