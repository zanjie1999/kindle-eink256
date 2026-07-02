.class Lcom/amazon/identity/auth/device/ab$b;
.super Lcom/amazon/identity/auth/device/ab$d;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;)V
    .locals 0

    .line 532
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/ab$d;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;)V

    return-void
.end method

.method public static a(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/ed;",
            "Lcom/amazon/identity/auth/accounts/AmazonAccountManager;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/ab$b;",
            ">;"
        }
    .end annotation

    .line 539
    new-instance v0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;-><init>(Lcom/amazon/identity/auth/device/ed;)V

    const-string v1, "com.amazon.dcp.sso.property.account.extratokens.custom_keys"

    .line 542
    invoke-static {v0, p2, v1}, Lcom/amazon/identity/auth/device/ab$d;->a(Lcom/amazon/identity/auth/device/gc;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p2

    .line 544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 546
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 548
    new-instance v2, Lcom/amazon/identity/auth/device/ab$b;

    new-instance v3, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$CustomKeyMappingType;

    invoke-direct {v3, v1}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$CustomKeyMappingType;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, p0, v3, p1}, Lcom/amazon/identity/auth/device/ab$b;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public R()Z
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab$d;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$CustomKeyMappingType;->isSupportedOnThisPlatform(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public S()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/ab$e;",
            ">;"
        }
    .end annotation

    .line 565
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab$d;->cp:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingValue()Ljava/lang/String;

    move-result-object v0

    .line 567
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.amazon.identity.action.ACCOUNT_FOR_KEY."

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 569
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "account_key"

    .line 570
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/identity/auth/device/ab$e;

    .line 572
    new-instance v3, Lcom/amazon/identity/auth/device/ab$e;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v2}, Lcom/amazon/identity/auth/device/ab$e;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x0

    aput-object v3, v0, v1

    new-instance v1, Lcom/amazon/identity/auth/device/ab$e;

    const-string v3, "com.amazon.identity.action.ACCOUNT_FOR_KEY"

    invoke-direct {v1, v3, v4, v2}, Lcom/amazon/identity/auth/device/ab$e;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
