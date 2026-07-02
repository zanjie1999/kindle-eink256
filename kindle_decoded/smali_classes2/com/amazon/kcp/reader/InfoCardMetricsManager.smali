.class public Lcom/amazon/kcp/reader/InfoCardMetricsManager;
.super Ljava/lang/Object;
.source "InfoCardMetricsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static context:Ljava/lang/String;

.field private static currentCardPosition:I

.field private static currentSchemaCardPosition:I

.field private static destinationLanguage:Ljava/lang/String;

.field private static dictCardImpressionPending:Z

.field private static dictionaryASIN:Ljava/lang/String;

.field private static entryPoint:Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;

.field private static lookupResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sourceLanguage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    const-class v0, Lcom/amazon/kcp/reader/InfoCardMetricsManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->TAG:Ljava/lang/String;

    .line 75
    sget-object v0, Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;->HIGHLIGHT:Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;

    sput-object v0, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->entryPoint:Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;

    const/4 v0, -0x1

    .line 77
    sput v0, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->currentCardPosition:I

    const/4 v1, 0x0

    .line 79
    sput-object v1, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->dictionaryASIN:Ljava/lang/String;

    .line 80
    sput-object v1, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->sourceLanguage:Ljava/lang/String;

    .line 81
    sput-object v1, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->destinationLanguage:Ljava/lang/String;

    .line 84
    sput v0, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->currentSchemaCardPosition:I

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->lookupResults:Ljava/util/Map;

    const/4 v0, 0x0

    .line 87
    sput-boolean v0, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->dictCardImpressionPending:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static emitMetric(Ljava/lang/String;)V
    .locals 10

    .line 173
    invoke-static {}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->getContext()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v0, "DictionaryInfoCard"

    .line 178
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "OptionalParamNotPassed"

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->dictionaryASIN:Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v6, v2

    goto :goto_0

    :cond_1
    const-string v0, "TranslationInfoCard"

    .line 180
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->sourceLanguage:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v3, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->destinationLanguage:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object v6, v0

    move-object v0, v2

    move-object v7, v3

    goto :goto_1

    :cond_2
    move-object v0, v2

    move-object v6, v0

    :goto_0
    move-object v7, v6

    :goto_1
    const-string v3, "QuickLookup"

    .line 187
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->lookupResults:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 188
    sget-object v3, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->lookupResults:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 189
    sget-object v4, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->lookupResults:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v3

    goto :goto_2

    :cond_3
    move-object v4, v2

    .line 193
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0x10

    if-le v2, v5, :cond_4

    .line 194
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_4
    move-object v5, v0

    .line 196
    sget v0, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->currentSchemaCardPosition:I

    const/4 v2, -0x1

    const/4 v8, 0x1

    if-ne v0, v2, :cond_7

    .line 198
    sget-object v0, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->entryPoint:Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;

    sget-object v2, Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;->HIGHLIGHT:Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;

    if-eq v0, v2, :cond_6

    sget-object v0, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->entryPoint:Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;

    sget-object v2, Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;->SELECTION_BUTTONS:Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;

    if-ne v0, v2, :cond_5

    goto :goto_3

    :cond_5
    return-void

    .line 199
    :cond_6
    :goto_3
    sput v8, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->currentSchemaCardPosition:I

    .line 205
    :cond_7
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v9, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->entryPoint:Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;

    .line 207
    invoke-virtual {v9}, Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;->getId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v3

    sget-object v3, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->context:Ljava/lang/String;

    aput-object v3, v2, v8

    const/4 v3, 0x2

    aput-object p0, v2, v3

    const/4 v3, 0x3

    sget v8, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->currentSchemaCardPosition:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v3

    const/4 v3, 0x4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    const/4 v3, 0x6

    aput-object v6, v2, v3

    const/4 v3, 0x7

    aput-object v7, v2, v3

    const-string v3, "EntryPt: %s, Context: %s, Action_id: %s, Card_position: %d, Lookup_result: %s, Dictionary_asin: %s, Source_language: %s, Destination_language: %s"

    .line 205
    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 209
    sget-object v0, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->entryPoint:Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;->getId()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->currentSchemaCardPosition:I

    move-object v2, p0

    invoke-static/range {v0 .. v7}, Lcom/amazon/kcp/util/fastmetrics/RecordInfoCardMetrics;->emitInfoCardMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static emitPendingDictionaryImpression()V
    .locals 2

    const-string v0, "DictionaryInfoCard"

    .line 230
    invoke-static {v0}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->setContext(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 231
    invoke-static {v1}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->setCurrentCardPosition(I)V

    const-string v1, "QuickLookup"

    .line 232
    invoke-static {v1}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->emitMetric(Ljava/lang/String;)V

    .line 234
    sget-object v1, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->lookupResults:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static emitSelectionButtonCardImpression(Ljava/lang/String;)V
    .locals 0

    .line 219
    invoke-static {p0}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->setContext(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 221
    invoke-static {p0}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->setCurrentCardPosition(I)V

    const-string p0, "QuickLookup"

    .line 222
    invoke-static {p0}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->emitMetric(Ljava/lang/String;)V

    return-void
.end method

.method public static getContext()Ljava/lang/String;
    .locals 1

    .line 112
    sget-object v0, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->context:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentCardPosition()I
    .locals 1

    .line 136
    sget v0, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->currentCardPosition:I

    return v0
.end method

.method public static getDictCardImpressionPending()Z
    .locals 1

    .line 120
    sget-boolean v0, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->dictCardImpressionPending:Z

    return v0
.end method

.method public static setContext(Ljava/lang/String;)V
    .locals 3

    .line 108
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v2, "New Context: %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    sput-object p0, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->context:Ljava/lang/String;

    return-void
.end method

.method public static setCurrentCardPosition(I)V
    .locals 5

    .line 129
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "New Card Position: %d"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    sput p0, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->currentCardPosition:I

    add-int/2addr p0, v1

    .line 132
    sput p0, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->currentSchemaCardPosition:I

    return-void
.end method

.method public static setDestinationLanguage(Ljava/lang/String;)V
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New Destination Language: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    sput-object p0, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->destinationLanguage:Ljava/lang/String;

    return-void
.end method

.method public static setDictCardImpressionPending(Z)V
    .locals 4

    .line 116
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "New Dict Impression Pending: %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    sput-boolean p0, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->dictCardImpressionPending:Z

    return-void
.end method

.method public static setDictionaryASIN(Ljava/lang/String;)V
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New Dictionary ASIN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    sput-object p0, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->dictionaryASIN:Ljava/lang/String;

    return-void
.end method

.method public static setEntryPoint(Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;)V
    .locals 4

    .line 103
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "New Entry: %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    sput-object p0, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->entryPoint:Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;

    return-void
.end method

.method public static setLookupResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "DictionaryInfoCard"

    .line 141
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WikipediaInfoCard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TranslationInfoCard"

    .line 142
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    :cond_0
    sget-object v0, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->lookupResults:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static setSourceLanguage(Ljava/lang/String;)V
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New Source Language: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    sput-object p0, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->sourceLanguage:Ljava/lang/String;

    return-void
.end method
