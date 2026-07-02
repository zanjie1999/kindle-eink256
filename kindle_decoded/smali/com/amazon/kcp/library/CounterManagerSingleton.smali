.class public Lcom/amazon/kcp/library/CounterManagerSingleton;
.super Ljava/lang/Object;
.source "CounterManagerSingleton.java"


# static fields
.field private static final instance:Lcom/amazon/kcp/library/CounterManagerSingleton;


# instance fields
.field private counters:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;",
            ">;"
        }
    .end annotation
.end field

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/amazon/kcp/library/CounterManagerSingleton;

    invoke-direct {v0}, Lcom/amazon/kcp/library/CounterManagerSingleton;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/CounterManagerSingleton;->instance:Lcom/amazon/kcp/library/CounterManagerSingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/CounterManagerSingleton;->counters:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/amazon/kcp/library/CounterManagerSingleton;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method

.method public static getInstance()Lcom/amazon/kcp/library/CounterManagerSingleton;
    .locals 1

    .line 50
    sget-object v0, Lcom/amazon/kcp/library/CounterManagerSingleton;->instance:Lcom/amazon/kcp/library/CounterManagerSingleton;

    return-object v0
.end method

.method private publishEvent(Lcom/amazon/kindle/krx/events/IEvent;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/amazon/kcp/library/CounterManagerSingleton;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    if-nez v0, :cond_0

    .line 141
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/library/CounterManagerSingleton;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/CounterManagerSingleton;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/CounterManagerSingleton;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method private registerCounter(Ljava/lang/String;Lcom/amazon/kcp/library/AbstractUserItemsCounter;Z)V
    .locals 1

    .line 63
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/CounterManagerSingleton;->hasCounter(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/amazon/kcp/library/CounterManagerSingleton;->counters:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-virtual {p2}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->registerHandler()V

    if-eqz p3, :cond_0

    .line 67
    new-instance p2, Lcom/amazon/kcp/library/CounterRegisteredEvent;

    invoke-direct {p2, p1}, Lcom/amazon/kcp/library/CounterRegisteredEvent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/amazon/kcp/library/CounterManagerSingleton;->publishEvent(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_0
    return-void
.end method

.method private registerLargeLibraryCollectionsCounter()V
    .locals 3

    .line 196
    const-class v0, Lcom/amazon/kcp/library/LargeLibraryCounterProvider;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/LargeLibraryCounterProvider;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 198
    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/LargeLibraryCounterProvider;->collectionsCounter(Lcom/amazon/kindle/callback/ICallback;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "COLLECTIONS"

    invoke-direct {p0, v2, v0, v1}, Lcom/amazon/kcp/library/CounterManagerSingleton;->registerCounter(Ljava/lang/String;Lcom/amazon/kcp/library/AbstractUserItemsCounter;Z)V

    return-void
.end method

.method private registerLargeLibraryCounters()V
    .locals 5

    .line 170
    const-class v0, Lcom/amazon/kcp/library/LargeLibraryCounterProvider;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/LargeLibraryCounterProvider;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 174
    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/LargeLibraryCounterProvider;->allItemsCounter(Lcom/amazon/kindle/callback/ICallback;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "ALL_ITEMS"

    .line 173
    invoke-direct {p0, v4, v2, v3}, Lcom/amazon/kcp/library/CounterManagerSingleton;->registerCounter(Ljava/lang/String;Lcom/amazon/kcp/library/AbstractUserItemsCounter;Z)V

    .line 177
    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/LargeLibraryCounterProvider;->onDeviceCounter(Lcom/amazon/kindle/callback/ICallback;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "ON_DEVICE_ITEMS"

    .line 176
    invoke-direct {p0, v4, v2, v3}, Lcom/amazon/kcp/library/CounterManagerSingleton;->registerCounter(Ljava/lang/String;Lcom/amazon/kcp/library/AbstractUserItemsCounter;Z)V

    .line 180
    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/LargeLibraryCounterProvider;->allBooksCounter(Lcom/amazon/kindle/callback/ICallback;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object v2

    const-string v4, "ALL_BOOKS"

    .line 179
    invoke-direct {p0, v4, v2, v3}, Lcom/amazon/kcp/library/CounterManagerSingleton;->registerCounter(Ljava/lang/String;Lcom/amazon/kcp/library/AbstractUserItemsCounter;Z)V

    .line 183
    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/LargeLibraryCounterProvider;->onDeviceBooksCounter(Lcom/amazon/kindle/callback/ICallback;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object v2

    const-string v4, "ON_DEVICE_BOOKS"

    .line 182
    invoke-direct {p0, v4, v2, v3}, Lcom/amazon/kcp/library/CounterManagerSingleton;->registerCounter(Ljava/lang/String;Lcom/amazon/kcp/library/AbstractUserItemsCounter;Z)V

    .line 186
    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/LargeLibraryCounterProvider;->newsstandCounter(Lcom/amazon/kindle/callback/ICallback;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object v2

    const-string v4, "ALL_NEWSSTAND_ITEMS"

    .line 185
    invoke-direct {p0, v4, v2, v3}, Lcom/amazon/kcp/library/CounterManagerSingleton;->registerCounter(Ljava/lang/String;Lcom/amazon/kcp/library/AbstractUserItemsCounter;Z)V

    .line 189
    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/LargeLibraryCounterProvider;->onDeviceNewsstandCounter(Lcom/amazon/kindle/callback/ICallback;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object v2

    const-string v4, "ON_DEVICE_NEWSSTAND_ITEMS"

    .line 188
    invoke-direct {p0, v4, v2, v3}, Lcom/amazon/kcp/library/CounterManagerSingleton;->registerCounter(Ljava/lang/String;Lcom/amazon/kcp/library/AbstractUserItemsCounter;Z)V

    .line 192
    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/LargeLibraryCounterProvider;->backIssuesCounter(Lcom/amazon/kindle/callback/ICallback;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object v0

    const-string v1, "BACK_ISSUES_ITEMS"

    .line 191
    invoke-direct {p0, v1, v0, v3}, Lcom/amazon/kcp/library/CounterManagerSingleton;->registerCounter(Ljava/lang/String;Lcom/amazon/kcp/library/AbstractUserItemsCounter;Z)V

    return-void
.end method


# virtual methods
.method public getCounter(Ljava/lang/String;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/kcp/library/CounterManagerSingleton;->counters:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    return-object p1
.end method

.method public hasCounter(Ljava/lang/String;)Z
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/amazon/kcp/library/CounterManagerSingleton;->counters:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public initializeCollectionsCounter()V
    .locals 3

    .line 132
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/amazon/kcp/library/CounterManagerSingleton;->registerLargeLibraryCollectionsCounter()V

    goto :goto_0

    .line 135
    :cond_0
    new-instance v0, Lcom/amazon/kcp/library/CollectionsCounter;

    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/CollectionsCounter;-><init>(Lcom/amazon/kindle/collections/ICollectionsManager;Lcom/amazon/kindle/callback/ICallback;)V

    const/4 v1, 0x0

    const-string v2, "COLLECTIONS"

    invoke-direct {p0, v2, v0, v1}, Lcom/amazon/kcp/library/CounterManagerSingleton;->registerCounter(Ljava/lang/String;Lcom/amazon/kcp/library/AbstractUserItemsCounter;Z)V

    :goto_0
    return-void
.end method

.method public initializeCounters()V
    .locals 5

    .line 99
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/amazon/kcp/library/CounterManagerSingleton;->registerLargeLibraryCounters()V

    .line 101
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    goto :goto_0

    .line 103
    :cond_0
    new-instance v0, Lcom/amazon/kcp/library/LibraryCounter;

    sget-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->ALL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kcp/library/LibraryCounter;-><init>(Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kindle/callback/ICallback;)V

    const/4 v1, 0x1

    const-string v2, "ALL_ITEMS"

    invoke-direct {p0, v2, v0, v1}, Lcom/amazon/kcp/library/CounterManagerSingleton;->registerCounter(Ljava/lang/String;Lcom/amazon/kcp/library/AbstractUserItemsCounter;Z)V

    .line 107
    new-instance v0, Lcom/amazon/kcp/library/LibraryCounter;

    sget-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->ALL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryGroupType;->DEVICE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kcp/library/LibraryCounter;-><init>(Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kindle/callback/ICallback;)V

    const/4 v1, 0x0

    const-string v2, "ON_DEVICE_ITEMS"

    invoke-direct {p0, v2, v0, v1}, Lcom/amazon/kcp/library/CounterManagerSingleton;->registerCounter(Ljava/lang/String;Lcom/amazon/kcp/library/AbstractUserItemsCounter;Z)V

    .line 111
    new-instance v0, Lcom/amazon/kcp/library/LibraryCounter;

    sget-object v2, Lcom/amazon/kcp/library/LibraryContentFilter;->BOOKS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    sget-object v4, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    invoke-direct {v0, v2, v4, v3}, Lcom/amazon/kcp/library/LibraryCounter;-><init>(Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kindle/callback/ICallback;)V

    const-string v2, "ALL_BOOKS"

    invoke-direct {p0, v2, v0, v1}, Lcom/amazon/kcp/library/CounterManagerSingleton;->registerCounter(Ljava/lang/String;Lcom/amazon/kcp/library/AbstractUserItemsCounter;Z)V

    .line 115
    new-instance v0, Lcom/amazon/kcp/library/LibraryCounter;

    sget-object v2, Lcom/amazon/kcp/library/LibraryContentFilter;->BOOKS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    sget-object v4, Lcom/amazon/kindle/krx/library/LibraryGroupType;->DEVICE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    invoke-direct {v0, v2, v4, v3}, Lcom/amazon/kcp/library/LibraryCounter;-><init>(Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kindle/callback/ICallback;)V

    const-string v2, "ON_DEVICE_BOOKS"

    invoke-direct {p0, v2, v0, v1}, Lcom/amazon/kcp/library/CounterManagerSingleton;->registerCounter(Ljava/lang/String;Lcom/amazon/kcp/library/AbstractUserItemsCounter;Z)V

    .line 119
    new-instance v0, Lcom/amazon/kcp/library/LibraryCounter;

    sget-object v2, Lcom/amazon/kcp/library/LibraryContentFilter;->NEWSSTAND_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    sget-object v4, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    invoke-direct {v0, v2, v4, v3}, Lcom/amazon/kcp/library/LibraryCounter;-><init>(Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kindle/callback/ICallback;)V

    const-string v2, "ALL_NEWSSTAND_ITEMS"

    invoke-direct {p0, v2, v0, v1}, Lcom/amazon/kcp/library/CounterManagerSingleton;->registerCounter(Ljava/lang/String;Lcom/amazon/kcp/library/AbstractUserItemsCounter;Z)V

    .line 123
    new-instance v0, Lcom/amazon/kcp/library/LibraryCounter;

    sget-object v2, Lcom/amazon/kcp/library/LibraryContentFilter;->NEWSSTAND_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    sget-object v4, Lcom/amazon/kindle/krx/library/LibraryGroupType;->DEVICE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    invoke-direct {v0, v2, v4, v3}, Lcom/amazon/kcp/library/LibraryCounter;-><init>(Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kindle/callback/ICallback;)V

    const-string v2, "ON_DEVICE_NEWSSTAND_ITEMS"

    invoke-direct {p0, v2, v0, v1}, Lcom/amazon/kcp/library/CounterManagerSingleton;->registerCounter(Ljava/lang/String;Lcom/amazon/kcp/library/AbstractUserItemsCounter;Z)V

    .line 127
    new-instance v0, Lcom/amazon/kcp/library/BackIssuesLibraryCounter;

    invoke-direct {v0, v3}, Lcom/amazon/kcp/library/BackIssuesLibraryCounter;-><init>(Lcom/amazon/kindle/callback/ICallback;)V

    const-string v2, "BACK_ISSUES_ITEMS"

    invoke-direct {p0, v2, v0, v1}, Lcom/amazon/kcp/library/CounterManagerSingleton;->registerCounter(Ljava/lang/String;Lcom/amazon/kcp/library/AbstractUserItemsCounter;Z)V

    :goto_0
    return-void
.end method

.method public onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 150
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    sget-object v0, Lcom/amazon/kcp/library/CounterManagerSingleton$1;->$SwitchMap$com$amazon$kindle$krx$events$KRXAuthenticationEvent$EventType:[I

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_1

    .line 155
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kcp/library/CounterManagerSingleton;->registerLargeLibraryCounters()V

    .line 156
    invoke-direct {p0}, Lcom/amazon/kcp/library/CounterManagerSingleton;->registerLargeLibraryCollectionsCounter()V

    .line 159
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/library/CounterManagerSingleton;->counters:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    .line 160
    invoke-virtual {v0}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->unregisterHandler()V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
