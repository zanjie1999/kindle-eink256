.class public final Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneralHandler;
.super Ljava/lang/Object;
.source "SearchAttemptMetricsGeneralHandler.kt"

# interfaces
.implements Lcom/amazon/kcp/search/metrics/ISearchMetricsHandler;


# instance fields
.field private final fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

.field private final marketplace:Lcom/amazon/kcp/application/Marketplace;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-class v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iput-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneralHandler;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    .line 24
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    const-string v1, "Marketplace.getInstance(\u2026fetchToken(TokenKey.PFM))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneralHandler;->marketplace:Lcom/amazon/kcp/application/Marketplace;

    return-void
.end method

.method private final buildPayload(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;)Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;
    .locals 3

    .line 113
    sget-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->SEARCH_ID:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->getSearchId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    .line 114
    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->SEARCH_SESSION_ID:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->getSearchSessionId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    .line 115
    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->CONTEXT:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->getContext()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    .line 116
    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->IS_DEVICE_OFFLINE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->isDeviceOffline()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addBoolean(Ljava/lang/String;Z)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    .line 117
    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->SEARCH_SUGGESTION_SELECTED_POSITION:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->getSearchSuggestionSelectedPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 120
    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->getSearchKeyword()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->SEARCH_KEYWORD:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 123
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->getSpellCorrectedKeyword()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->SPELL_CORRECTED_KEYWORD:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 126
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->getRefinements()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 127
    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->REFINEMENTS:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 129
    :cond_2
    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->getSearchSuggestionResult()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 130
    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->SEARCH_SUGGESTION:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 132
    :cond_3
    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->getSearchKeywordBeforeSuggestion()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 133
    sget-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->SEARCH_KEYWORD_BEFORE_SUGGESTION:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 136
    :cond_4
    invoke-interface {p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p1

    const-string p2, "payloadBuilder.build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getRefinementBrowseNodeIds(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 52
    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneralHandler;->marketplace:Lcom/amazon/kcp/application/Marketplace;

    invoke-static {v1, v2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->getStoreFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 54
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final prepareGeneralRecord(Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;)Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;
    .locals 28

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getSearchSuggestionResult()Ljava/util/List;

    move-result-object v0

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 68
    sget-object v6, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneralHandler$prepareGeneralRecord$searchSuggestionStr$1$1;->INSTANCE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneralHandler$prepareGeneralRecord$searchSuggestionStr$1$1;

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const-string/jumbo v1, "|"

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_0

    :cond_0
    move-object/from16 v18, v9

    .line 73
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getStoreFilters()Ljava/util/List;

    move-result-object v0

    move-object/from16 v1, p0

    if-eqz v0, :cond_1

    .line 74
    invoke-direct {v1, v0}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneralHandler;->getRefinementBrowseNodeIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v19, v0

    goto :goto_1

    :cond_1
    move-object/from16 v19, v9

    .line 77
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v19, :cond_2

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 81
    sget-object v25, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneralHandler$prepareGeneralRecord$2$1;->INSTANCE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneralHandler$prepareGeneralRecord$2$1;

    const/16 v26, 0x1e

    const/16 v27, 0x0

    const-string/jumbo v20, "|"

    invoke-static/range {v19 .. v27}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v9

    :goto_2
    if-eqz v2, :cond_3

    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getStoreSortType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string/jumbo v3, "|"

    .line 87
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_4
    new-instance v2, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getSearchId()Ljava/util/UUID;

    move-result-object v11

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getSearchSessionId()Ljava/util/UUID;

    move-result-object v12

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getContext()Ljava/lang/String;

    move-result-object v13

    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getNetworkAvailable()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/lit8 v14, v3, 0x1

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getSearchKeyword()Ljava/lang/String;

    move-result-object v15

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getSpellCorrectedKeyword()Ljava/lang/String;

    move-result-object v16

    .line 97
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_4
    move-object/from16 v17, v9

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getSearchKeywordBeforeSuggestion()Ljava/lang/String;

    move-result-object v19

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getSearchSuggestionSelectedPosition()I

    move-result v20

    move-object v10, v2

    .line 90
    invoke-direct/range {v10 .. v20}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;-><init>(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v2
.end method


# virtual methods
.method public submitRecord(Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;)V
    .locals 4

    const-string v0, "record"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getOutcomeSeqNum()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneralHandler;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 34
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneralHandler;->prepareGeneralRecord(Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;)Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;

    move-result-object p1

    .line 35
    invoke-static {}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneralHandlerKt;->access$getLOG_TAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "General Record: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneralHandler;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    const-string v1, "kindle_app_search_event_general"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    const-string v1, "fastMetrics.getPayloadBu\u2026ION\n                    )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneralHandler;->buildPayload(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;)Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p1

    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneralHandler;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    goto :goto_0

    .line 45
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneralHandlerKt;->access$getLOG_TAG$p()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getSearchId()Ljava/util/UUID;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "No Implementation of fast metrics found for search %id"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
