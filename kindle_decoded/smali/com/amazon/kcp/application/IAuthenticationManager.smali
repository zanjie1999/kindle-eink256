.class public interface abstract Lcom/amazon/kcp/application/IAuthenticationManager;
.super Ljava/lang/Object;
.source "IAuthenticationManager.java"

# interfaces
.implements Lcom/amazon/kindle/event/IEventProvider;


# static fields
.field public static final COR_PFM_UPDATED:Lcom/amazon/kindle/event/EventType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_USER_ID:Ljava/lang/String;

.field public static final SESSION_USER_DEREGISTER:Lcom/amazon/kindle/event/EventType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USER_REGISTER:Lcom/amazon/kindle/event/EventType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    invoke-static {}, Lcom/amazon/kindle/services/authentication/DefaultAccount;->getInstance()Lcom/amazon/kindle/services/authentication/DefaultAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/services/authentication/AccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/IAuthenticationManager;->DEFAULT_USER_ID:Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/amazon/kindle/event/EventType;

    const-string v1, "REGISTER"

    invoke-direct {v0, v1, v1}, Lcom/amazon/kindle/event/EventType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/IAuthenticationManager;->USER_REGISTER:Lcom/amazon/kindle/event/EventType;

    .line 47
    new-instance v0, Lcom/amazon/kindle/event/EventType;

    const-string v1, "DEREGISTER"

    const-string v2, "SESSION_USER"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/event/EventType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/IAuthenticationManager;->SESSION_USER_DEREGISTER:Lcom/amazon/kindle/event/EventType;

    .line 60
    new-instance v0, Lcom/amazon/kindle/event/EventType;

    const-string v1, "COR_PFM"

    const-string v2, "CHANGED"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/event/EventType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/IAuthenticationManager;->COR_PFM_UPDATED:Lcom/amazon/kindle/event/EventType;

    return-void
.end method


# virtual methods
.method public abstract fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;
.end method

.method public abstract fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;
.end method

.method public abstract getAuthenticatedMethodFactory()Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;
.end method

.method public abstract getCookie()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getDeviceType()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getEncryptedDSN()Ljava/lang/String;
.end method

.method public abstract getEncryptedDeviceSerialNumber()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getEncryptedDeviceType()Ljava/lang/String;
.end method

.method public abstract getIdentityCookies()[Ljava/lang/String;
.end method

.method public abstract getPFM()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;
.end method

.method public abstract getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;
.end method

.method public abstract getUserName()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract handleRegistration(Ljava/util/List;Lcom/amazon/kindle/callback/ICallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/services/authentication/TokenKey;",
            ">;",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract isAuthenticated()Z
.end method

.method public abstract isAuthenticated(Ljava/lang/String;)Z
.end method

.method public abstract removeAuthentication(Lcom/amazon/kindle/services/authentication/IAccountInfo;)V
.end method

.method public abstract updateCORPFM()V
.end method

.method public abstract updateDeviceCredentials(Ljava/lang/String;Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/callback/ICallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/messaging/ITodoItem;",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateDeviceName(Ljava/lang/String;Ljava/lang/String;)V
.end method
