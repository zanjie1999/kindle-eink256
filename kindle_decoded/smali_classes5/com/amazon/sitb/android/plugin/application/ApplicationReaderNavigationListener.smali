.class public Lcom/amazon/sitb/android/plugin/application/ApplicationReaderNavigationListener;
.super Ljava/lang/Object;
.source "ApplicationReaderNavigationListener.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/plugin/application/ApplicationReaderNavigationListener;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/plugin/application/ApplicationReaderNavigationListener;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/events/IMessageQueue;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationReaderNavigationListener;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method


# virtual methods
.method public onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 4

    .line 42
    sget-object v0, Lcom/amazon/sitb/android/plugin/application/ApplicationReaderNavigationListener;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/amazon/sitb/android/utils/BookUtils;->toString(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Content closed (%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->info(Ljava/lang/String;)V

    .line 43
    invoke-static {p1}, Lcom/amazon/sitb/android/utils/BookUtils;->isRelevantContentType(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationReaderNavigationListener;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/sitb/android/event/BookClosedEvent;

    invoke-direct {v1, p1}, Lcom/amazon/sitb/android/event/BookClosedEvent;-><init>(Lcom/amazon/kindle/krx/content/IBook;)V

    invoke-static {v0, v1}, Lcom/amazon/sitb/android/utils/EventUtils;->publishExternalEvent(Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_0
    return-void
.end method

.method public onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 4

    .line 32
    sget-object v0, Lcom/amazon/sitb/android/plugin/application/ApplicationReaderNavigationListener;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/amazon/sitb/android/utils/BookUtils;->toString(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Content opened (%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->info(Ljava/lang/String;)V

    .line 33
    invoke-static {p1}, Lcom/amazon/sitb/android/utils/BookUtils;->isRelevantContentType(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationReaderNavigationListener;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/sitb/android/event/BookOpenedEvent;

    invoke-direct {v1, p1}, Lcom/amazon/sitb/android/event/BookOpenedEvent;-><init>(Lcom/amazon/kindle/krx/content/IBook;)V

    invoke-static {v0, v1}, Lcom/amazon/sitb/android/utils/EventUtils;->publishExternalEvent(Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_0
    return-void
.end method

.method public onAfterNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    return-void
.end method

.method public onBeforeNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    return-void
.end method

.method public onNavigationFailed(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    return-void
.end method

.method public onPageFlowChanged(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    return-void
.end method
