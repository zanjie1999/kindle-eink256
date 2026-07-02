.class public final Lcom/amazon/kcp/store/StoreFragmentSupervisor;
.super Ljava/lang/Object;
.source "StoreFragmentSupervisor.java"


# static fields
.field private static final instance:Lcom/amazon/kcp/store/StoreFragmentSupervisor;


# instance fields
.field private restorable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/amazon/kcp/store/StoreFragmentSupervisor;

    invoke-direct {v0}, Lcom/amazon/kcp/store/StoreFragmentSupervisor;-><init>()V

    sput-object v0, Lcom/amazon/kcp/store/StoreFragmentSupervisor;->instance:Lcom/amazon/kcp/store/StoreFragmentSupervisor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/amazon/kcp/store/StoreFragmentSupervisor;->restorable:Z

    return-void
.end method

.method public static getInstance()Lcom/amazon/kcp/store/StoreFragmentSupervisor;
    .locals 1

    .line 25
    sget-object v0, Lcom/amazon/kcp/store/StoreFragmentSupervisor;->instance:Lcom/amazon/kcp/store/StoreFragmentSupervisor;

    return-object v0
.end method


# virtual methods
.method public isRestorable()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/amazon/kcp/store/StoreFragmentSupervisor;->restorable:Z

    return v0
.end method

.method public markRestorable()V
    .locals 1

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/amazon/kcp/store/StoreFragmentSupervisor;->restorable:Z

    .line 30
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onWebStoreCredentialsEvent(Lcom/amazon/kcp/store/WebStoreCredentialEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 50
    invoke-static {}, Lcom/amazon/kindle/FTUELoadingActivity;->forceClose()V

    return-void
.end method

.method public resetRestorable(Lcom/amazon/kcp/store/StoreFragment;)V
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/amazon/kcp/store/StoreFragmentSupervisor;->restorable:Z

    if-nez v0, :cond_0

    return-void

    .line 37
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p1, Lcom/amazon/kcp/store/StoreFragment;->authenticated:Z

    .line 39
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getAuthorizedAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/amazon/kcp/store/StoreFragment;->previousAccount:Ljava/lang/String;

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, v0, v0}, Lcom/amazon/kcp/store/StoreFragment;->setPostAuthPageListener(ZZ)V

    .line 41
    iput-boolean v0, p0, Lcom/amazon/kcp/store/StoreFragmentSupervisor;->restorable:Z

    return-void
.end method
