.class public Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$a;,
        Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$b;,
        Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.accounts.SubAuthenticatorConnection"

.field private static final cI:J


# instance fields
.field private final cJ:Lcom/amazon/identity/auth/device/aj;

.field private final cK:Landroid/content/Context;

.field private cL:Landroid/content/ServiceConnection;

.field private cM:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

.field private cN:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$b;

.field private cO:Lcom/amazon/dcp/sso/ISubAuthenticator;

.field private cP:Z

.field private cQ:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 27
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cI:J

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/aj;Landroid/content/Context;)V
    .locals 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$1;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$1;-><init>(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cL:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 105
    iput-object v1, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cQ:Ljava/lang/Object;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 119
    iput-object p1, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cJ:Lcom/amazon/identity/auth/device/aj;

    .line 120
    iput-object p2, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cK:Landroid/content/Context;

    .line 121
    sget-object p1, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;->Unbound:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

    iput-object p1, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cM:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

    .line 122
    iput-boolean v0, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cP:Z

    return-void

    .line 116
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SubAuthenticatorDescription cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic Y()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;Lcom/amazon/dcp/sso/ISubAuthenticator;)Lcom/amazon/dcp/sso/ISubAuthenticator;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cO:Lcom/amazon/dcp/sso/ISubAuthenticator;

    return-object p1
.end method

.method static synthetic a(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;)Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cM:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

    return-object p1
.end method

.method private a(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$a;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cK:Landroid/content/Context;

    const-string v1, "ErrorConnectingToSubAuth"

    .line 305
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/ResourceHelper;->y(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cJ:Lcom/amazon/identity/auth/device/aj;

    iget-object v3, v3, Lcom/amazon/identity/auth/device/aj;->packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 307
    invoke-interface {p1, v1, v0}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$a;->b(ILjava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Intent;Landroid/content/ServiceConnection;)Z
    .locals 2

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cK:Landroid/content/Context;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 200
    sget-object p2, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 201
    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Unable to talk to package because of SecurityException : %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method static synthetic b(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;)Z
    .locals 1

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cP:Z

    return v0
.end method

.method static synthetic c(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;)Ljava/lang/Object;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cQ:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;)Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$b;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cN:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$b;

    return-object p0
.end method

.method static synthetic e(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;)Lcom/amazon/identity/auth/device/aj;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cJ:Lcom/amazon/identity/auth/device/aj;

    return-object p0
.end method

.method static synthetic f(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;)Landroid/content/ServiceConnection;
    .locals 1

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cL:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic g(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cP:Z

    return p0
.end method


# virtual methods
.method public a(Landroid/accounts/Account;Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$a;)V
    .locals 4

    .line 245
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cQ:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cM:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

    .line 248
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    sget-object v0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;->Bound:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

    if-eq v1, v0, :cond_0

    .line 252
    sget-object p1, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->TAG:Ljava/lang/String;

    const-string v0, "Cannot deregister the Sub Authenticator until the connection has been opened"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x8

    const-string v0, "In bad state. Cannot deregister"

    .line 253
    invoke-interface {p2, p1, v0}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$a;->b(ILjava/lang/String;)V

    return-void

    .line 257
    :cond_0
    new-instance v0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$3;

    invoke-direct {v0, p0, p2}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$3;-><init>(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$a;)V

    .line 280
    :try_start_1
    sget-object v1, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Calling "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cJ:Lcom/amazon/identity/auth/device/aj;

    iget-object v3, v3, Lcom/amazon/identity/auth/device/aj;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to start deregistration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cO:Lcom/amazon/dcp/sso/ISubAuthenticator;

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v1, v0, v2, p1}, Lcom/amazon/dcp/sso/ISubAuthenticator;->getAccountRemovalAllowed(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 291
    :catch_0
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->a(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$a;)V

    return-void

    :catch_1
    move-exception p1

    .line 285
    sget-object v0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "SubAuthenticator package caused run time exception in it\'s getAccountRemovalAllowed implementation. Error Message: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->a(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$a;)V

    return-void

    :catchall_0
    move-exception p1

    .line 248
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public a(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$b;)Z
    .locals 5

    .line 137
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cQ:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cM:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

    sget-object v2, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;->Unbound:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

    if-ne v1, v2, :cond_2

    .line 145
    iget-object v1, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cL:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    .line 151
    sget-object v1, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;->Binding:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

    iput-object v1, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cM:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

    .line 153
    iput-object p1, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cN:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$b;

    .line 156
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.amazon.dcp.sso.AccountSubAuthenticator"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cJ:Lcom/amazon/identity/auth/device/aj;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/aj;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 159
    iget-object v1, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cL:Landroid/content/ServiceConnection;

    .line 160
    invoke-direct {p0, p1, v1}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->a(Landroid/content/Intent;Landroid/content/ServiceConnection;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 164
    sget-object p1, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;->Unbound:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

    iput-object p1, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cM:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

    .line 165
    sget-object p1, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->TAG:Ljava/lang/String;

    const-string v1, "Application tried to bind to SubAuthenticator Service and failed."

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    monitor-exit v0

    return v2

    .line 170
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 171
    new-instance v2, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$2;

    invoke-direct {v2, p0}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$2;-><init>(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;)V

    sget-wide v3, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cI:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 188
    monitor-exit v0

    return p1

    .line 147
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to reuse a SubAuthenticatorConnection.  openConnection can only be executed once."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot open a connection to the service because we are currently connecting or have already connected to the service."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 189
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public closeConnection()V
    .locals 4

    .line 209
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cQ:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cM:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

    sget-object v2, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;->Bound:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

    if-eq v1, v2, :cond_0

    .line 213
    sget-object v1, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->TAG:Ljava/lang/String;

    const-string v2, "Cannot close the connection because it was not connected"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    monitor-exit v0

    return-void

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cL:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1230
    :try_start_1
    iget-object v1, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cK:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cL:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1237
    :catch_0
    :try_start_2
    sget-object v1, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->TAG:Ljava/lang/String;

    const-string v2, "IllegalArgumentException is received during unbinding from Subauthenticator package, Ignored."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    .line 220
    iput-object v1, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cL:Landroid/content/ServiceConnection;

    .line 222
    :cond_1
    sget-object v1, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;->Unbound:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

    iput-object v1, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cM:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

    .line 223
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->cJ:Lcom/amazon/identity/auth/device/aj;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/aj;->packageName:Ljava/lang/String;

    return-object v0
.end method
