.class public Lcom/amazon/bookwizard/BookWizardProvider;
.super Ljava/lang/Object;
.source "BookWizardProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/ISortableProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
        "Lcom/amazon/kindle/krx/startup/IStartupListener;",
        "Lcom/amazon/kindle/krx/startup/StartupType;",
        ">;"
    }
.end annotation


# static fields
.field private static final BOOKWIZARD_PRIORITY:I = 0x6e

.field private static final TAG:Ljava/lang/String; = "com.amazon.bookwizard.BookWizardProvider"


# instance fields
.field private final listener:Lcom/amazon/bookwizard/BookWizardBaseListener;

.field private final nonEmptyEventListener:Lcom/amazon/bookwizard/BookWizardBaseListener;

.field private final notificationsListener:Lcom/amazon/bookwizard/BookWizardBaseListener;

.field private final readingListProvider:Lcom/amazon/bookwizard/ReadingListActionProvider;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/amazon/bookwizard/BookWizardProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 40
    new-instance v0, Lcom/amazon/bookwizard/ReadingListActionProvider;

    invoke-direct {v0, p1}, Lcom/amazon/bookwizard/ReadingListActionProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    iput-object v0, p0, Lcom/amazon/bookwizard/BookWizardProvider;->readingListProvider:Lcom/amazon/bookwizard/ReadingListActionProvider;

    .line 41
    new-instance v0, Lcom/amazon/bookwizard/BookWizardListener;

    invoke-direct {v0, p1}, Lcom/amazon/bookwizard/BookWizardListener;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    iput-object v0, p0, Lcom/amazon/bookwizard/BookWizardProvider;->listener:Lcom/amazon/bookwizard/BookWizardBaseListener;

    .line 42
    new-instance v0, Lcom/amazon/bookwizard/BookWizardNonEmptyEventListener;

    invoke-direct {v0, p1}, Lcom/amazon/bookwizard/BookWizardNonEmptyEventListener;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    iput-object v0, p0, Lcom/amazon/bookwizard/BookWizardProvider;->nonEmptyEventListener:Lcom/amazon/bookwizard/BookWizardBaseListener;

    .line 43
    new-instance v0, Lcom/amazon/bookwizard/BookWizardNotificationsListener;

    invoke-direct {v0, p1}, Lcom/amazon/bookwizard/BookWizardNotificationsListener;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    iput-object v0, p0, Lcom/amazon/bookwizard/BookWizardProvider;->notificationsListener:Lcom/amazon/bookwizard/BookWizardBaseListener;

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/startup/StartupType;)Lcom/amazon/kindle/krx/startup/IStartupListener;
    .locals 3

    .line 77
    sget-object v0, Lcom/amazon/bookwizard/BookWizardProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStartupType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/amazon/kindle/krx/startup/StartupType;->FTUE_EMPTY_LIBRARY:Lcom/amazon/kindle/krx/startup/StartupType;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object p1, p0, Lcom/amazon/bookwizard/BookWizardProvider;->listener:Lcom/amazon/bookwizard/BookWizardBaseListener;

    return-object p1

    .line 82
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/startup/StartupType;->FTUE_NON_EMPTY_LIBRARY:Lcom/amazon/kindle/krx/startup/StartupType;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object p1, p0, Lcom/amazon/bookwizard/BookWizardProvider;->nonEmptyEventListener:Lcom/amazon/bookwizard/BookWizardBaseListener;

    return-object p1

    .line 86
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/startup/StartupType;->BW_NOTIFICATION:Lcom/amazon/kindle/krx/startup/StartupType;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 87
    iget-object p1, p0, Lcom/amazon/bookwizard/BookWizardProvider;->notificationsListener:Lcom/amazon/bookwizard/BookWizardBaseListener;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Lcom/amazon/kindle/krx/startup/StartupType;

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/BookWizardProvider;->get(Lcom/amazon/kindle/krx/startup/StartupType;)Lcom/amazon/kindle/krx/startup/IStartupListener;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/startup/StartupType;)I
    .locals 1

    .line 66
    sget-object v0, Lcom/amazon/kindle/krx/startup/StartupType;->FTUE_EMPTY_LIBRARY:Lcom/amazon/kindle/krx/startup/StartupType;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/krx/startup/StartupType;->FTUE_NON_EMPTY_LIBRARY:Lcom/amazon/kindle/krx/startup/StartupType;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/16 p1, 0x6e

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 21
    check-cast p1, Lcom/amazon/kindle/krx/startup/StartupType;

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/BookWizardProvider;->getPriority(Lcom/amazon/kindle/krx/startup/StartupType;)I

    move-result p1

    return p1
.end method

.method public register()V
    .locals 2

    .line 50
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEInkBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardProvider;->readingListProvider:Lcom/amazon/bookwizard/ReadingListActionProvider;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->registerReadingListRecommendationProvider(Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider;)V

    goto :goto_0

    .line 53
    :cond_0
    sget-object v0, Lcom/amazon/bookwizard/BookWizardProvider;->TAG:Ljava/lang/String;

    const-string v1, "Registering StartupProvider"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerStartupProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    .line 57
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardProvider;->listener:Lcom/amazon/bookwizard/BookWizardBaseListener;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
