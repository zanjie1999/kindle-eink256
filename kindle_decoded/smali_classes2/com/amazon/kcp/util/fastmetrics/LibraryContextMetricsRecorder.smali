.class public final Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;
.super Ljava/lang/Object;
.source "RecordLibraryContextMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecordLibraryContextMetrics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecordLibraryContextMetrics.kt\ncom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,230:1\n1#2:231\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;-><init>()V

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final recordChangeFilter(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    const-string v0, "libraryType"

    move-object v2, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedFilters"

    move-object/from16 v5, p2

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filter"

    move-object/from16 v8, p3

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-interface/range {p2 .. p3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/ActionType;->UNSET_FILTER:Lcom/amazon/kcp/util/fastmetrics/ActionType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/ActionType;->SET_FILTER:Lcom/amazon/kcp/util/fastmetrics/ActionType;

    :goto_0
    move-object v4, v0

    .line 77
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v12, 0x1b0

    const/4 v13, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v5, p2

    move-object/from16 v8, p3

    move-object/from16 v11, p4

    invoke-static/range {v1 .. v13}, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;->recordLibraryContextMetrics$default(Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/ActionType;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    return-void
.end method

.method public static final recordClearFilter(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;->recordClearFilter$default(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/Integer;ILjava/lang/Object;)V

    return-void
.end method

.method public static final recordClearFilter(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/Integer;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    const-string v0, "libraryType"

    move-object v2, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedFilters"

    move-object/from16 v5, p2

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;

    .line 94
    sget-object v4, Lcom/amazon/kcp/util/fastmetrics/ActionType;->CLEAR_FILTER:Lcom/amazon/kcp/util/fastmetrics/ActionType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v12, 0x1f0

    const/4 v13, 0x0

    move-object v3, p1

    move-object/from16 v11, p3

    .line 93
    invoke-static/range {v1 .. v13}, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;->recordLibraryContextMetrics$default(Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/ActionType;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic recordClearFilter$default(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 92
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;->recordClearFilter(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/Integer;)V

    return-void
.end method

.method public static final recordLaunchSeriesFromSearch()V
    .locals 13

    .line 118
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;

    .line 119
    sget-object v3, Lcom/amazon/kcp/util/fastmetrics/ActionType;->PRESENT_LIBRARY:Lcom/amazon/kcp/util/fastmetrics/ActionType;

    const-string v1, "Search"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "launchSeries"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1b0

    const/4 v12, 0x0

    .line 118
    invoke-static/range {v0 .. v12}, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;->recordLibraryContextMetrics$default(Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/ActionType;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    return-void
.end method

.method private final recordLibraryContextMetrics(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/ActionType;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/util/fastmetrics/ActionType;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    .line 211
    const-class v4, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v4}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v4, :cond_9

    .line 213
    sget-object v5, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->READER_LIBRARY_ACTION_WITH_CONTEXT:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v5}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v5

    .line 214
    sget-object v6, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->READER_LIBRARY_ACTION_WITH_CONTEXT:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v6}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v6

    .line 212
    invoke-interface {v4, v5, v6}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 216
    sget-object v6, Lcom/amazon/kcp/util/fastmetrics/Key;->LIBRARY_TYPE:Lcom/amazon/kcp/util/fastmetrics/Key;

    invoke-virtual {v6}, Lcom/amazon/kcp/util/fastmetrics/Key;->getValue()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p1

    invoke-interface {v5, v6, v7}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    if-eqz v0, :cond_0

    .line 217
    sget-object v6, Lcom/amazon/kcp/util/fastmetrics/Key;->SUBLIBRARY_ID:Lcom/amazon/kcp/util/fastmetrics/Key;

    invoke-virtual {v6}, Lcom/amazon/kcp/util/fastmetrics/Key;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 218
    :cond_0
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/Key;->ACTION_TYPE:Lcom/amazon/kcp/util/fastmetrics/Key;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/Key;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kcp/util/fastmetrics/ActionType;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    if-eqz p4, :cond_1

    .line 219
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/Key;->SELECTED_FILTERS:Lcom/amazon/kcp/util/fastmetrics/Key;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/Key;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p4 .. p4}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x3f

    const/4 v14, 0x0

    invoke-static/range {v6 .. v14}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    :cond_1
    if-eqz v1, :cond_2

    .line 220
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/Key;->SELECTED_VIEWMODE:Lcom/amazon/kcp/util/fastmetrics/Key;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/Key;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    :cond_2
    if-eqz v2, :cond_3

    .line 221
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/Key;->SELECTED_SORT:Lcom/amazon/kcp/util/fastmetrics/Key;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/Key;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    :cond_3
    if-eqz v3, :cond_4

    .line 222
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/Key;->ACTION_VALUE:Lcom/amazon/kcp/util/fastmetrics/Key;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/Key;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    :cond_4
    if-eqz p8, :cond_5

    .line 223
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/Key;->TIME_IN_LAST_CONTEXT_STATE:Lcom/amazon/kcp/util/fastmetrics/Key;

    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/Key;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2, v0, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addDouble(Ljava/lang/String;D)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    :cond_5
    if-eqz p9, :cond_6

    .line 224
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/Key;->VIEWED_ITEMS_COUNT:Lcom/amazon/kcp/util/fastmetrics/Key;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/Key;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    :cond_6
    if-eqz p10, :cond_8

    .line 225
    invoke-virtual/range {p10 .. p10}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/Key;->DISPLAYED_ITEMS_COUNT:Lcom/amazon/kcp/util/fastmetrics/Key;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/Key;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    goto :goto_0

    :cond_7
    const/4 v5, 0x0

    :cond_8
    :goto_0
    const-string v0, "getPayloadBuilder(\n     \u2026alue, it) }\n            }"

    .line 214
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-interface {v5}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    :cond_9
    return-void
.end method

.method static synthetic recordLibraryContextMetrics$default(Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/ActionType;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 14

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object/from16 v5, p2

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object/from16 v7, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    move-object v8, v2

    goto :goto_2

    :cond_2
    move-object/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v9, v2

    goto :goto_3

    :cond_3
    move-object/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move-object v10, v2

    goto :goto_4

    :cond_4
    move-object/from16 v10, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-object v11, v2

    goto :goto_5

    :cond_5
    move-object/from16 v11, p8

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    move-object v12, v2

    goto :goto_6

    :cond_6
    move-object/from16 v12, p9

    :goto_6
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_7

    move-object v13, v2

    goto :goto_7

    :cond_7
    move-object/from16 v13, p10

    :goto_7
    move-object v3, p0

    move-object v4, p1

    move-object/from16 v6, p3

    .line 210
    invoke-direct/range {v3 .. v13}, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;->recordLibraryContextMetrics(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/ActionType;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static final recordLibraryReadItemsAction(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 14

    const-string v0, "libraryType"

    move-object v2, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeToggled"

    move-object/from16 v8, p3

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 156
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/ActionType;->HIDE_READ_ITEMS:Lcom/amazon/kcp/util/fastmetrics/ActionType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/ActionType;->SHOW_READ_ITEMS:Lcom/amazon/kcp/util/fastmetrics/ActionType;

    :goto_0
    move-object v4, v0

    .line 157
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1b0

    const/4 v13, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v8, p3

    invoke-static/range {v1 .. v13}, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;->recordLibraryContextMetrics$default(Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/ActionType;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    return-void
.end method

.method public static final recordLibraryViewChangeAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "libraryType"

    move-object v2, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedFilters"

    move-object/from16 v5, p2

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    sget-object v4, Lcom/amazon/kcp/util/fastmetrics/ActionType;->LIBRARY_VIEW_CHANGE:Lcom/amazon/kcp/util/fastmetrics/ActionType;

    .line 174
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3c0

    const/4 v13, 0x0

    move-object v3, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-static/range {v1 .. v13}, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;->recordLibraryContextMetrics$default(Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/ActionType;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    return-void
.end method

.method public static final recordOpenFilterMenuAction(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, v0}, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;->recordOpenFilterMenuAction$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static final recordOpenFilterMenuAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    const-string v0, "libraryType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;

    .line 142
    sget-object v4, Lcom/amazon/kcp/util/fastmetrics/ActionType;->OPEN_FILTER_MENU:Lcom/amazon/kcp/util/fastmetrics/ActionType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1b0

    const/4 v13, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 141
    invoke-static/range {v1 .. v13}, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;->recordLibraryContextMetrics$default(Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/ActionType;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic recordOpenFilterMenuAction$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 140
    :cond_0
    invoke-static {p0, p1}, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;->recordOpenFilterMenuAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final recordPresentLibrary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    const-string v0, "libraryType"

    move-object v2, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presentedLibraryType"

    move-object/from16 v8, p2

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;

    .line 108
    sget-object v4, Lcom/amazon/kcp/util/fastmetrics/ActionType;->PRESENT_LIBRARY:Lcom/amazon/kcp/util/fastmetrics/ActionType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1b0

    const/4 v13, 0x0

    move-object v3, p1

    .line 107
    invoke-static/range {v1 .. v13}, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;->recordLibraryContextMetrics$default(Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/ActionType;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    return-void
.end method

.method public static final recordSeeSeriesButtonPressed()V
    .locals 13

    .line 128
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;

    .line 129
    sget-object v3, Lcom/amazon/kcp/util/fastmetrics/ActionType;->SEE_SERIES_BUTTON_PRESSED:Lcom/amazon/kcp/util/fastmetrics/ActionType;

    const-string v1, "Series"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1b0

    const/4 v12, 0x0

    .line 128
    invoke-static/range {v0 .. v12}, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;->recordLibraryContextMetrics$default(Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/ActionType;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    return-void
.end method

.method public static final reportSeriesGroupMetrics(Lcom/amazon/kindle/content/IGroupService;Z)V
    .locals 4

    const-string v0, "groupService"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p1, "seriesGroupingEnabled"

    goto :goto_0

    :cond_0
    const-string p1, "seriesGroupingDisabled"

    .line 189
    :goto_0
    const-class v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v0, :cond_2

    .line 191
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->READER_LIBRARY_SERIES_GROUP_METRICS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v1

    .line 192
    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->READER_LIBRARY_SERIES_GROUP_METRICS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v2

    .line 190
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 193
    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;->SERIES_COUNT:Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;

    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/amazon/kindle/content/IGroupService;->getNumberOfGroups()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 194
    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;->MAX_SERIES_SIZE:Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;

    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/amazon/kindle/content/IGroupService;->getMaxSizeOfGroup()I

    move-result p0

    invoke-interface {v1, v2, p0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 195
    sget-object p0, Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;->SERIES_GROUPING_SETTING:Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;

    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string p0, "getPayloadBuilder(\n     \u2026ingSetting)\n            }"

    .line 192
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-interface {v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    :cond_2
    return-void
.end method
