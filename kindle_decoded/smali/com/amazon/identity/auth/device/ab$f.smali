.class Lcom/amazon/identity/auth/device/ab$f;
.super Lcom/amazon/identity/auth/device/ab$d;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;)V
    .locals 0

    .line 486
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/ab$d;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;)V

    return-void
.end method

.method public static b(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/ed;",
            "Lcom/amazon/identity/auth/accounts/AmazonAccountManager;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/ab$f;",
            ">;"
        }
    .end annotation

    .line 493
    new-instance v0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;-><init>(Lcom/amazon/identity/auth/device/ed;)V

    const-string v1, "com.amazon.dcp.sso.property.account.extratokens.account_packages"

    .line 496
    invoke-static {v0, p2, v1}, Lcom/amazon/identity/auth/device/ab$d;->a(Lcom/amazon/identity/auth/device/gc;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p2

    .line 498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 500
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 502
    new-instance v2, Lcom/amazon/identity/auth/device/ab$f;

    new-instance v3, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PackageMappingType;

    invoke-direct {v3, v1}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PackageMappingType;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, p0, v3, p1}, Lcom/amazon/identity/auth/device/ab$f;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public R()Z
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab$d;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PackageMappingType;->isSupportedOnThisPlatform(Landroid/content/Context;)Z

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

    .line 519
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

    const-string v5, "%s PackageMappingLogic will notify other apps by sending action %s"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    new-array v0, v4, [Lcom/amazon/identity/auth/device/ab$e;

    .line 520
    new-instance v1, Lcom/amazon/identity/auth/device/ab$e;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/ab$d;->cp:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    .line 521
    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v4, v5}, Lcom/amazon/identity/auth/device/ab$e;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    aput-object v1, v0, v3

    .line 520
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
