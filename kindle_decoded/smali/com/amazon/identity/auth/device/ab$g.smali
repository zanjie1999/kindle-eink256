.class Lcom/amazon/identity/auth/device/ab$g;
.super Lcom/amazon/identity/auth/device/ab$d;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;)V
    .locals 0

    .line 432
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/ab$d;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;)V

    return-void
.end method

.method public static c(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/ed;",
            "Lcom/amazon/identity/auth/accounts/AmazonAccountManager;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/ab$g;",
            ">;"
        }
    .end annotation

    .line 439
    new-instance v0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;-><init>(Lcom/amazon/identity/auth/device/ed;)V

    const-string v1, "com.amazon.dcp.sso.property.account.extratokens.account_profiles"

    .line 442
    invoke-static {v0, p2, v1}, Lcom/amazon/identity/auth/device/ab$d;->a(Lcom/amazon/identity/auth/device/gc;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p2

    .line 444
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 446
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 448
    invoke-static {v1}, Lcom/amazon/identity/auth/device/jb;->dz(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    .line 451
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "%s is not a valid profile id"

    invoke-static {v2, v1, v3}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 455
    :cond_0
    new-instance v1, Lcom/amazon/identity/auth/device/ab$g;

    .line 456
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PrimaryUserMappingType;->createPrimaryMappingForProfile(I)Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PrimaryUserMappingType;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/amazon/identity/auth/device/ab$g;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;)V

    .line 455
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public R()Z
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab$d;->o:Lcom/amazon/identity/auth/device/ed;

    const-string/jumbo v1, "sso_platform"

    .line 467
    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/ds;

    .line 469
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->dq()Z

    move-result v0

    return v0
.end method

.method public S()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/ab$e;",
            ">;"
        }
    .end annotation

    .line 475
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ab$d;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "com.amazon.identity.action.ACCOUNT_FOR_PACKAGE_CHANGED"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v5, "%s ProfilePrimaryMappingLogic will notify other apps by sending action %s"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    new-array v0, v4, [Lcom/amazon/identity/auth/device/ab$e;

    .line 476
    new-instance v1, Lcom/amazon/identity/auth/device/ab$e;

    invoke-direct {v1, v2}, Lcom/amazon/identity/auth/device/ab$e;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
