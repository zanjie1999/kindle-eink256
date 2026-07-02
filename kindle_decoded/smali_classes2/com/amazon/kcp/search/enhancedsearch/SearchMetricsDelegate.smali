.class Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;
.super Ljava/lang/Object;
.source "SearchMetricsDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;,
        Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;,
        Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;
    }
.end annotation


# static fields
.field private static final CONTEXT:Ljava/lang/String; = "InBookSearch"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private actionsSinceSearch:I

.field private contextID:Ljava/util/UUID;

.field private final fastMetricsRecorder:Lcom/amazon/kcp/util/fastmetrics/search/SearchFastMetricsRecorder;

.field private final readingStreamsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

.field private final searchExecutedActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;",
            ">;"
        }
    .end annotation
.end field

.field private searchID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;Lcom/amazon/kcp/util/fastmetrics/search/SearchFastMetricsRecorder;)V
    .locals 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->SEARCH_FROM_SELECTION:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    sget-object v2, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->SEARCH_FROM_RECENT_SEARCH:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->SEARCH_FROM_AUTO_COMPLETE_TERM:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->SEARCH_BUTTON_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->immutableEnumSet(Ljava/lang/Enum;[Ljava/lang/Enum;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->searchExecutedActions:Ljava/util/Set;

    .line 46
    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->readingStreamsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    .line 47
    iput-object p2, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->fastMetricsRecorder:Lcom/amazon/kcp/util/fastmetrics/search/SearchFastMetricsRecorder;

    .line 48
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->contextID:Ljava/util/UUID;

    .line 49
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->searchID:Ljava/util/UUID;

    return-void
.end method

.method private debugLogMetadata(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 287
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " ->  "

    .line 289
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 291
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private recordActionEvent(Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;Ljava/lang/Integer;Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 3

    .line 169
    iget v0, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->actionsSinceSearch:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->actionsSinceSearch:I

    .line 171
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->shouldResetSearchID(Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->searchID:Ljava/util/UUID;

    const/4 v0, 0x0

    .line 173
    iput v0, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->actionsSinceSearch:I

    .line 176
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 177
    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->CONTEXT_ID:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->contextID:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->SEARCH_ID:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->searchID:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->ACTION_INDEX:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->actionsSinceSearch:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->TOTAL_RESULTS:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object p2, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->SEARCH_STATUS:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    invoke-virtual {p2}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_1

    .line 184
    sget-object p2, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->PROVIDER:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    invoke-virtual {p2}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p5, :cond_2

    .line 187
    sget-object p2, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->ROW_IN_PROVIDER:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    invoke-virtual {p2}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p6, :cond_3

    .line 190
    sget-object p2, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->CHARS_TYPED_BEFORE_AUTOCOMPLETE_TERM_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    invoke-virtual {p2}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p7, :cond_4

    .line 193
    sget-object p2, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->WERE_SUGGESTIONS_AVAILABLE_ON_SEARCH_EXECUTION:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    invoke-virtual {p2}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "recordActionEvent: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->debugLogMetadata(Ljava/lang/String;Ljava/util/Map;)V

    .line 197
    iget-object p2, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->readingStreamsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "InBookSearch"

    invoke-interface {p2, p3, p1, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private shouldResetSearchID(Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;)Z
    .locals 1

    .line 307
    sget-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->SEARCH_BUTTON_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->SEARCH_FROM_SELECTION:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->SEARCH_FROM_AUTO_COMPLETE_TERM:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->SEARCH_FROM_RECENT_SEARCH:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method endContext()V
    .locals 3

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 71
    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->CONTEXT_ID:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->contextID:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->readingStreamsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    const-string v2, "InBookSearch"

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->hideContext(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method recordDetailedMetadata(Lcom/amazon/kcp/search/enhancedsearch/Section;Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;)V
    .locals 3

    .line 243
    invoke-virtual {p1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->getAdapterSpecificMetricsMetadata()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->PROVIDER:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->getSearchAdapter()Lcom/amazon/kindle/krx/search/ISearchAdapter;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/search/ISearchAdapter;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->SEARCH_ID:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->searchID:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->ACTION_INDEX:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->actionsSinceSearch:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->SECTION_RESULTS:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->getResultCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object p1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->SECTION_STATUS:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "recordDetailedMetadata"

    .line 251
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->debugLogMetadata(Ljava/lang/String;Ljava/util/Map;)V

    .line 252
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->readingStreamsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    const-string p2, "InBookSearch"

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method recordMetricsForAction(Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;Ljava/lang/Integer;Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;Lcom/amazon/kindle/krx/search/ISearchAdapter;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 8

    if-eqz p4, :cond_0

    .line 104
    invoke-interface {p4}, Lcom/amazon/kindle/krx/search/ISearchAdapter;->getKey()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    move-object v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 105
    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->recordActionEvent(Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;Ljava/lang/Integer;Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 106
    iget-object p2, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->searchExecutedActions:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 107
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->fastMetricsRecorder:Lcom/amazon/kcp/util/fastmetrics/search/SearchFastMetricsRecorder;

    invoke-interface {p1}, Lcom/amazon/kcp/util/fastmetrics/search/SearchFastMetricsRecorder;->recordSearchExecuted()Lkotlin/Unit;

    :cond_1
    return-void
.end method

.method recordMetricsForRecentSearchAction(Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;Ljava/lang/Integer;)V
    .locals 2

    .line 264
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->shouldResetSearchID(Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->searchID:Ljava/util/UUID;

    const/4 v0, 0x0

    .line 266
    iput v0, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->actionsSinceSearch:I

    .line 269
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_1

    .line 271
    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->RECENT_SEARCH_TERM_COUNT:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recordActionEvent: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->debugLogMetadata(Ljava/lang/String;Ljava/util/Map;)V

    .line 275
    iget-object p2, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->readingStreamsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "InBookSearch"

    invoke-interface {p2, v1, p1, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method recordMetricsForResultClicked(Ljava/lang/Integer;Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;Lcom/amazon/kindle/krx/search/ISearchAdapter;Ljava/lang/Integer;)V
    .locals 8

    .line 129
    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->RESULT_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    if-eqz p3, :cond_0

    .line 132
    invoke-interface {p3}, Lcom/amazon/kindle/krx/search/ISearchAdapter;->getKey()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move-object v4, p3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .line 129
    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->recordActionEvent(Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;Ljava/lang/Integer;Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 136
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->fastMetricsRecorder:Lcom/amazon/kcp/util/fastmetrics/search/SearchFastMetricsRecorder;

    invoke-interface {p1}, Lcom/amazon/kcp/util/fastmetrics/search/SearchFastMetricsRecorder;->recordSearchResultClicked()Lkotlin/Unit;

    return-void
.end method

.method recordProviderStateForAction(Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;Ljava/lang/String;Ljava/lang/Integer;Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;)V
    .locals 2

    .line 214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 215
    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->ACTION_ID:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object p1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->PROVIDER:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object p1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->SEARCH_ID:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->searchID:Ljava/util/UUID;

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object p1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->ACTION_INDEX:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->toString()Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->actionsSinceSearch:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object p1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->SECTION_RESULTS:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object p1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->SECTION_STATUS:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "recordProviderStateForAction: "

    .line 222
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->debugLogMetadata(Ljava/lang/String;Ljava/util/Map;)V

    .line 223
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->readingStreamsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    const-string p2, "InBookSearch"

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method startNewContext()V
    .locals 3

    .line 57
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->contextID:Ljava/util/UUID;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 60
    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->CONTEXT_ID:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->contextID:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->readingStreamsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    const-string v2, "InBookSearch"

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;Ljava/util/Map;)V

    .line 62
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->CHROME:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_SEARCH:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {v0, v1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V

    return-void
.end method
