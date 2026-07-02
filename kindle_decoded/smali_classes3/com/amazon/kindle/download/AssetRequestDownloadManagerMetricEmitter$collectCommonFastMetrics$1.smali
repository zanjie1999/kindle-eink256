.class final Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter$collectCommonFastMetrics$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AssetRequestDownloadManagerMetricEmitter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;->collectCommonFastMetrics(Lcom/amazon/kindle/download/DownloadRequestTask;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
        "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAssetRequestDownloadManagerMetricEmitter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AssetRequestDownloadManagerMetricEmitter.kt\ncom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter$collectCommonFastMetrics$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,202:1\n1#2:203\n*E\n"
.end annotation


# instance fields
.field final synthetic $task:Lcom/amazon/kindle/download/DownloadRequestTask;

.field final synthetic this$0:Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;Lcom/amazon/kindle/download/DownloadRequestTask;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter$collectCommonFastMetrics$1;->this$0:Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;

    iput-object p2, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter$collectCommonFastMetrics$1;->$task:Lcom/amazon/kindle/download/DownloadRequestTask;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "$receiver"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v2, v0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter$collectCommonFastMetrics$1;->$task:Lcom/amazon/kindle/download/DownloadRequestTask;

    invoke-virtual {v2}, Lcom/amazon/kindle/download/DownloadRequestTask;->getRequest$com_amazon_kindle_dm()Lcom/amazon/kindle/services/download/IDownloadRequest;

    move-result-object v2

    .line 135
    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v3

    const-string v4, "asset"

    .line 136
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kindle/services/download/IBookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    .line 138
    iget-object v5, v0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter$collectCommonFastMetrics$1;->this$0:Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;

    invoke-static {v5}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;->access$getNetworkService$p(Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;)Lcom/amazon/kindle/network/INetworkService;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/network/INetworkService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 140
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v7

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x3e

    const/16 v16, 0x0

    const-string v9, ":"

    invoke-static/range {v8 .. v16}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v5, "NONE"

    :goto_0
    const-string v6, "bookId"

    .line 143
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const-string v6, "UNKNOWN"

    :goto_1
    const-string v7, "content_asin"

    invoke-interface {v1, v7, v6}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 144
    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kcp/library/models/BookType;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "book_type"

    invoke-interface {v1, v6, v4}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 145
    invoke-interface {v3}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "asset_id"

    invoke-interface {v1, v4, v3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    const-string v3, "network_type"

    .line 146
    invoke-interface {v1, v3, v5}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 157
    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "request.downloadPath"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "SCRUBBED_USER_ID"

    invoke-static {v3, v4}, Lcom/amazon/kindle/util/String_ExtensionsKt;->scrubDirectedId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "download_path"

    invoke-interface {v1, v4, v3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 159
    iget-object v3, v0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter$collectCommonFastMetrics$1;->$task:Lcom/amazon/kindle/download/DownloadRequestTask;

    invoke-virtual {v3}, Lcom/amazon/kindle/download/DownloadRequestTask;->getCreationTimeUTC$com_amazon_kindle_dm()Ljava/util/Calendar;

    move-result-object v3

    const-string v4, "task.creationTimeUTC"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const-string v5, "creation_time"

    invoke-interface {v1, v5, v3, v4}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addLong(Ljava/lang/String;J)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 160
    iget-object v3, v0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter$collectCommonFastMetrics$1;->$task:Lcom/amazon/kindle/download/DownloadRequestTask;

    invoke-virtual {v3}, Lcom/amazon/kindle/download/DownloadRequestTask;->getWorkStartTimeUTC$com_amazon_kindle_dm()Ljava/util/Calendar;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const-string v5, "started_time"

    invoke-interface {v1, v5, v3, v4}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addLong(Ljava/lang/String;J)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 161
    :cond_2
    iget-object v3, v0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter$collectCommonFastMetrics$1;->$task:Lcom/amazon/kindle/download/DownloadRequestTask;

    invoke-virtual {v3}, Lcom/amazon/kindle/download/DownloadRequestTask;->getCompletionTimeUTC$com_amazon_kindle_dm()Ljava/util/Calendar;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const-string v5, "completed_time"

    invoke-interface {v1, v5, v3, v4}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addLong(Ljava/lang/String;J)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 162
    :cond_3
    invoke-interface {v2}, Lcom/amazon/kindle/webservices/IWebRequest;->isCancelled()Z

    move-result v2

    const-string v3, "download_cancelled"

    invoke-interface {v1, v3, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v1

    const-string v2, "addInteger(KEY_CANCELLED\u2026st.isCancelled) 1 else 0)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 72
    check-cast p1, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter$collectCommonFastMetrics$1;->invoke(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    return-object p1
.end method
