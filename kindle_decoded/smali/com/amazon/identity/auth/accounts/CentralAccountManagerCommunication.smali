.class public Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$RenameDeviceAction;,
        Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$UpdateCredentialsAction;,
        Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$DeregisterDeviceAction;,
        Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$DeregisterAccountAction;,
        Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$AuthenticateAccountAction;,
        Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$RegisterAccountAction;,
        Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$GetAccountsAction;,
        Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$GetAccountAction;,
        Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$GetPrimaryAccountAction;,
        Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$IsAccountRegisteredAction;,
        Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$IsDeviceRegisteredAction;,
        Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$RegisterChildApplication;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.accounts.CentralAccountManagerCommunication"


# instance fields
.field private final aX:Lcom/amazon/identity/auth/device/hn;

.field private final aY:Lcom/amazon/identity/auth/device/dn;

.field private aZ:Lcom/amazon/identity/auth/device/ds;

.field private av:Lcom/amazon/identity/auth/device/co;

.field private ba:Lcom/amazon/identity/auth/device/h;

.field private final o:Lcom/amazon/identity/auth/device/ed;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 467
    new-instance v0, Lcom/amazon/identity/auth/device/dn;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->REGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 470
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.amazon.dcp.sso.ErrorCode"

    const-string v3, "com.amazon.dcp.sso.ErrorMessage"

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/amazon/identity/auth/device/dn;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 467
    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/dn;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/dn;)V
    .locals 1

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v0, "dcp_account_manager"

    .line 483
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/hn;

    iput-object p1, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->aX:Lcom/amazon/identity/auth/device/hn;

    .line 485
    iget-object p1, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->o:Lcom/amazon/identity/auth/device/ed;

    const-string/jumbo v0, "sso_platform"

    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/ds;

    iput-object p1, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->aZ:Lcom/amazon/identity/auth/device/ds;

    .line 487
    iput-object p2, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->aY:Lcom/amazon/identity/auth/device/dn;

    .line 489
    iget-object p1, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ed;->dV()Lcom/amazon/identity/auth/device/co;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->av:Lcom/amazon/identity/auth/device/co;

    return-void
.end method

