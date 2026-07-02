.class public Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryEventListener;
.super Lcom/amazon/kindle/krx/library/BaseLibraryEventListener;
.source "ApplicationLibraryEventListener.java"


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private final bookDownloadStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/content/IBook$DownloadState;",
            ">;"
        }
    .end annotation
.end field

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryEventListener;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryEventListener;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/events/IMessageQueue;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/amazon/kindle/krx/library/BaseLibraryEventListener;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryEventListener;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 31
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryEventListener;->bookDownloadStateMap:Ljava/util/Map;

    return-void
.end method

.method private bookUpdated(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 3

    .line 58
    invoke-static {p1}, Lcom/amazon/sitb/android/utils/BookUtils;->isRelevantContentType(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryEventListener;->bookDownloadStateMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    .line 61
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/sitb/android/utils/BookUtils;->isDifferentState(Lcom/amazon/kindle/krx/content/IBook$DownloadState;Lcom/amazon/kindle/krx/content/IBook$DownloadState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryEventListener;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v2, Lcom/amazon/sitb/android/event/BookDownloadStateChangedEvent;

    invoke-direct {v2, p1, v0}, Lcom/amazon/sitb/android/event/BookDownloadStateChangedEvent;-><init>(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook$DownloadState;)V

    invoke-static {v1, v2}, Lcom/amazon/sitb/android/utils/EventUtils;->publishExternalEvent(Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onContentAdd(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 4

    .line 37
    sget-object v0, Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryEventListener;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/amazon/sitb/android/utils/BookUtils;->toString(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Content added (%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryEventListener;->bookUpdated(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method

.method public onContentDelete(Ljava/lang/String;Z)V
    .locals 4

    .line 51
    sget-object v0, Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryEventListener;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Content deleted (book ID: %s, archived: %b)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryEventListener;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/sitb/android/event/BookDeletedEvent;

    invoke-direct {v1, p1, p2}, Lcom/amazon/sitb/android/event/BookDeletedEvent;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0, v1}, Lcom/amazon/sitb/android/utils/EventUtils;->publishExternalEvent(Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 53
    iget-object p2, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryEventListener;->bookDownloadStateMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onContentUpdate(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 4

    .line 44
    sget-object v0, Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryEventListener;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/amazon/sitb/android/utils/BookUtils;->toString(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Content updated (%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryEventListener;->bookUpdated(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method
