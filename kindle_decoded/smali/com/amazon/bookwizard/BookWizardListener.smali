.class public Lcom/amazon/bookwizard/BookWizardListener;
.super Lcom/amazon/bookwizard/BookWizardBaseListener;
.source "BookWizardListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.bookwizard.BookWizardListener"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/amazon/bookwizard/BookWizardBaseListener;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-void
.end method


# virtual methods
.method public onLibraryEvent(Lcom/amazon/kindle/krx/events/LibraryEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 46
    sget-object v0, Lcom/amazon/bookwizard/BookWizardListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received LibraryEvent, visibleItemCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/LibraryEvent;->getVisibleItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " view = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/LibraryEvent;->getView()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " groupType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/LibraryEvent;->getGroupType()Lcom/amazon/kindle/krx/library/LibraryGroupType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/LibraryEvent;->getType()Lcom/amazon/kindle/krx/events/LibraryEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/events/LibraryEvent$EventType;->LIBRARY_VIEW_SHOWN:Lcom/amazon/kindle/krx/events/LibraryEvent$EventType;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/LibraryEvent;->getGroupType()Lcom/amazon/kindle/krx/library/LibraryGroupType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    if-ne v0, v1, :cond_2

    .line 48
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/LibraryEvent;->getView()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryView;->BOOKS:Lcom/amazon/kindle/krx/library/LibraryView;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/LibraryEvent;->getView()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryView;->HOME:Lcom/amazon/kindle/krx/library/LibraryView;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/LibraryEvent;->getView()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryView;->ALL_ITEMS:Lcom/amazon/kindle/krx/library/LibraryView;

    if-ne v0, v1, :cond_2

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/LibraryEvent;->getVisibleItemCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 51
    sget-object p1, Lcom/amazon/bookwizard/BookWizardListener;->TAG:Ljava/lang/String;

    const-string v0, "Trying to launch bookwizard since library is empty."

    invoke-static {p1, v0}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getTaskExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/amazon/bookwizard/BookWizardListener$1;

    invoke-direct {v0, p0}, Lcom/amazon/bookwizard/BookWizardListener$1;-><init>(Lcom/amazon/bookwizard/BookWizardListener;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 58
    :cond_1
    sget-object p1, Lcom/amazon/bookwizard/BookWizardListener;->TAG:Ljava/lang/String;

    const-string v0, "Trying to launch bookwizard if library contains only samples."

    invoke-static {p1, v0}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getTaskExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/amazon/bookwizard/BookWizardListener$2;

    invoke-direct {v0, p0}, Lcom/amazon/bookwizard/BookWizardListener$2;-><init>(Lcom/amazon/bookwizard/BookWizardListener;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_2
    :goto_0
    return-void
.end method

.method public onStartupEvent()Z
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Lcom/amazon/bookwizard/BookWizardBaseListener;->tryToLaunchBookWizard(Z)Z

    move-result v0

    return v0
.end method
