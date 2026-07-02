.class public final Lcom/amazon/kindle/metrics/DownloadMetricsPayloadStrategy;
.super Ljava/lang/Object;
.source "DownloadMetricsPayloadStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDownloadMetricsPayloadStrategy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadMetricsPayloadStrategy.kt\ncom/amazon/kindle/metrics/DownloadMetricsPayloadStrategy\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,259:1\n95#2:260\n122#2,3:261\n1#3:264\n*E\n*S KotlinDebug\n*F\n+ 1 DownloadMetricsPayloadStrategy.kt\ncom/amazon/kindle/metrics/DownloadMetricsPayloadStrategy\n*L\n98#1:260\n98#1,3:261\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/metrics/DownloadMetricsPayloadStrategy;

.field private static final MANIFEST_SERVICE_WEBLAB_VALUE_SPECIAL_CHARACTER:Ljava/lang/String; = "[{}\"]"

.field private static final typeSuffixList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/amazon/kindle/metrics/DownloadMetricsPayloadStrategy;

    invoke-direct {v0}, Lcom/amazon/kindle/metrics/DownloadMetricsPayloadStrategy;-><init>()V

    sput-object v0, Lcom/amazon/kindle/metrics/DownloadMetricsPayloadStrategy;->INSTANCE:Lcom/amazon/kindle/metrics/DownloadMetricsPayloadStrategy;

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "assetType"

    const-string v2, "unknownAssetType"

    .line 69
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "deliveryType"

    const-string v2, "unknownDeliveryType"

    .line 70
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "requirementType"

    const-string v2, "unknownRequirementType"

    .line 71
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 68
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/metrics/DownloadMetricsPayloadStrategy;->typeSuffixList:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final setCommonPayloadInfo(Lcom/amazon/kindle/metrics/DownloadMetricsPayload;Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/webservices/HttpResponseProperties;Ljava/lang/String;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;
    .locals 1

    const-string v0, "correlationId"

    .line 209
    invoke-virtual {p1, v0, p4}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    if-eqz p3, :cond_0

    .line 210
    invoke-virtual {p3}, Lcom/amazon/kindle/webservices/HttpResponseProperties;->getContentLength()Ljava/lang/Long;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "0"

    :goto_0
    const-string p4, "contentSizeByte"

    invoke-virtual {p1, p4, p3}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 212
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p3

    invoke-static {p3}, Lcom/amazon/kindle/download/manifest/ManifestContentType;->getTypeForBookType(Lcom/amazon/kcp/library/models/BookType;)Lcom/amazon/kindle/download/manifest/ManifestContentType;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 213
    invoke-virtual {p3}, Lcom/amazon/kindle/download/manifest/ManifestContentType;->getTypeString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "it.typeString"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "contentType"

    invoke-virtual {p1, p4, p3}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 217
    :cond_1
    instance-of p3, p2, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    if-eqz p3, :cond_2

    .line 218
    check-cast p2, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-virtual {p2}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p2

    const-string p3, "bookId.serializedForm"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "bookId"

    invoke-virtual {p1, p3, p2}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    :cond_2
    return-object p1
.end method

.method private final setServiceWeblabHeader(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/metrics/DownloadMetricsPayload;Lcom/amazon/kindle/webservices/HttpResponseProperties;Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)V
    .locals 4

    const-string v0, "X-Amzn-KCDX-Metrics-Attributes"

    if-eqz p3, :cond_0

    .line 237
    invoke-virtual {p3, v0}, Lcom/amazon/kindle/webservices/HttpResponseProperties;->getLastValueOfHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_2

    .line 239
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_3

    return-void

    .line 244
    :cond_3
    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "[{}\"]"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v1, p3, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 245
    invoke-virtual {p2}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->getAttributes$com_amazon_kindle_dm()Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-virtual {p2}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->getTimers$com_amazon_kindle_dm()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "download"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 248
    invoke-virtual {p2}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->getTimers$com_amazon_kindle_dm()Ljava/util/HashMap;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "it"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_4
    invoke-interface {p4}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object p2

    .line 256
    sget-object p4, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->Companion:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;

    invoke-virtual {p4}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;->getDOWNLOAD_CONTENT_OPEN_METRIC_TYPES()[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    move-result-object p4

    array-length v1, p4

    invoke-static {p4, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    .line 252
    invoke-virtual {p2, v0, p3, p1, p4}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->addAttributes(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    return-void
.end method


# virtual methods
.method public final applyTypeSuffixOnTimers$com_amazon_kindle_dm(Lcom/amazon/kindle/metrics/DownloadMetricsPayload;)V
    .locals 17

    move-object/from16 v0, p1

    const-string v1, "payload"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->getTimers$com_amazon_kindle_dm()Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x2e

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    sget-object v7, Lcom/amazon/kindle/metrics/DownloadMetricsPayloadStrategy;->typeSuffixList:Ljava/util/Map;

    .line 260
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 261
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->getAttributes$com_amazon_kindle_dm()Ljava/util/HashMap;

    move-result-object v10

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    :goto_2
    invoke-interface {v8, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x3e

    const/16 v16, 0x0

    const-string v9, "."

    .line 99
    invoke-static/range {v8 .. v16}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v1, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 104
    :cond_2
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setTimers$com_amazon_kindle_dm(Ljava/util/HashMap;)V

    return-void
.end method

.method public final createErrorMetricPayload$com_amazon_kindle_dm(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/webservices/HttpResponseProperties;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;
    .locals 3

    const-string v0, "bookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trigger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "correlationId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorDescriber"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "krlForDownloadFacade"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    new-instance v0, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    invoke-direct {v0}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;-><init>()V

    invoke-direct {p0, v0, p1, p2, p4}, Lcom/amazon/kindle/metrics/DownloadMetricsPayloadStrategy;->setCommonPayloadInfo(Lcom/amazon/kindle/metrics/DownloadMetricsPayload;Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/webservices/HttpResponseProperties;Ljava/lang/String;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 151
    invoke-interface {p5}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getError()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object p1

    const/4 p4, 0x1

    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setCounter(Ljava/lang/String;I)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p6}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getVersionString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v0, p6, p4}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setCounter(Ljava/lang/String;I)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 154
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/amazon/kindle/metrics/DownloadFailureMetricsUtilKt;->getDownloadFailureTriggerAppending(Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p4}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setCounter(Ljava/lang/String;I)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 157
    :cond_0
    invoke-interface {p5}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 158
    invoke-virtual {v0, p1, p4}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setCounter(Ljava/lang/String;I)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 159
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/amazon/kindle/metrics/DownloadFailureMetricsUtilKt;->getDownloadFailureTriggerAppending(Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p4}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setCounter(Ljava/lang/String;I)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 162
    :cond_1
    invoke-interface {p5}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getErrorTitle()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p3, "errorTitle"

    .line 163
    invoke-virtual {v0, p3, p1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 166
    :cond_2
    invoke-interface {p5}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p3, "errorMessage"

    .line 167
    invoke-virtual {v0, p3, p1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    :cond_3
    if-eqz p2, :cond_4

    .line 170
    invoke-virtual {p2}, Lcom/amazon/kindle/webservices/HttpResponseProperties;->getResponseStatus()Lcom/amazon/kindle/webservices/HTTPResponseStatus;

    move-result-object p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_5

    .line 172
    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/HTTPResponseStatus;->getHttpCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p4}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setCounter(Ljava/lang/String;I)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    :cond_5
    return-object v0
.end method

.method public final createManifestParsingErrorPayload$com_amazon_kindle_dm(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/webservices/HttpResponseProperties;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;Ljava/lang/Throwable;Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;
    .locals 7

    const-string v0, "bookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trigger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "correlationId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorDescriber"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failureReason"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "krlForDownloadFacade"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    .line 186
    invoke-virtual/range {v0 .. v6}, Lcom/amazon/kindle/metrics/DownloadMetricsPayloadStrategy;->createErrorMetricPayload$com_amazon_kindle_dm(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/webservices/HttpResponseProperties;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    move-result-object p1

    const/4 p2, 0x1

    const-string p3, "ManifestParseFailure"

    .line 194
    invoke-virtual {p1, p3, p2}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setCounter(Ljava/lang/String;I)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    const-string p4, "FailureType"

    .line 195
    invoke-virtual {p1, p4, p3}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 197
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p3

    invoke-interface {p3}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    const-string p4, "ExceptionClass"

    .line 198
    invoke-virtual {p1, p4, p3}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 199
    invoke-virtual {p1, p3, p2}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setCounter(Ljava/lang/String;I)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    :cond_0
    return-object p1
.end method

.method public final createSuccessMetricPayload$com_amazon_kindle_dm(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kindle/webservices/HttpResponseProperties;Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;Ljava/lang/String;Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;
    .locals 3

    const-string v0, "bookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "correlationId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpResponseProperties"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpLatencies"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transportMethod"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "krlForDownloadFacade"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    new-instance v0, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    invoke-direct {v0}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;-><init>()V

    invoke-direct {p0, v0, p1, p3, p2}, Lcom/amazon/kindle/metrics/DownloadMetricsPayloadStrategy;->setCommonPayloadInfo(Lcom/amazon/kindle/metrics/DownloadMetricsPayload;Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/webservices/HttpResponseProperties;Ljava/lang/String;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    if-eqz p6, :cond_0

    const-string p2, "revision"

    .line 117
    invoke-virtual {v0, p2, p6}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 118
    :cond_0
    invoke-virtual {p3}, Lcom/amazon/kindle/webservices/HttpResponseProperties;->getContentLength()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p6, "contentSizeByte"

    invoke-virtual {v0, p6, p2}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 119
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p2

    sget-object p6, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    const/4 v1, 0x1

    if-ne p2, p6, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    const-string p6, "sampling"

    invoke-virtual {v0, p6, p2}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setCounter(Ljava/lang/String;I)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 120
    invoke-virtual {p5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, v1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setCounter(Ljava/lang/String;I)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 121
    invoke-virtual {p4}, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->getRequestEnqueuedToHttpClientMilestone()J

    move-result-wide p5

    const-string p2, "requestEnqueueTime"

    invoke-virtual {v0, p2, p5, p6}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setTimer(Ljava/lang/String;J)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 122
    invoke-virtual {p4}, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->getRequestStartedByHttpClientMilestone()J

    move-result-wide p5

    const-string p2, "requestStartTime"

    invoke-virtual {v0, p2, p5, p6}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setTimer(Ljava/lang/String;J)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 123
    invoke-virtual {p4}, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->getRequestCompletedByHttpClientMilestone()J

    move-result-wide p5

    const-string p2, "downloadDoneTime"

    invoke-virtual {v0, p2, p5, p6}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setTimer(Ljava/lang/String;J)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 128
    invoke-virtual {p4}, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->getRequestStartedByHttpClientMilestone()J

    move-result-wide p5

    invoke-virtual {p4}, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->getRequestEnqueuedToHttpClientMilestone()J

    move-result-wide v1

    sub-long/2addr p5, v1

    const-string p2, "waitInQueue"

    .line 126
    invoke-virtual {v0, p2, p5, p6}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setTimer(Ljava/lang/String;J)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 132
    invoke-virtual {p4}, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->getRequestCompletedByHttpClientMilestone()J

    move-result-wide p5

    invoke-virtual {p4}, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->getRequestStartedByHttpClientMilestone()J

    move-result-wide v1

    sub-long/2addr p5, v1

    const-string p2, "download"

    .line 130
    invoke-virtual {v0, p2, p5, p6}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setTimer(Ljava/lang/String;J)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 135
    invoke-virtual {p4}, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->getConnectionDetails()Lcom/amazon/kindle/webservices/ConnectionDetails;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 136
    invoke-virtual {v0, p2}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setConnectionDetails(Lcom/amazon/kindle/webservices/ConnectionDetails;)V

    .line 138
    :cond_3
    sget-object p2, Lcom/amazon/kindle/metrics/DownloadMetricsPayloadStrategy;->INSTANCE:Lcom/amazon/kindle/metrics/DownloadMetricsPayloadStrategy;

    invoke-direct {p2, p1, v0, p3, p7}, Lcom/amazon/kindle/metrics/DownloadMetricsPayloadStrategy;->setServiceWeblabHeader(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/metrics/DownloadMetricsPayload;Lcom/amazon/kindle/webservices/HttpResponseProperties;Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)V

    return-object v0
.end method
