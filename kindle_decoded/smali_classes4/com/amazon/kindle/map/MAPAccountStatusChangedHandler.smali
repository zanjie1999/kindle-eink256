.class public Lcom/amazon/kindle/map/MAPAccountStatusChangedHandler;
.super Ljava/lang/Object;
.source "MAPAccountStatusChangedHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/amazon/kindle/map/MAPAccountStatusChangedHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/map/MAPAccountStatusChangedHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/kindle/map/MAPAccountStatusChangedHandler;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onAccountRemoved()V
    .locals 3

    .line 67
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->blockOnAppInitialization()Z

    .line 68
    iget-object v0, p0, Lcom/amazon/kindle/map/MAPAccountStatusChangedHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    .line 69
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->deregisterLocallyOnly(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kindle/services/authentication/IAccountInfo;Z)V

    return-void
.end method
