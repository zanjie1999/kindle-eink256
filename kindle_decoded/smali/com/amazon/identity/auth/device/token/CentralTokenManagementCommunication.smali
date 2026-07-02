.class public Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/he;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication$UpdateTokenCommand;,
        Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication$GetCookiesForActorCommand;,
        Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication$GetTokenForActorCommand;,
        Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication$InvalidateCookiesCommand;,
        Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication$GetCookiesCommand;,
        Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication$GetTokenCommand;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.token.CentralTokenManagementCommunication"


# instance fields
.field private final aY:Lcom/amazon/identity/auth/device/dn;

.field private final o:Lcom/amazon/identity/auth/device/ed;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication;->o:Lcom/amazon/identity/auth/device/ed;

    .line 306
    new-instance p1, Lcom/amazon/identity/auth/device/dn;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication;->o:Lcom/amazon/identity/auth/device/ed;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->REGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 310
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.amazon.dcp.sso.ErrorCode"

    const-string v3, "com.amazon.dcp.sso.ErrorMessage"

    invoke-direct {p1, v0, v2, v3, v1}, Lcom/amazon/identity/auth/device/dn;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication;->aY:Lcom/amazon/identity/auth/device/dn;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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

    .line 379
    sget-object p1, Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 380
    new-instance p1, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {p1, p7}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 381
    iget-object p7, p0, Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication;->aY:Lcom/amazon/identity/auth/device/dn;

    const-class p8, Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication$GetTokenForActorCommand;

    .line 382
    invoke-static {p2, p3, p4, p5, p6}, Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication$GetTokenForActorCommand;->parametersToBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    .line 381
    invoke-virtual {p7, p8, p2, p1}, Lcom/amazon/identity/auth/device/dn;->a(Ljava/lang/Class;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)V

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/gv;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Lcom/amazon/identity/auth/device/gv;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 420
    new-instance v0, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {v0, p4}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 422
    iget-object p4, p0, Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication;->aY:Lcom/amazon/identity/auth/device/dn;

    const-class v1, Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication$UpdateTokenCommand;

    .line 424
    invoke-static {p1, p2, p3, p5, p6}, Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication$UpdateTokenCommand;->parametersToBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/gv;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;

    move-result-object p1

    .line 422
    invoke-virtual {p4, v1, p1, v0}, Lcom/amazon/identity/auth/device/dn;->a(Ljava/lang/Class;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 399
    sget-object v0, Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 400
    new-instance v0, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {v0, p5}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 401
    iget-object p5, p0, Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication;->aY:Lcom/amazon/identity/auth/device/dn;

    const-class v1, Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication$GetCookiesForActorCommand;

    .line 402
    invoke-static {p1, p2, p3, p4, p6}, Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication$GetCookiesForActorCommand;->parametersToBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;

    move-result-object p1

    .line 401
    invoke-virtual {p5, v1, p1, v0}, Lcom/amazon/identity/auth/device/dn;->a(Ljava/lang/Class;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)V

    return-object v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 1
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

    .line 327
    new-instance p5, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {p5, p4}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 329
    iget-object p4, p0, Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication;->aY:Lcom/amazon/identity/auth/device/dn;

    const-class v0, Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication$GetTokenCommand;

    .line 330
    invoke-static {p1, p2, p3}, Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication$GetTokenCommand;->parametersToBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 329
    invoke-virtual {p4, v0, p1, p5}, Lcom/amazon/identity/auth/device/dn;->a(Ljava/lang/Class;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)V

    return-object p5
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 2
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

    .line 343
    new-instance v0, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {v0, p4}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 345
    iget-object p4, p0, Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication;->aY:Lcom/amazon/identity/auth/device/dn;

    const-class v1, Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication$GetCookiesCommand;

    .line 346
    invoke-static {p1, p2, p3, p5}, Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication$GetCookiesCommand;->parametersToBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;

    move-result-object p1

    .line 345
    invoke-virtual {p4, v1, p1, v0}, Lcom/amazon/identity/auth/device/dn;->a(Ljava/lang/Class;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)V

    return-object v0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 2
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

    .line 359
    sget-object v0, Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 360
    new-instance v0, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {v0, p4}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 362
    iget-object p4, p0, Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication;->aY:Lcom/amazon/identity/auth/device/dn;

    const-class v1, Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication$InvalidateCookiesCommand;

    .line 363
    invoke-static {p1, p2, p3, p5}, Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication$InvalidateCookiesCommand;->parametersToBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;

    move-result-object p1

    .line 362
    invoke-virtual {p4, v1, p1, v0}, Lcom/amazon/identity/auth/device/dn;->a(Ljava/lang/Class;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)V

    return-object v0
.end method
