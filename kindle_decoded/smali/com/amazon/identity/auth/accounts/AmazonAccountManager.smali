.class public Lcom/amazon/identity/auth/accounts/AmazonAccountManager;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.accounts.AmazonAccountManager"


# instance fields
.field private final w:Lcom/amazon/identity/auth/device/gc;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 59
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ed;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;-><init>(Lcom/amazon/identity/auth/device/gc;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/gc;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->w:Lcom/amazon/identity/auth/device/gc;

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.amazon.dcp.sso.property.secondary"

    .line 184
    invoke-virtual {p0, p1, v0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public B(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.amazon.dcp.sso.property.sessionuser"

    .line 192
    invoke-virtual {p0, p1, v0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public C(Ljava/lang/String;)Z
    .locals 1

    .line 201
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->D(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->A(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public D(Ljava/lang/String;)Z
    .locals 2

    .line 210
    invoke-virtual {p0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->getAccounts()Ljava/util/Set;

    move-result-object v0

    .line 211
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 213
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public E(Ljava/lang/String;)Z
    .locals 5

    .line 229
    invoke-virtual {p0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->getAccounts()Ljava/util/Set;

    move-result-object v0

    .line 230
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 232
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.amazon.dcp.sso.property.account.ACCOUNT_STATUS"

    .line 1247
    invoke-virtual {p0, p1, v1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1248
    invoke-static {v1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;->fromValue(Ljava/lang/String;)Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;

    move-result-object v1

    .line 1249
    sget-object v3, Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;->Deregistering:Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;

    const/4 v4, 0x1

    if-ne v1, v3, :cond_1

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "AccountRemovedBecauseDeregisteringState"

    .line 1251
    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1252
    sget-object v1, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->TAG:Ljava/lang/String;

    const-string v2, "Removing account from database since database is stuck in bad state. Account status is Deregistering and registerAccount API is called"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    iget-object v1, p0, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->w:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v1, p1}, Lcom/amazon/identity/auth/device/gc;->G(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_0

    return v4

    :cond_2
    return v2
.end method

.method public F(Ljava/lang/String;)Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;
    .locals 1

    const-string v0, "com.amazon.dcp.sso.property.account.ACCOUNT_STATUS"

    .line 286
    invoke-virtual {p0, p1, v0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-static {v0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;->fromValue(Ljava/lang/String;)Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 296
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->D(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 298
    sget-object p1, Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;->Registered:Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;

    return-object p1

    .line 302
    :cond_1
    sget-object p1, Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;->NotFound:Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;

    return-object p1
.end method

.method public G(Ljava/lang/String;)V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->w:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/gc;->G(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;)V
    .locals 1

    .line 309
    invoke-virtual {p2}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;->getValue()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.amazon.dcp.sso.property.account.ACCOUNT_STATUS"

    invoke-virtual {p0, p1, v0, p2}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->w:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/gc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->w:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/gc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
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

    .line 105
    sget-object v0, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MAP Accounts number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->w:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/gc;->getAccounts()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->w:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gc;->getAccounts()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public m()Z
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 4

    .line 83
    invoke-virtual {p0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->o()Ljava/util/Set;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    return-object v2

    .line 89
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 91
    invoke-virtual {p0, v1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->A(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    :cond_2
    return-object v2
.end method

.method public o()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->getAccounts()Ljava/util/Set;

    move-result-object v0

    .line 112
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 113
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 115
    invoke-virtual {p0, v2}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->x(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 117
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public p()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 138
    invoke-virtual {p0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->getAccounts()Ljava/util/Set;

    move-result-object v1

    .line 139
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 141
    invoke-virtual {p0, v2}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->B(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public q()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->getAccounts()Ljava/util/Set;

    move-result-object v0

    .line 168
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 169
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 171
    invoke-virtual {p0, v2}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->A(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public x(Ljava/lang/String;)Z
    .locals 1

    .line 126
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->F(Ljava/lang/String;)Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;

    move-result-object p1

    .line 127
    sget-object v0, Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;->NotFound:Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;->Deregistering:Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public y(Ljava/lang/String;)V
    .locals 2

    const-string v0, "com.amazon.dcp.sso.property.sessionuser"

    const-string/jumbo v1, "true"

    .line 153
    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 2

    const-string v0, "com.amazon.dcp.sso.property.sessionuser"

    const/4 v1, 0x0

    .line 159
    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
