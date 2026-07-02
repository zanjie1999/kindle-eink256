.class Lcom/amazon/identity/auth/device/ab$i;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# instance fields
.field private final be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

.field private final cu:Lcom/amazon/identity/auth/accounts/SessionUserChanger;

.field private final o:Lcom/amazon/identity/auth/device/ed;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ab$i;->o:Lcom/amazon/identity/auth/device/ed;

    .line 153
    iput-object p2, p0, Lcom/amazon/identity/auth/device/ab$i;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    .line 154
    new-instance p1, Lcom/amazon/identity/auth/accounts/SessionUserChanger;

    invoke-direct {p1, p2}, Lcom/amazon/identity/auth/accounts/SessionUserChanger;-><init>(Lcom/amazon/identity/auth/accounts/AmazonAccountManager;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ab$i;->cu:Lcom/amazon/identity/auth/accounts/SessionUserChanger;

    return-void
.end method

.method private d(Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/ab$e;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 230
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ab$i;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "com.amazon.identity.action.ACCOUNT_FOR_PACKAGE_CHANGED"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v4, "%s creates changed notification and will send action %s"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    new-array p1, v3, [Lcom/amazon/identity/auth/device/ab$e;

    .line 231
    new-instance v0, Lcom/amazon/identity/auth/device/ab$e;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/ab$e;-><init>(Ljava/lang/String;)V

    aput-object v0, p1, v2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 234
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method


# virtual methods
.method public R()Z
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab$i;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionUserMappingType;->isSupportedOnThisPlatform(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public S(Ljava/lang/String;)Z
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab$i;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->B(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public T(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/ab$e;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab$i;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->B(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Account is already a session user"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab$i;->cu:Lcom/amazon/identity/auth/accounts/SessionUserChanger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/amazon/identity/auth/device/hp;->a([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/accounts/SessionUserChanger;->d(Ljava/util/Set;)Ljava/util/Set;

    .line 192
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab$i;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->B(Ljava/lang/String;)Z

    move-result p1

    .line 194
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/ab$i;->d(Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public U(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/ab$e;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab$i;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->B(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 202
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Account is not a session user, so cannot remove"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 206
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 207
    iget-object p1, p0, Lcom/amazon/identity/auth/device/ab$i;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->n()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/ab$i;->T(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public V(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/ab$e;",
            ">;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab$i;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->B(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Account is not a session user, so cannot remove"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 219
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab$i;->cu:Lcom/amazon/identity/auth/accounts/SessionUserChanger;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/accounts/SessionUserChanger;->ab(Ljava/lang/String;)Ljava/util/Set;

    .line 222
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab$i;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->B(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 223
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/ab$i;->d(Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
