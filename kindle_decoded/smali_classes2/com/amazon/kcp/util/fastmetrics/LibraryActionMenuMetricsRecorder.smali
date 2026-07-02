.class public final Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsRecorder;
.super Ljava/lang/Object;
.source "RecordLibraryActionButtonMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecordLibraryActionButtonMetrics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecordLibraryActionButtonMetrics.kt\ncom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsRecorder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,128:1\n1#2:129\n1517#3:130\n1588#3,3:131\n*E\n*S KotlinDebug\n*F\n+ 1 RecordLibraryActionButtonMetrics.kt\ncom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsRecorder\n*L\n114#1:130\n114#1,3:131\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsRecorder;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsRecorder;-><init>()V

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsRecorder;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsRecorder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final reportLibraryActionMenuActionSelectedMetrics(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "actionType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tabOrigin"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 95
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsRecorder;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsRecorder;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsRecorder;->serializeBookInformationForMetrics(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 96
    :goto_0
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsRecorder;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsRecorder;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsRecorder;->reportLibraryActionMenuMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final reportLibraryActionMenuMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 100
    const-class v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v0, :cond_1

    .line 102
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->LIBRARY_ACTION_MENU_METRICS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v1

    .line 103
    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->LIBRARY_ACTION_MENU_METRICS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v2

    .line 101
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v1

    .line 104
    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;->TAB_ORIGIN:Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;

    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p4}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 105
    sget-object p4, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;->ACTION_TYPE:Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;

    invoke-virtual {p4}, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;->getValue()Ljava/lang/String;

    move-result-object p4

    invoke-interface {v1, p4, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 106
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;->LIBRARY_ACTION:Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;

    invoke-virtual {p1}, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    if-eqz p2, :cond_0

    .line 107
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;->BOOK_DATA:Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;

    invoke-virtual {p1}, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    :cond_0
    const-string p1, "getPayloadBuilder(\n     \u2026bookData) }\n            }"

    .line 103
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-interface {v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    :cond_1
    return-void
.end method

.method public static final reportLibraryActionMenuPresentedMetrics(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const-string v0, "bookList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tabOrigin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsRecorder;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsRecorder;

    if-eqz p3, :cond_0

    const-string p3, "PresentActionMenuSelectionChanged"

    goto :goto_0

    :cond_0
    const-string p3, "PresentActionMenu"

    .line 77
    :goto_0
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsRecorder;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsRecorder;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsRecorder;->serializeBookInformationForMetrics(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    .line 75
    invoke-direct {v0, p3, p0, p1, p2}, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsRecorder;->reportLibraryActionMenuMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final serializeBookInformationForMetrics(Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 131
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 132
    check-cast v1, Lcom/amazon/kindle/content/ContentMetadata;

    .line 115
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    if-eqz v1, :cond_4

    .line 117
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "ASIN"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getContentType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "ContentType"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->isArchivable()Z

    move-result v3

    const-string v4, "IsArchivable"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 120
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getOriginType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "Origin"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    :cond_2
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getParentAsin()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "ParentASIN"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    :cond_3
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getReadData()Lcom/amazon/kindle/content/ReadData;

    move-result-object v1

    const-string v3, "book.readData"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ReadData;->getReadStateOrigin()Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    move-result-object v1

    const-string v3, "PreviousReadStateOrigin"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    :cond_4
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const/4 v8, 0x0

    const-string v1, ","

    .line 125
    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
