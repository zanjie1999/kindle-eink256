.class public Lcom/amazon/kcp/library/AudibleLibraryCounterVisibilityStrategy;
.super Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;
.source "AudibleLibraryCounterVisibilityStrategy.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private hasSeenAudibleContent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/kcp/library/AudibleLibraryCounterVisibilityStrategy;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/AudibleLibraryCounterVisibilityStrategy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/amazon/kcp/library/AudibleLibraryCounterVisibilityStrategy;->hasSeenAudibleContent:Z

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/library/LibraryContentFilter;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;-><init>(Lcom/amazon/kcp/library/LibraryContentFilter;)V

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/amazon/kcp/library/AudibleLibraryCounterVisibilityStrategy;->hasSeenAudibleContent:Z

    .line 18
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 3

    .line 29
    iget-boolean v0, p0, Lcom/amazon/kcp/library/AudibleLibraryCounterVisibilityStrategy;->hasSeenAudibleContent:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;->libraryCounter:Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->getUserItemsCount()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;->libraryCounter:Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->resetCountFromDB()V

    .line 33
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;->libraryCounter:Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->getUserItemsCount()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/amazon/kcp/library/AudibleLibraryCounterVisibilityStrategy;->hasSeenAudibleContent:Z

    return v1
.end method

.method public onAudioMetadataProviderRegisterEvent(Lcom/amazon/kindle/krx/ui/AudioBookMetadataProviderRegisterEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/amazon/kcp/library/AudibleLibraryCounterVisibilityStrategy;->isVisible()Z

    return-void
.end method

.method public onLogout(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 52
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Lcom/amazon/kcp/library/AudibleLibraryCounterVisibilityStrategy;->hasSeenAudibleContent:Z

    :cond_0
    return-void
.end method