.method private H(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 853
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->cX()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/du;

    .line 857
    :try_start_0
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/du;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 859
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/framework/RemoteMAPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v2

    .line 866
    sget-object v3, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Couldn\'t determine device type for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1283
    invoke-direct {p0, p4}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->d(Lcom/amazon/identity/auth/device/api/Callback;)Landroid/accounts/AccountManagerCallback;

    move-result-object p4

    .line 1285
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->aX:Lcom/amazon/identity/auth/device/hn;

    .line 1286
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/hn;->a(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    .line 1293
    new-instance p2, Lcom/amazon/identity/auth/device/ag;

    invoke-direct {p2, p1}, Lcom/amazon/identity/auth/device/ag;-><init>(Landroid/accounts/AccountManagerFuture;)V

    return-object p2
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private d(Lcom/amazon/identity/auth/device/api/Callback;)Landroid/accounts/AccountManagerCallback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 631
    :cond_0
    new-instance v0, Lcom/amazon/identity/auth/device/af;

    iget-object v1, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v0, p1, v1}, Lcom/amazon/identity/auth/device/af;-><init>(Lcom/amazon/identity/auth/device/api/Callback;Landroid/content/Context;)V

    return-object v0
.end method

.method private declared-synchronized s()Lcom/amazon/identity/auth/device/h;
    .locals 1

    monitor-enter p0

    .line 1298
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->ba:Lcom/amazon/identity/auth/device/h;

    if-nez v0, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/h;->b(Landroid/content/Context;)Lcom/amazon/identity/auth/device/h;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->ba:Lcom/amazon/identity/auth/device/h;

    .line 1303
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->ba:Lcom/amazon/identity/auth/device/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic t()Landroid/os/Bundle;
    .locals 4

    .line 17015
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->DEREGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->DEREGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 17017
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v1

    const-string v2, "Deregister failed. Could not remove the account"

    const-string v3, "Could not remove the account"

    .line 17015
    invoke-static {v0, v2, v1, v3}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic u()Landroid/os/Bundle;
    .locals 1

    .line 17023
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Lcom/amazon/identity/auth/device/ej;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 8215
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->aZ:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->dk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1033
    new-instance v0, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 1034
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1035
    invoke-virtual {p2, p1}, Lcom/amazon/identity/auth/device/ej;->A(Landroid/os/Bundle;)V

    const-string p2, "deregData"

    .line 1036
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1037
    iget-object p2, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->aY:Lcom/amazon/identity/auth/device/dn;

    const-class p3, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$DeregisterDeviceAction;

    invoke-virtual {p2, p3, p1, v0}, Lcom/amazon/identity/auth/device/dn;->a(Ljava/lang/Class;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)V

    return-object v0

    .line 1045
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v1, "dcp_amazon_account_man"

    .line 1046
    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    .line 1048
    invoke-virtual {v0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->n()Ljava/lang/String;

    move-result-object v0

    .line 1049
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Lcom/amazon/identity/auth/device/ej;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 6215
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->aZ:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->dk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    new-instance v0, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {v0, p2}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 929
    iget-object p2, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->aY:Lcom/amazon/identity/auth/device/dn;

    const-class v1, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$DeregisterAccountAction;

    .line 930
    invoke-static {p1, p3, p4}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$DeregisterAccountAction;->parametersToBundle(Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 929
    invoke-virtual {p2, v1, p1, v0}, Lcom/amazon/identity/auth/device/dn;->a(Ljava/lang/Class;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)V

    return-object v0

    .line 6947
    :cond_0
    iget-object p3, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p3, p1}, Lcom/amazon/identity/auth/device/hr;->o(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object p1

    if-nez p1, :cond_1

    .line 6953
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->ACCOUNT_ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object p3, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 6956
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result p3

    const-string p4, "Account given does not exist or was already deregistered"

    .line 6954
    invoke-static {p1, p4, p3, p4}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 7018
    new-instance p3, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {p3, p2}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 7019
    invoke-virtual {p3, p1}, Lcom/amazon/identity/auth/device/bl;->onSuccess(Landroid/os/Bundle;)V

    return-object p3

    :cond_1
    if-nez p2, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    .line 7992
    :cond_2
    new-instance p3, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$4;

    invoke-direct {p3, p0, p2}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$4;-><init>(Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;Lcom/amazon/identity/auth/device/api/Callback;)V

    move-object p2, p3

    .line 6964
    :goto_0
    iget-object p3, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->aX:Lcom/amazon/identity/auth/device/hn;

    .line 6965
    invoke-virtual {p3, p1, p2}, Lcom/amazon/identity/auth/device/hn;->a(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    .line 6967
    new-instance p2, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$3;

    invoke-direct {p2, p0, p1}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$3;-><init>(Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;Landroid/accounts/AccountManagerFuture;)V

    return-object p2
.end method

.method public a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/ij;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1060
    new-instance p5, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {p5, p4}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 9215
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->aZ:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->dk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1063
    iget-object p4, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->aY:Lcom/amazon/identity/auth/device/dn;

    const-class v0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$UpdateCredentialsAction;

    .line 1064
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->gC()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$UpdateCredentialsAction;->parametersToBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 1063
    invoke-virtual {p4, v0, p1, p5}, Lcom/amazon/identity/auth/device/dn;->a(Ljava/lang/Class;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)V

    return-object p5

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->o:Lcom/amazon/identity/auth/device/ed;

    .line 1072
    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/hr;->o(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1082
    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 1085
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v3

    const/4 v5, 0x0

    const-string v2, "Account given does not exist or was already deregistered"

    const-string v4, "Account given does not exist or was already deregistered"

    move-object v0, p5

    .line 1082
    invoke-static/range {v0 .. v5}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    return-object p5

    .line 1091
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->gC()Ljava/lang/String;

    move-result-object p5

    .line 10215
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->aZ:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->dk()Z

    move-result v0

    if-nez v0, :cond_8

    .line 10226
    iget-object p5, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Lcom/amazon/identity/auth/device/ib;->q(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p5

    const-string v0, "com.amazon.dcp.sso.token.devicedevicetype"

    if-eqz p5, :cond_2

    move-object p5, v0

    goto/16 :goto_2

    .line 10231
    :cond_2
    new-instance p5, Ljava/lang/StringBuffer;

    invoke-direct {p5}, Ljava/lang/StringBuffer;-><init>()V

    .line 10232
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ".tokens."

    .line 10233
    invoke-virtual {p5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10235
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p2, "device_type"

    .line 10237
    invoke-virtual {p5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 10239
    :cond_3
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.amazon.dcp.sso.token.device.deviceserialname"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p2, "dsn"

    .line 10241
    invoke-virtual {p5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 10243
    :cond_4
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.amazon.dcp.sso.property.deviceemail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p2, "email"

    .line 10245
    invoke-virtual {p5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 10247
    :cond_5
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.amazon.dcp.sso.property.devicename"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p2, "device_name"

    .line 10249
    invoke-virtual {p5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 10251
    :cond_6
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.amazon.dcp.sso.property.username"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo p2, "user_name"

    .line 10253
    invoke-virtual {p5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10261
    :goto_0
    invoke-virtual {p5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    move-object p5, p2

    goto :goto_2

    .line 10258
    :cond_7
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->gC()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_8
    :goto_2
    if-eqz p3, :cond_9

    goto :goto_3

    .line 10270
    :cond_9
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 10272
    :goto_3
    invoke-static {}, Lcom/amazon/identity/auth/device/lj;->getDefaultUrl()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.amazon.dcp.sso.AddAccount.options.URL"

    .line 10271
    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    invoke-direct {p0, p1, p5, p3, p4}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->a(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 647
    invoke-static {p3}, Lcom/amazon/identity/auth/device/ht;->H(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    .line 4215
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->aZ:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->dk()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 4668
    new-instance v0, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {v0, p4}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 4674
    iget-object p4, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p4, p2}, Lcom/amazon/identity/auth/device/p;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v2

    const-string p2, "%s is not a child application device type"

    .line 4677
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 4679
    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError;->NOT_A_CHILD_DEVICE_TYPE:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError;

    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->REGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 4682
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v6

    const/4 v8, 0x0

    move-object v3, v0

    move-object v5, v7

    .line 4679
    invoke-static/range {v3 .. v8}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    return-object v0

    .line 4909
    :cond_0
    iget-object p4, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->o:Lcom/amazon/identity/auth/device/ed;

    .line 4910
    invoke-virtual {p4}, Lcom/amazon/identity/auth/device/ed;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object v3

    .line 4909
    invoke-static {p4, v3, p1, p2}, Lcom/amazon/identity/auth/device/p;->a(Landroid/content/Context;Lcom/amazon/identity/auth/device/gc;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 4914
    sget-object p4, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    const-string v3, "Child application device type %s is already registered"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 4915
    invoke-static {}, Lcom/amazon/identity/auth/device/p;->w()Landroid/os/Bundle;

    move-result-object p4

    invoke-interface {v0, p4}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    :cond_1
    if-nez v1, :cond_2

    return-object v0

    .line 4693
    :cond_2
    iget-object p4, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->aY:Lcom/amazon/identity/auth/device/dn;

    const-class v1, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$RegisterChildApplication;

    .line 4694
    invoke-static {p1, p2, p3, p5}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$RegisterChildApplication;->parametersToBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;

    move-result-object p1

    .line 4693
    invoke-virtual {p4, v1, p1, v0}, Lcom/amazon/identity/auth/device/dn;->a(Ljava/lang/Class;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)V

    return-object v0

    .line 5706
    :cond_3
    new-instance v0, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {v0, p4}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 5707
    iget-object v3, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v3, p1}, Lcom/amazon/identity/auth/device/hr;->o(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v3

    if-nez v3, :cond_4

    .line 5713
    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 5716
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v5

    const/4 v7, 0x0

    const-string v4, "Account given does not exist or was already deregistered"

    const-string v6, "Account given does not exist or was already deregistered"

    move-object v2, v0

    .line 5713
    invoke-static/range {v2 .. v7}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    return-object v0

    .line 5722
    :cond_4
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    .line 5727
    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->MISSING_PACKAGE:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v2

    const-string p3, "Could not find a package to register the child device type %s"

    .line 5729
    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 5730
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v5

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v2

    const-string p2, "Could not find a package that registers the child device type %s"

    .line 5731
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, v0

    .line 5727
    invoke-static/range {v2 .. v7}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    return-object v0

    .line 5737
    :cond_5
    invoke-static {v4}, Lcom/amazon/identity/auth/device/aj;->ad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5739
    invoke-static {v4}, Lcom/amazon/identity/auth/device/aj;->af(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5741
    new-instance v6, Lcom/amazon/identity/auth/device/hb;

    iget-object v7, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v6, v7, v3}, Lcom/amazon/identity/auth/device/hb;-><init>(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 5878
    invoke-virtual {v6, v5}, Lcom/amazon/identity/auth/device/hb;->bY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_6

    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    .line 5883
    :cond_6
    iget-object v7, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->o:Lcom/amazon/identity/auth/device/ed;

    .line 5884
    invoke-virtual {v7}, Lcom/amazon/identity/auth/device/ed;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object v8

    .line 5883
    invoke-static {v7, v8, p1, p2}, Lcom/amazon/identity/auth/device/p;->a(Landroid/content/Context;Lcom/amazon/identity/auth/device/gc;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_b

    .line 5745
    sget-object p1, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->TAG:Ljava/lang/String;

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p2, v7, v2

    const-string v8, "Upgrading SSO credentials (from DMS Sub Auth) to MAP R5 credentials for device type %s"

    invoke-static {p1, v8, v7}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5748
    invoke-virtual {v6, v4}, Lcom/amazon/identity/auth/device/hb;->bY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 5902
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const/4 v4, 0x1

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_a

    .line 5752
    iget-object v4, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v4}, Lcom/amazon/identity/auth/device/mw;->aZ(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 5755
    sget-object v0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "Your app is changing to a different child device type, which may cause MAP to register your new child device type, please make sure you do it intentionally."

    invoke-static {v0, v2, v1}, Lcom/amazon/identity/auth/device/il;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "AppUpgradingDifferentChildDeviceType"

    .line 5757
    invoke-virtual {p5, v0}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    .line 5758
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppUpgradingDifferentChildDeviceType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    goto :goto_3

    .line 5762
    :cond_9
    sget-object p3, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->TAG:Ljava/lang/String;

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p1, p4, v2

    aput-object p2, p4, v1

    const-string p1, "Cannot upgrade a legacy child device type: %s  to a different device type: %s. This is a bug. Deregistering the device to clean up."

    .line 5763
    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5762
    invoke-static {p3, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 5767
    new-instance p1, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$1;

    invoke-direct {p1, p0, p5}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$1;-><init>(Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;Lcom/amazon/identity/auth/device/ej;)V

    invoke-static {p1}, Lcom/amazon/identity/auth/device/jf;->c(Ljava/lang/Runnable;)V

    .line 5796
    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->DEVICE_TYPE_UPGRADE_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 5799
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v5

    const/4 v7, 0x0

    const-string v6, "Cannot upgrade a legacy child device type to a different device type. Deregistering the device to clean up the bad state."

    move-object v2, v0

    move-object v4, v6

    .line 5796
    invoke-static/range {v2 .. v7}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    return-object v0

    .line 5806
    :cond_a
    :goto_3
    invoke-direct {p0, v3, v5, p3, p4}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->a(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1

    :cond_b
    new-array p1, v1, [Ljava/lang/String;

    aput-object v5, p1, v2

    .line 5809
    new-instance p2, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$2;

    invoke-direct {p2, p0, v0}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$2;-><init>(Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;Lcom/amazon/identity/auth/device/bl;)V

    invoke-virtual {v6, p1, p2}, Lcom/amazon/identity/auth/device/hb;->a([Ljava/lang/String;Lcom/amazon/identity/auth/device/hb$a;)V

    return-object v0
.end method

.method public a(Landroid/app/Activity;Lcom/amazon/identity/auth/device/api/SigninOption;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
    .locals 6

    .line 511
    invoke-static {p3}, Lcom/amazon/identity/auth/device/ht;->H(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 513
    invoke-direct {p0}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->s()Lcom/amazon/identity/auth/device/h;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/identity/auth/device/h;->a(Landroid/app/Activity;Lcom/amazon/identity/auth/device/api/SigninOption;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 560
    invoke-static {p3}, Lcom/amazon/identity/auth/device/ht;->H(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 561
    invoke-direct {p0}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->s()Lcom/amazon/identity/auth/device/h;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/identity/auth/device/h;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
    .locals 7

    const-string v0, "link_code"

    .line 1203
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pre_authorized_link_code"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1209
    :cond_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->s()Lcom/amazon/identity/auth/device/h;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/identity/auth/device/h;->a(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    return-void

    .line 1205
    :cond_1
    :goto_0
    sget-object p1, Lcom/amazon/identity/auth/device/api/RegistrationType;->WITH_LINK_CODE:Lcom/amazon/identity/auth/device/api/RegistrationType;

    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->a(Lcom/amazon/identity/auth/device/api/RegistrationType;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
    .locals 1

    .line 3215
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->aZ:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->dk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    invoke-virtual {p3, p1}, Lcom/amazon/identity/auth/device/ej;->A(Landroid/os/Bundle;)V

    .line 570
    iget-object p3, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->aY:Lcom/amazon/identity/auth/device/dn;

    const-class v0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$AuthenticateAccountAction;

    invoke-virtual {p3, v0, p1, p2}, Lcom/amazon/identity/auth/device/dn;->a(Ljava/lang/Class;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)V

    return-void

    .line 574
    :cond_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->s()Lcom/amazon/identity/auth/device/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/h;->a(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    return-void
.end method

.method public a(Lcom/amazon/identity/auth/device/api/RegistrationType;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
    .locals 2

    .line 529
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->aZ:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->ds()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->aZ:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->dt()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "com.amazon.dcp.sso.AddAccount.options.AddAsSecondary"

    .line 531
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 534
    :cond_1
    sget-object v0, Lcom/amazon/identity/auth/device/api/RegistrationType;->FROM_ADP_TOKEN:Lcom/amazon/identity/auth/device/api/RegistrationType;

    if-ne p1, v0, :cond_2

    .line 536
    invoke-direct {p0}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->s()Lcom/amazon/identity/auth/device/h;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/h;->c(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    return-void

    .line 2215
    :cond_2
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->aZ:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->dk()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 541
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->aY:Lcom/amazon/identity/auth/device/dn;

    const-class v1, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$RegisterAccountAction;

    .line 542
    invoke-static {p1, p2, p4}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$RegisterAccountAction;->parametersToBundle(Lcom/amazon/identity/auth/device/api/RegistrationType;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;

    move-result-object p1

    .line 541
    invoke-virtual {v0, v1, p1, p3}, Lcom/amazon/identity/auth/device/dn;->a(Ljava/lang/Class;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)V

    return-void

    .line 2636
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/RegistrationType;->getName()Ljava/lang/String;

    move-result-object p4

    const-string/jumbo v0, "registration_type"

    invoke-virtual {p2, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2596
    sget-object p4, Lcom/amazon/identity/auth/device/api/RegistrationType;->FROM_AUTH_TOKEN:Lcom/amazon/identity/auth/device/api/RegistrationType;

    invoke-virtual {p1, p4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2598
    iget-object p1, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->av:Lcom/amazon/identity/auth/device/co;

    sget-object p4, Lcom/amazon/identity/auth/device/features/Feature;->RegistrationViaAuthToken:Lcom/amazon/identity/auth/device/features/Feature;

    invoke-virtual {p1, p4}, Lcom/amazon/identity/auth/device/co;->a(Lcom/amazon/identity/auth/device/features/Feature;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "Registration via auth token is not supported on this platform."

    .line 2601
    sget-object p2, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 2605
    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->UNSUPPORTED_OPERATION:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object p4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 2607
    invoke-virtual {p4}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result p4

    .line 2605
    invoke-static {p2, p1, p4, p1}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void

    .line 2613
    :cond_4
    invoke-direct {p0, p3}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->d(Lcom/amazon/identity/auth/device/api/Callback;)Landroid/accounts/AccountManagerCallback;

    move-result-object p1

    .line 2615
    iget-object p3, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->aX:Lcom/amazon/identity/auth/device/hn;

    const-string p4, "com.amazon.account"

    invoke-virtual {p3, p4, p2, p1}, Lcom/amazon/identity/auth/device/hn;->a(Ljava/lang/String;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 16215
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->aZ:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->dk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1188
    new-instance v0, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {v0, p4}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 1189
    iget-object p4, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->aY:Lcom/amazon/identity/auth/device/dn;

    const-class v1, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$RenameDeviceAction;

    .line 1190
    invoke-static {p1, p2, p3, p5}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$RenameDeviceAction;->parametersToBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;

    move-result-object p1

    .line 1189
    invoke-virtual {p4, v1, p1, v0}, Lcom/amazon/identity/auth/device/dn;->a(Ljava/lang/Class;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)V

    return-object v0

    .line 1196
    :cond_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->s()Lcom/amazon/identity/auth/device/h;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/identity/auth/device/h;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/app/Activity;Lcom/amazon/identity/auth/device/api/SigninOption;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
    .locals 6

    .line 585
    invoke-static {p3}, Lcom/amazon/identity/auth/device/ht;->H(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 586
    invoke-direct {p0}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->s()Lcom/amazon/identity/auth/device/h;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/identity/auth/device/h;->b(Landroid/app/Activity;Lcom/amazon/identity/auth/device/api/SigninOption;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    return-void
.end method

.method public b(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
    .locals 6

    .line 1318
    invoke-direct {p0}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->s()Lcom/amazon/identity/auth/device/h;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1319
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/identity/auth/device/h;->b(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    return-void
.end method

.method public getAccounts()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 15215
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->aZ:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->dk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1170
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->aY:Lcom/amazon/identity/auth/device/dn;

    const-class v1, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$GetAccountsAction;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/auth/device/dn;->a(Ljava/lang/Class;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1171
    invoke-static {v0}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$GetAccountsAction;->getResult(Landroid/os/Bundle;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1175
    :cond_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->s()Lcom/amazon/identity/auth/device/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/h;->getAccounts()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryAccount()Ljava/lang/String;
    .locals 3

    .line 13215
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->aZ:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->dk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->aY:Lcom/amazon/identity/auth/device/dn;

    const-class v1, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$GetPrimaryAccountAction;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/auth/device/dn;->a(Ljava/lang/Class;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1142
    invoke-static {v0}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$GetPrimaryAccountAction;->getResult(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1146
    :cond_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->s()Lcom/amazon/identity/auth/device/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/h;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAccountRegistered(Ljava/lang/String;)Z
    .locals 2

    .line 12215
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->aZ:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->dk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1126
    invoke-static {p1}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$IsAccountRegisteredAction;->parametersToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 1127
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->aY:Lcom/amazon/identity/auth/device/dn;

    const-class v1, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$IsAccountRegisteredAction;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/identity/auth/device/dn;->a(Ljava/lang/Class;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 1128
    invoke-static {p1}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$IsAccountRegisteredAction;->getResult(Landroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 1132
    :cond_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->s()Lcom/amazon/identity/auth/device/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/h;->isAccountRegistered(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isDeviceRegistered()Z
    .locals 3

    .line 11215
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->aZ:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->dk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1112
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->aY:Lcom/amazon/identity/auth/device/dn;

    const-class v1, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$IsDeviceRegisteredAction;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/auth/device/dn;->a(Ljava/lang/Class;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1113
    invoke-static {v0}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$IsDeviceRegisteredAction;->getResult(Landroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 1117
    :cond_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->s()Lcom/amazon/identity/auth/device/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/h;->isDeviceRegistered()Z

    move-result v0

    return v0
.end method

.method public r(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 14215
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->aZ:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->dk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1155
    invoke-static {p1}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$GetAccountAction;->parametersToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 1156
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->aY:Lcom/amazon/identity/auth/device/dn;

    const-class v1, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$GetAccountAction;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/identity/auth/device/dn;->a(Ljava/lang/Class;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 1157
    invoke-static {p1}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication$GetAccountAction;->getResult(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1161
    :cond_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;->s()Lcom/amazon/identity/auth/device/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/h;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
