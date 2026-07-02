.class public Lcom/amazon/kindle/krx/reader/PositionChangedEventHandler;
.super Lcom/amazon/android/docviewer/KindleDocViewerEvents;
.source "PositionChangedEventHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private readerManager:Lcom/amazon/kindle/krx/reader/ReaderManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/amazon/kindle/krx/reader/PositionChangedEventHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/reader/PositionChangedEventHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/reader/ReaderManager;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleDocViewerEvents;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/amazon/kindle/krx/reader/PositionChangedEventHandler;->readerManager:Lcom/amazon/kindle/krx/reader/ReaderManager;

    if-eqz p1, :cond_0

    .line 46
    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/PositionChangedEventHandler;->readerManager:Lcom/amazon/kindle/krx/reader/ReaderManager;

    .line 47
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ReaderManager must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private convertNavEventToNavigationType(Lcom/amazon/kindle/event/KindleDocNavigationEvent;)Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;
    .locals 3

    .line 126
    sget-object v0, Lcom/amazon/kindle/krx/reader/PositionChangedEventHandler$1;->$SwitchMap$com$amazon$kindle$event$KindleDocNavigationEvent$NavigationType:[I

    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getNavigationType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 140
    sget-object p1, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;->PAGE_JUMP:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

    return-object p1

    .line 130
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/reader/PositionChangedEventHandler$1;->$SwitchMap$com$amazon$kindle$event$KindleDocNavigationEvent$NavigationDirection:[I

    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getNavigationDirection()Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_1

    .line 136
    sget-object p1, Lcom/amazon/kindle/krx/reader/PositionChangedEventHandler;->TAG:Ljava/lang/String;

    const-string v0, "UNKNOWN navigation direction, using NEXT"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    sget-object p1, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;->PAGE_NEXT:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

    return-object p1

    .line 134
    :cond_1
    sget-object p1, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;->PAGE_NEXT:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

    return-object p1

    .line 132
    :cond_2
    sget-object p1, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;->PAGE_PREVIOUS:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

    return-object p1

    .line 128
    :cond_3
    sget-object p1, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;->PAGE_JUMP:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

    return-object p1
.end method

.method private convertOffsetToNavigationType(I)Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 115
    sget-object p1, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;->PAGE_JUMP:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

    return-object p1

    .line 112
    :cond_0
    sget-object p1, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;->PAGE_NEXT:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

    return-object p1

    .line 110
    :cond_1
    sget-object p1, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;->PAGE_PREVIOUS:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

    return-object p1
.end method


# virtual methods
.method public onDocViewerSettingsChangeEvent(Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/PositionChangedEventHandler;->readerManager:Lcom/amazon/kindle/krx/reader/ReaderManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/reader/ReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    .line 148
    invoke-virtual {p1}, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;->getChangeType()Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;->POST_CHANGE:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;

    if-ne v1, v2, :cond_1

    .line 149
    invoke-virtual {p1}, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 150
    iget-object p1, p0, Lcom/amazon/kindle/krx/reader/PositionChangedEventHandler;->readerManager:Lcom/amazon/kindle/krx/reader/ReaderManager;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/reader/ReaderManager;->getReaderNavigationListeners()Ljava/util/Collection;

    move-result-object p1

    .line 152
    monitor-enter p1

    .line 153
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/reader/IReaderNavigationListenerV2;

    .line 158
    invoke-interface {v2, v0}, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;->onPageFlowChanged(Lcom/amazon/kindle/krx/content/IBook;)V

    goto :goto_0

    .line 160
    :cond_0
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method public onKindleDocNavigationEvent(Lcom/amazon/kindle/event/KindleDocNavigationEvent;)V
    .locals 5
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 52
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getNavigationType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;->BACK:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    if-ne v0, v1, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/PositionChangedEventHandler;->readerManager:Lcom/amazon/kindle/krx/reader/ReaderManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/reader/ReaderManager;->getReaderNavigationListeners()Ljava/util/Collection;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/amazon/kindle/krx/reader/PositionChangedEventHandler;->readerManager:Lcom/amazon/kindle/krx/reader/ReaderManager;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/reader/ReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    .line 59
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/reader/PositionChangedEventHandler;->convertNavEventToNavigationType(Lcom/amazon/kindle/event/KindleDocNavigationEvent;)Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

    move-result-object v2

    .line 61
    monitor-enter v0

    if-eqz v1, :cond_5

    .line 63
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getEventType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->PRE_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    if-ne v3, v4, :cond_1

    .line 64
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/reader/IReaderNavigationListenerV2;

    .line 65
    invoke-interface {v3, v1, v2}, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;->onBeforeNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getEventType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->POST_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    if-ne v3, v4, :cond_4

    .line 68
    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object p1

    .line 69
    sget-object v3, Lcom/amazon/kindle/krx/content/BookFormat;->MOBI7:Lcom/amazon/kindle/krx/content/BookFormat;

    if-eq p1, v3, :cond_2

    sget-object v3, Lcom/amazon/kindle/krx/content/BookFormat;->MOBI8:Lcom/amazon/kindle/krx/content/BookFormat;

    if-ne p1, v3, :cond_3

    .line 70
    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/reader/IReaderNavigationListenerV2;

    .line 71
    invoke-interface {v3, v1, v2}, Lcom/amazon/kindle/krx/reader/IReaderNavigationListenerV2;->onPageChange(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V

    goto :goto_1

    .line 75
    :cond_3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/reader/IReaderNavigationListenerV2;

    .line 76
    invoke-interface {v3, v1, v2}, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;->onAfterNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V

    goto :goto_2

    .line 78
    :cond_4
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getEventType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    move-result-object p1

    sget-object v3, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->PAGE_CHANGE:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    if-ne p1, v3, :cond_5

    .line 79
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/reader/IReaderNavigationListenerV2;

    .line 80
    invoke-interface {v3, v1, v2}, Lcom/amazon/kindle/krx/reader/IReaderNavigationListenerV2;->onPageChange(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V

    goto :goto_3

    .line 84
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onNavigationOrSettingsChangeFailed(I)V
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/PositionChangedEventHandler;->readerManager:Lcom/amazon/kindle/krx/reader/ReaderManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/reader/ReaderManager;->getReaderNavigationListeners()Ljava/util/Collection;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/amazon/kindle/krx/reader/PositionChangedEventHandler;->readerManager:Lcom/amazon/kindle/krx/reader/ReaderManager;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/reader/ReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    .line 92
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/reader/PositionChangedEventHandler;->convertOffsetToNavigationType(I)Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

    move-result-object p1

    .line 94
    monitor-enter v0

    .line 95
    :try_start_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/reader/IReaderNavigationListenerV2;

    .line 96
    invoke-interface {v3, v1, p1}, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;->onNavigationFailed(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V

    goto :goto_0

    .line 98
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
