.class public abstract Lcom/amazon/kcp/store/AbstractWebStoreController;
.super Ljava/lang/Object;
.source "AbstractWebStoreController.java"

# interfaces
.implements Lcom/amazon/kcp/store/IWebStoreController;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final appController:Lcom/amazon/kcp/application/IKindleApplicationController;

.field protected messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field protected requiresStoreCredentials:Z

.field private volatile shouldOpenExternalUrlsInternally:Z

.field private storeCredentialStatus:Lcom/amazon/kcp/store/IWebStoreController$StoreCredentialStatus;

.field private updatingCredentials:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/amazon/kcp/store/AbstractWebStoreController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/store/AbstractWebStoreController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/amazon/kcp/store/IWebStoreController$StoreCredentialStatus;->UNKNOWN:Lcom/amazon/kcp/store/IWebStoreController$StoreCredentialStatus;

    iput-object v0, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->storeCredentialStatus:Lcom/amazon/kcp/store/IWebStoreController$StoreCredentialStatus;

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->requiresStoreCredentials:Z

    .line 53
    iput-object p1, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    .line 54
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->updatingCredentials:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-class v0, Lcom/amazon/kcp/store/AbstractWebStoreController;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 57
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/store/AbstractWebStoreController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->updatingCredentials:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/amazon/kcp/store/AbstractWebStoreController;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getStoreCredentialStatus()Lcom/amazon/kcp/store/IWebStoreController$StoreCredentialStatus;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->storeCredentialStatus:Lcom/amazon/kcp/store/IWebStoreController$StoreCredentialStatus;

    return-object v0
.end method

.method public getStoreUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onKRXAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 62
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 63
    sget-object p1, Lcom/amazon/kcp/store/IWebStoreController$StoreCredentialStatus;->UNKNOWN:Lcom/amazon/kcp/store/IWebStoreController$StoreCredentialStatus;

    iput-object p1, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->storeCredentialStatus:Lcom/amazon/kcp/store/IWebStoreController$StoreCredentialStatus;

    :cond_0
    return-void
.end method

.method public populateStoreCredentials(Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;)V
    .locals 0

    .line 122
    sget-object p1, Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;->UPDATED:Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/store/AbstractWebStoreController;->publishCredentialEvent(Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;)V

    return-void
.end method

.method protected publishCredentialEvent(Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;)V
    .locals 2

    .line 72
    new-instance v0, Lcom/amazon/kcp/store/WebStoreCredentialEvent;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/store/WebStoreCredentialEvent;-><init>(Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;)V

    .line 73
    iget-object v1, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 75
    sget-object v0, Lcom/amazon/kcp/store/AbstractWebStoreController$3;->$SwitchMap$com$amazon$kcp$store$WebStoreCredentialEvent$EventType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    sget-object p1, Lcom/amazon/kcp/store/IWebStoreController$StoreCredentialStatus;->FAILED:Lcom/amazon/kcp/store/IWebStoreController$StoreCredentialStatus;

    iput-object p1, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->storeCredentialStatus:Lcom/amazon/kcp/store/IWebStoreController$StoreCredentialStatus;

    goto :goto_0

    .line 77
    :cond_1
    sget-object p1, Lcom/amazon/kcp/store/IWebStoreController$StoreCredentialStatus;->UPDATED:Lcom/amazon/kcp/store/IWebStoreController$StoreCredentialStatus;

    iput-object p1, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->storeCredentialStatus:Lcom/amazon/kcp/store/IWebStoreController$StoreCredentialStatus;

    :goto_0
    return-void
.end method

.method public setOpenExternalUrlsInternally(Z)V
    .locals 0

    .line 152
    iput-boolean p1, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->shouldOpenExternalUrlsInternally:Z

    return-void
.end method

.method public shouldOpenExternalUrlsInternally()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->shouldOpenExternalUrlsInternally:Z

    return v0
.end method

.method public shouldOverrideUrlLoading(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public showDetailPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    sget-object v0, Lcom/amazon/kindle/store/StorefrontContext1P;->NEWSSTAND:Lcom/amazon/kindle/store/StorefrontContext1P;

    iget-object v0, v0, Lcom/amazon/kindle/store/StorefrontContext1P;->storefrontName:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Lcom/amazon/kindle/krx/content/ContentType;->MAGAZINE:Lcom/amazon/kindle/krx/content/ContentType;

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    .line 171
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p3}, Lcom/amazon/kindle/utils/StoreOpeners;->createBookDetailsOpener(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 172
    invoke-interface {p1, p2}, Lcom/amazon/kindle/store/StoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 173
    invoke-interface {p1}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    return-void
.end method

.method public showStorefront(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/store/StoreType;->BOOKSTORE:Lcom/amazon/kindle/store/StoreType;

    invoke-static {v0, v1}, Lcom/amazon/kindle/utils/StoreOpeners;->createStorefrontOpener(Landroid/content/Context;Lcom/amazon/kindle/store/StoreType;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object v0

    .line 160
    invoke-interface {v0, p1}, Lcom/amazon/kindle/store/StoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 161
    invoke-interface {p1}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    return-void
.end method

.method public updateStoreCookies()V
    .locals 3

    .line 86
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-boolean v0, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->requiresStoreCredentials:Z

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->updatingCredentials:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/amazon/kcp/store/AbstractWebStoreController$1;

    invoke-direct {v0, p0, p0}, Lcom/amazon/kcp/store/AbstractWebStoreController$1;-><init>(Lcom/amazon/kcp/store/AbstractWebStoreController;Lcom/amazon/kcp/store/IWebStoreController;)V

    .line 103
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/store/AbstractWebStoreController$2;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kcp/store/AbstractWebStoreController$2;-><init>(Lcom/amazon/kcp/store/AbstractWebStoreController;Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method
