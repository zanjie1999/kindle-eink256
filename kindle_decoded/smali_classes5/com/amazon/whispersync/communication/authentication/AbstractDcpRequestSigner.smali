.class public abstract Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/whispersync/communication/authentication/RequestSigner;


# static fields
.field protected static final AUTH_HEADERS:Ljava/lang/String; = "auth.headers"

.field protected static final AUTH_REQUEST_SERVICE_CLASS_NAME:Ljava/lang/String; = "com.amazon.whispersync.dcp.sso.AuthenticatedRequestService"

.field protected static final BIND_SERVICE_WAIT_MS:I = 0x7d0

.field protected static final DCP_INTENT_ACTION:Ljava/lang/String; = "com.amazon.whispersync.dcp.sso.action.GET_DEVICE_CREDENTIALS"

.field protected static final EMPTY_BODY:[B

.field protected static final FORCE_UNBIND:Z = true

.field protected static final NOT_FORCE_UNBIND:Z = false

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field protected final mAndroidAccountManager:Lcom/amazon/whispersync/communication/authentication/AccountManagerWrapper;

.field protected final mAuthService:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field protected final mAuthServiceConnection:Landroid/content/ServiceConnection;

.field protected mBindCount:I

.field protected final mBindCounterLock:Ljava/util/concurrent/locks/Lock;

.field protected final mContext:Landroid/content/Context;

.field protected final mMapAccountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

.field protected final mServiceConnectedCondition:Ljava/util/concurrent/locks/Condition;

.field protected final mServiceConnectedLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.AbstractDcpRequestSigner"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->EMPTY_BODY:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/amazon/whispersync/communication/authentication/AccountManagerWrapperImpl;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/whispersync/communication/authentication/AccountManagerWrapperImpl;-><init>(Landroid/accounts/AccountManager;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/MAPAccountManager;Lcom/amazon/whispersync/communication/authentication/AccountManagerWrapper;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/MAPAccountManager;Lcom/amazon/whispersync/communication/authentication/AccountManagerWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mAuthService:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mServiceConnectedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mServiceConnectedCondition:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mBindCounterLock:Ljava/util/concurrent/locks/Lock;

    iput-object p1, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mMapAccountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    iput-object p3, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mAndroidAccountManager:Lcom/amazon/whispersync/communication/authentication/AccountManagerWrapper;

    new-instance p1, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner$1;

    invoke-direct {p1, p0}, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner$1;-><init>(Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;)V

    iput-object p1, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mAuthServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;
    .locals 1

    sget-object v0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-object v0
.end method

.method private bindService()V
    .locals 8

    sget-object v0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "bindService"

    const-string v4, "attempt to bind service"

    invoke-virtual {v0, v3, v4, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mBindCounterLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mBindCount:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mBindCount:I

    iget-object v0, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.amazon.whispersync.dcp.sso.action.GET_DEVICE_CREDENTIALS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mAuthServiceConnection:Landroid/content/ServiceConnection;

    const/4 v6, 0x5

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    sget-object v4, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v5, "bound service"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "bindResult"

    aput-object v7, v6, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v2

    const/4 v0, 0x2

    const-string v1, "bindCount"

    aput-object v1, v6, v0

    const/4 v0, 0x3

    iget v1, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mBindCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-virtual {v4, v3, v5, v6}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mBindCounterLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mBindCounterLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private unbindService(Z)V
    .locals 8

    iget-object v0, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mBindCounterLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x2

    const-string/jumbo v1, "unbindService"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    :try_start_0
    iget v4, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mBindCount:I

    sub-int/2addr v4, v2

    iput v4, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mBindCount:I

    if-lez v4, :cond_1

    sget-object p1, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string/jumbo v5, "requests are waiting for sign, should not unbind"

    new-array v0, v0, [Ljava/lang/Object;

    const-string v6, "bind count"

    aput-object v6, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p1, v1, v5, v0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p1, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mBindCounterLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iput v3, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mBindCount:I

    :cond_1
    iget-object v4, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mServiceConnectedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v4, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string/jumbo v5, "unbinding service"

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "force unbind"

    aput-object v7, v6, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v6, v2

    invoke-virtual {v4, v1, v5, v6}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mAuthService:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mAuthServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object p1, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mServiceConnectedLock:Ljava/util/concurrent/locks/Lock;

    :goto_0
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_4
    sget-object v4, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v5, "caught IllegalArgumentException unbinding, ignoring"

    new-array v0, v0, [Ljava/lang/Object;

    const-string v6, "message"

    aput-object v6, v0, v3

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {v4, v1, v5, v0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object p1, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mServiceConnectedLock:Ljava/util/concurrent/locks/Lock;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mBindCounterLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_2
    :try_start_6
    iget-object v0, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mServiceConnectedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mBindCounterLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method


# virtual methods
.method protected callAuthenticationService(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;Landroid/net/Uri;[BLamazon/whispersync/communication/authentication/RequestContext;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/authentication/SigningException;,
            Lamazon/whispersync/communication/MissingCredentialsException;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v0, p5

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    instance-of v3, v0, Lamazon/whispersync/communication/authentication/AccountRequestContext;

    if-eqz v3, :cond_0

    check-cast v0, Lamazon/whispersync/communication/authentication/AccountRequestContext;

    goto :goto_0

    :cond_0
    new-instance v0, Lamazon/whispersync/communication/authentication/SigningException;

    const-string v2, "The RequestContext must be an AccountRequestContext"

    invoke-direct {v0, v2}, Lamazon/whispersync/communication/authentication/SigningException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->getAmazonAccount(Lamazon/whispersync/communication/authentication/AccountRequestContext;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->getRequestAuthMethod()Lcom/amazon/whispersync/dcp/sso/IRequestAuthenticationMethod;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p3 .. p3}, Lcom/amazon/whispersync/communication/authentication/DcpUriSanitizer;->sanitizeUriForDcp(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v10

    sget-object v0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "authType"

    const/4 v7, 0x0

    aput-object v4, v3, v7

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const-string v8, "method"

    const/4 v9, 0x2

    aput-object v8, v3, v9

    const/4 v8, 0x3

    aput-object v11, v3, v8

    const/4 v8, 0x4

    const-string/jumbo v12, "uri"

    aput-object v12, v3, v8

    const/4 v8, 0x5

    aput-object v10, v3, v8

    const/4 v8, 0x6

    const-string v12, "body.length"

    aput-object v12, v3, v8

    const/4 v8, 0x7

    move-object/from16 v13, p4

    array-length v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v8

    const-string/jumbo v8, "signRequest"

    const-string v12, "Signing request"

    invoke-virtual {v0, v8, v12, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, v1, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/utils/PlatformUtils;->isPostMergeDevice(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "directedId"

    const-string v8, "callAuthenticationService"

    if-eqz v0, :cond_2

    :try_start_1
    sget-object v0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string/jumbo v2, "signing with directedId"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v7

    aput-object v5, v9, v4

    invoke-virtual {v0, v8, v2, v9}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v8

    move-object v3, v6

    move-object/from16 v4, p2

    move-object v6, v10

    move-object v7, v11

    move-object/from16 v9, p4

    invoke-interface/range {v3 .. v9}, Lcom/amazon/whispersync/dcp/sso/IRequestAuthenticationMethod;->getAuthenticationParametersForRequestByDirectedId(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;[B)Lcom/amazon/whispersync/dcp/sso/ReturnValueOrError;

    move-result-object v0

    goto :goto_2

    :cond_2
    if-eqz v5, :cond_3

    iget-object v0, v1, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/amazon/identity/auth/device/utils/BackwardsCompatiabilityHelper;->getAccountWithDirectedId(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    sget-object v12, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string/jumbo v14, "signing with android.account.Account"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v7

    aput-object v5, v9, v4

    invoke-virtual {v12, v8, v14, v9}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v12

    move-object/from16 v7, p2

    move-object v8, v0

    move-object v9, v2

    move-object/from16 v13, p4

    invoke-interface/range {v6 .. v13}, Lcom/amazon/whispersync/dcp/sso/IRequestAuthenticationMethod;->getAuthenticationParametersForRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;[B)Lcom/amazon/whispersync/dcp/sso/ReturnValueOrError;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->checkResultForErrors(Lcom/amazon/whispersync/dcp/sso/ReturnValueOrError;)V

    move-object/from16 v2, p1

    invoke-virtual {p0, v0, v2}, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->transferAuthHeadersToRequest(Lcom/amazon/whispersync/dcp/sso/ReturnValueOrError;Lorg/apache/http/client/methods/HttpRequestBase;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lamazon/whispersync/communication/authentication/SigningException;

    const-string/jumbo v3, "remote exception"

    invoke-direct {v2, v3, v0}, Lamazon/whispersync/communication/authentication/SigningException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected checkAndCallAuthenticationService(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;Landroid/net/Uri;[BLamazon/whispersync/communication/authentication/RequestContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/authentication/SigningException;,
            Lamazon/whispersync/communication/MissingCredentialsException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mAuthService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p5}, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->callAuthenticationService(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;Landroid/net/Uri;[BLamazon/whispersync/communication/authentication/RequestContext;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AuthenticationService connection is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected checkResultForErrors(Lcom/amazon/whispersync/dcp/sso/ReturnValueOrError;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/authentication/SigningException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/sso/ReturnValueOrError;->isError()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "response message"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/sso/ReturnValueOrError;->getResponseMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string/jumbo p1, "signRequest"

    const-string v2, "error calling signing service"

    invoke-virtual {v0, p1, v2, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lamazon/whispersync/communication/authentication/SigningException;

    const-string v0, "Error calling signing service"

    invoke-direct {p1, v0}, Lamazon/whispersync/communication/authentication/SigningException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->unbindService(Z)V

    return-void
.end method

.method protected getAmazonAccount(Lamazon/whispersync/communication/authentication/AccountRequestContext;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/MissingCredentialsException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lamazon/whispersync/communication/authentication/AccountRequestContext;->getDirectedId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lamazon/whispersync/communication/authentication/AccountRequestContext;->getDirectedId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lamazon/whispersync/communication/authentication/AccountRequestContext;->EMPTY_ACCOUNT:Lamazon/whispersync/communication/authentication/AccountRequestContext;

    invoke-virtual {v0, p1}, Lamazon/whispersync/communication/authentication/AccountRequestContext;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mMapAccountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getPrimaryAccount()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mMapAccountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getPrimaryAccount()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    new-instance p1, Lamazon/whispersync/communication/MissingCredentialsException;

    const-string v0, "No amazon account found"

    invoke-direct {p1, v0}, Lamazon/whispersync/communication/MissingCredentialsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getRequestAuthMethod()Lcom/amazon/whispersync/dcp/sso/IRequestAuthenticationMethod;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mAuthService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/sso/IRequestAuthenticationMethod$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/whispersync/dcp/sso/IRequestAuthenticationMethod;

    move-result-object v0

    return-object v0
.end method

.method public abstract signRequest(Lorg/apache/http/client/methods/HttpRequestBase;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/authentication/SigningException;,
            Lamazon/whispersync/communication/MissingCredentialsException;
        }
    .end annotation
.end method

.method protected signRequest(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;Landroid/net/Uri;[BLamazon/whispersync/communication/authentication/RequestContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/authentication/SigningException;,
            Lamazon/whispersync/communication/MissingCredentialsException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mAuthService:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "signRequest"

    const-string v4, "authservice"

    invoke-virtual {v0, v2, v4, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->bindService()V

    invoke-virtual {p0}, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->waitForService()V

    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->checkAndCallAuthenticationService(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;Landroid/net/Uri;[BLamazon/whispersync/communication/authentication/RequestContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v3}, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->unbindService(Z)V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0, v3}, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->unbindService(Z)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This method cannot be called on the main thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected transferAuthHeadersToRequest(Lcom/amazon/whispersync/dcp/sso/ReturnValueOrError;Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/sso/ReturnValueOrError;->getResponse()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "auth.headers"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string/jumbo v0, "transferAuthHeadersToRequest"

    const-string v1, "no headers returned in auth bundle"

    invoke-virtual {p1, v0, v1, p2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected validateRequest(Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected waitForService()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/authentication/SigningException;
        }
    .end annotation

    const-string v0, "Timed out waiting for service binder"

    const-string v1, "Interrupted waiting for service binder"

    iget-object v2, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mAuthService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    const-string/jumbo v7, "waitForService"

    const-string/jumbo v8, "waiting for service to bind"

    invoke-virtual {v4, v7, v8, v6}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mServiceConnectedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v4, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mAuthService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mServiceConnectedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mServiceConnectedCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v8, 0x7d0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v8, v9, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mServiceConnectedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v4, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v8, "elapsedMs"

    aput-object v8, v6, v5

    const/4 v5, 0x1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v5

    const-string v0, "finished waiting for service to bind"

    invoke-virtual {v4, v7, v0, v6}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    :try_start_2
    sget-object v2, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v7, v0, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lamazon/whispersync/communication/authentication/SigningException;

    invoke-direct {v2, v0}, Lamazon/whispersync/communication/authentication/SigningException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    :try_start_3
    sget-object v0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v7, v1, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lamazon/whispersync/communication/authentication/SigningException;

    invoke-direct {v0, v1}, Lamazon/whispersync/communication/authentication/SigningException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object v1, p0, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->mServiceConnectedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
