.class public Lcom/amazon/identity/auth/device/ad;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/z;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.ad"


# instance fields
.field private final cv:Lcom/amazon/identity/auth/device/em;

.field private final mContext:Landroid/content/Context;

.field private final s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

.field private final x:Lcom/amazon/identity/auth/device/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/ed;)V
    .locals 3

    .line 47
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ab;->g(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ab;

    move-result-object v0

    new-instance v1, Lcom/amazon/identity/auth/device/em;

    invoke-direct {v1, p1}, Lcom/amazon/identity/auth/device/em;-><init>(Lcom/amazon/identity/auth/device/ed;)V

    new-instance v2, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-direct {v2, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amazon/identity/auth/device/ad;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/ab;Lcom/amazon/identity/auth/device/em;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/ab;Lcom/amazon/identity/auth/device/em;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ad;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/amazon/identity/auth/device/ad;->x:Lcom/amazon/identity/auth/device/ab;

    .line 59
    iput-object p3, p0, Lcom/amazon/identity/auth/device/ad;->cv:Lcom/amazon/identity/auth/device/em;

    .line 60
    iput-object p4, p0, Lcom/amazon/identity/auth/device/ad;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    .line 119
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.amazon.dcp.sso.action.account.added"

    .line 121
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.amazon.dcp.sso.action.secondary.account.added"

    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.amazon.dcp.sso.action.account.removed"

    .line 123
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.amazon.dcp.sso.action.secondary.account.removed"

    .line 124
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.amazon.identity.auth.account.added.on.device"

    .line 125
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.amazon.identity.auth.account.removed.on.device"

    .line 126
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.amazon.dcp.sso.action.AmazonAccountPropertyService.property.changed"

    .line 127
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.amazon.dcp.sso.broadcast.CORPFMHasChanged"

    .line 128
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    :cond_0
    sget-object v1, Lcom/amazon/identity/auth/device/ad;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Using foreground priority for "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 138
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private a(Landroid/content/Intent;Ljava/lang/String;Lcom/amazon/identity/auth/device/da;)V
    .locals 3

    .line 108
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 110
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/da;->getUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "Sending broadcast %s to user %s"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/ad;->a(Landroid/content/Intent;)V

    .line 114
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ad;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/ix;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/amazon/identity/auth/device/da;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/amazon/identity/auth/device/da;)Z
    .locals 5

    .line 211
    sget-object v0, Lcom/amazon/identity/auth/device/ad;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/da;->getUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "Directed-id to fire broadcast to : %s; User-id : %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 215
    sget-object p1, Lcom/amazon/identity/auth/device/ad;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return v4

    .line 220
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/da;->getUserId()I

    move-result p2

    invoke-static {p2}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PrimaryUserMappingType;->createPrimaryMappingForProfile(I)Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PrimaryUserMappingType;

    move-result-object p2

    .line 221
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ad;->x:Lcom/amazon/identity/auth/device/ab;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/ab;->doesAccountHaveMapping(Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 223
    sget-object p1, Lcom/amazon/identity/auth/device/ad;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return v4

    .line 230
    :cond_1
    iget-object p2, p0, Lcom/amazon/identity/auth/device/ad;->x:Lcom/amazon/identity/auth/device/ab;

    invoke-virtual {p2, p1}, Lcom/amazon/identity/auth/device/ab;->Q(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v4

    :cond_2
    return v2
.end method


# virtual methods
.method public N(Ljava/lang/String;)Z
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ad;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->C(Ljava/lang/String;)Z

    move-result p1

    .line 196
    sget-object v0, Lcom/amazon/identity/auth/device/ad;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deregisterAllAccountsOnAccountRemoval returns: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public a(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ad;->cv:Lcom/amazon/identity/auth/device/em;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/em;->ef()Lcom/amazon/identity/auth/device/da;

    move-result-object v0

    .line 100
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/ad;->a(Landroid/content/Intent;Ljava/lang/String;Lcom/amazon/identity/auth/device/da;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ad;->cv:Lcom/amazon/identity/auth/device/em;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/em;->eg()Lcom/amazon/identity/auth/device/da;

    move-result-object v0

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/ad;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/da;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, p3

    const/4 p2, 0x1

    .line 89
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/da;->getUserId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "Not Sending broadcast %s to user %s since it is not visible"

    .line 86
    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 93
    :cond_0
    invoke-direct {p0, p2, p3, v0}, Lcom/amazon/identity/auth/device/ad;->a(Landroid/content/Intent;Ljava/lang/String;Lcom/amazon/identity/auth/device/da;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Set;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 264
    iget-object p1, p0, Lcom/amazon/identity/auth/device/ad;->cv:Lcom/amazon/identity/auth/device/em;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/em;->eg()Lcom/amazon/identity/auth/device/da;

    move-result-object p1

    if-nez p1, :cond_0

    .line 268
    sget-object p1, Lcom/amazon/identity/auth/device/ad;->TAG:Ljava/lang/String;

    const-string p2, "Can not send broadcast if current AndroidUser is null"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 272
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 274
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/da;->getUserId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 275
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    invoke-direct {p0, p3, p4, p1}, Lcom/amazon/identity/auth/device/ad;->a(Landroid/content/Intent;Ljava/lang/String;Lcom/amazon/identity/auth/device/da;)V

    .line 278
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;I)[Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    .line 145
    new-instance v1, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PackageMappingType;

    invoke-direct {v1, p1}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PackageMappingType;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    .line 146
    invoke-static {p2}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PrimaryUserMappingType;->createPrimaryMappingForProfile(I)Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PrimaryUserMappingType;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    return-object v0
.end method

.method public b(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 6

    const-string/jumbo v0, "profile_mapping"

    .line 1240
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1242
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const-string v0, "calling_profile"

    .line 1245
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1247
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1250
    :cond_1
    sget-object v0, Lcom/amazon/identity/auth/device/ad;->TAG:Ljava/lang/String;

    const-string v1, "No calling profile or mapping profile given. Defaulting to main profile"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    invoke-static {}, Lcom/amazon/identity/auth/device/da;->cx()I

    move-result v0

    .line 66
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 68
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2235
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ad;->x:Lcom/amazon/identity/auth/device/ab;

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PrimaryUserMappingType;->createPrimaryMappingForProfile(I)Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PrimaryUserMappingType;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v4}, Lcom/amazon/identity/auth/device/ab;->getAccountForMapping([Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_3

    const-string v1, "deregisterall_register_this_as_primary"

    .line 69
    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 72
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.amazon.dcp.sso.property.account.extratokens.account_profiles"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public b(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 5

    .line 169
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/ad;->a(Landroid/content/Intent;)V

    .line 170
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ad;->cv:Lcom/amazon/identity/auth/device/em;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/em;->ef()Lcom/amazon/identity/auth/device/da;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ad;->cv:Lcom/amazon/identity/auth/device/em;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/em;->eg()Lcom/amazon/identity/auth/device/da;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 174
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 175
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/da;->getUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 176
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/da;->getUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string v3, "Sending broadcast %s to current user %s and main user %s"

    .line 172
    invoke-static {v3, v2}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    invoke-direct {p0, p1, v1}, Lcom/amazon/identity/auth/device/ad;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/da;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 180
    iget-object p1, p0, Lcom/amazon/identity/auth/device/ad;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v1}, Lcom/amazon/identity/auth/device/ix;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/amazon/identity/auth/device/da;)V

    .line 183
    :cond_0
    sget-object p1, Lcom/amazon/identity/auth/device/ad;->TAG:Ljava/lang/String;

    const-string p3, "Sending broadcast to User 0 quick setting bar."

    invoke-static {p1, p3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string p2, "com.android.systemui"

    .line 185
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    iget-object p2, p0, Lcom/amazon/identity/auth/device/ad;->mContext:Landroid/content/Context;

    const/4 p3, 0x0

    invoke-static {p2, p1, p3, v0}, Lcom/amazon/identity/auth/device/ix;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/amazon/identity/auth/device/da;)V

    return-void
.end method

.method public z()Ljava/lang/String;
    .locals 6

    .line 152
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ad;->cv:Lcom/amazon/identity/auth/device/em;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/em;->eg()Lcom/amazon/identity/auth/device/da;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ad;->x:Lcom/amazon/identity/auth/device/ab;

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    .line 154
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/da;->getUserId()I

    move-result v4

    invoke-static {v4}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PrimaryUserMappingType;->createPrimaryMappingForProfile(I)Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PrimaryUserMappingType;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Lcom/amazon/identity/auth/device/ab;->getAccountForMapping([Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 158
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/da;->getUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    aput-object v1, v3, v2

    const-string v0, "Detected visible user %s associated to account %s"

    .line 156
    invoke-static {v0, v3}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method
