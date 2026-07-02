.class Lcom/amazon/identity/auth/device/ab$h;
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
    name = "h"
.end annotation


# instance fields
.field private final cq:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

.field private final cs:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;

.field private final ct:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

.field private final o:Lcom/amazon/identity/auth/device/ed;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;)V
    .locals 1

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ab$h;->o:Lcom/amazon/identity/auth/device/ed;

    .line 593
    instance-of v0, p2, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;

    if-eqz v0, :cond_0

    .line 595
    check-cast p2, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/ab$h;->cs:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;

    .line 602
    new-instance p2, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    invoke-direct {p2, p1}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;-><init>(Lcom/amazon/identity/auth/device/ed;)V

    iput-object p2, p0, Lcom/amazon/identity/auth/device/ab$h;->cq:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    .line 603
    iput-object p3, p0, Lcom/amazon/identity/auth/device/ab$h;->ct:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    return-void

    .line 599
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SessionPackageMappingLogic only allows SessionPackageMappingType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private U()Lorg/json/JSONObject;
    .locals 3

    .line 747
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab$h;->ct:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->getAccounts()Ljava/util/Set;

    move-result-object v0

    .line 748
    invoke-static {v0}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 750
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 752
    invoke-direct {p0, v1, v2}, Lcom/amazon/identity/auth/device/ab$h;->b(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 919
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab$h;->cs:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingType()Ljava/lang/String;

    move-result-object v0

    .line 920
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ab$h;->cs:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingValue()Ljava/lang/String;

    move-result-object v1

    .line 921
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ab$h;->cs:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;->getSessionPackages()Ljava/util/Set;

    move-result-object v2

    .line 923
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    if-nez p2, :cond_0

    .line 926
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v3, "Setting a new session package mapping."

    invoke-static {p2, v3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Setting a new session package mapping for account: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 928
    iget-object p2, p0, Lcom/amazon/identity/auth/device/ab$h;->cq:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    invoke-virtual {p2, p1, v0, v1}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 935
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v4, "packages"

    .line 937
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 938
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    .line 941
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    .line 2028
    :cond_2
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p2

    :goto_1
    if-eqz p2, :cond_3

    .line 946
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v2, "No packages changes to the session package mapping."

    invoke-static {p2, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    iget-object p2, p0, Lcom/amazon/identity/auth/device/ab$h;->cq:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    invoke-virtual {p2, p1, v0, v1}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 953
    :cond_3
    iget-object p2, p0, Lcom/amazon/identity/auth/device/ab$h;->cq:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    invoke-virtual {p2, p1, v0, v1}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const-string v0, "Session package mapping changed. it changed from %s to %s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 2042
    invoke-static {v2}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_4

    move-object v2, v3

    goto :goto_2

    .line 2047
    :cond_4
    invoke-static {v3}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 2052
    :cond_5
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2053
    invoke-interface {p1, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 2055
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2056
    invoke-interface {p2, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 2058
    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object v2, p1

    .line 957
    :goto_2
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The different packages compared with old session packages mapping: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-object v2
.end method

.method private b(Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 2

    .line 771
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab$h;->cs:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingType()Ljava/lang/String;

    move-result-object v0

    .line 772
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ab$h;->cq:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    invoke-virtual {v1, p1, v0}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 777
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const-string/jumbo p1, "owner"

    .line 782
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 783
    iget-object p2, p0, Lcom/amazon/identity/auth/device/ab$h;->cs:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    .line 784
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 786
    :cond_0
    new-instance p2, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingAlreadySetException;

    invoke-direct {p2, p1}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingAlreadySetException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception p1

    .line 793
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v0, "JSONException when trying to de-serialize the session package mapping json"

    invoke-static {p2, v0, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Ljava/util/Set;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/ab$e;",
            ">;"
        }
    .end annotation

    .line 844
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 845
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 847
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const-string v5, "Going to notify package: %s about the account change:"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 848
    new-instance v2, Lcom/amazon/identity/auth/device/ab$e;

    const/4 v3, 0x0

    const-string v4, "com.amazon.identity.action.ACCOUNT_FOR_PACKAGE_CHANGED"

    invoke-direct {v2, v4, v1, v3}, Lcom/amazon/identity/auth/device/ab$e;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private c(Ljava/lang/String;Z)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 965
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/ab$h;->b(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 968
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Session package mapping doesn\'t exist for account: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-object v0

    .line 972
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v2, "packages"

    .line 974
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 975
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 978
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 980
    :cond_1
    iget-object p2, p0, Lcom/amazon/identity/auth/device/ab$h;->cs:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingType()Ljava/lang/String;

    move-result-object p2

    .line 981
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ab$h;->cq:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    invoke-virtual {v2, p1, p2, v0}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public R()Z
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab$h;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;->isSupportedOnThisPlatform(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public S(Ljava/lang/String;)Z
    .locals 5

    .line 623
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab$h;->cq:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ab$h;->cs:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 624
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 628
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "packages"

    .line 629
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 632
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 635
    iget-object v3, p0, Lcom/amazon/identity/auth/device/ab$h;->cs:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;

    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 644
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "JSONException when trying to de-serialize the session package mapping json"

    invoke-static {v0, v2, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return v1
.end method

.method public T()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/ab$e;",
            ">;"
        }
    .end annotation

    .line 728
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab$h;->ct:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->getAccounts()Ljava/util/Set;

    move-result-object v0

    .line 729
    invoke-static {v0}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 731
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ab$h;->cs:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingType()Ljava/lang/String;

    move-result-object v1

    .line 732
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 734
    iget-object v3, p0, Lcom/amazon/identity/auth/device/ab$h;->cq:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    invoke-virtual {v3, v2, v1}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    .line 737
    invoke-virtual {p0, v2, v0}, Lcom/amazon/identity/auth/device/ab$h;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 741
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public T(Ljava/lang/String;)Ljava/util/List;
    .locals 7
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

    const/4 v0, 0x0

    .line 1855
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ab$h;->ct:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->getAccounts()Ljava/util/Set;

    move-result-object v1

    .line 1878
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1879
    invoke-static {v1}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1882
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/ab$h;->U()Lorg/json/JSONObject;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_1

    :try_start_1
    const-string/jumbo v4, "owner"

    .line 1990
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1991
    iget-object v4, p0, Lcom/amazon/identity/auth/device/ab$h;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 1993
    :cond_0
    new-instance v4, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingAlreadySetException;

    invoke-direct {v4, v3}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingAlreadySetException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v3

    .line 1998
    :try_start_2
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JSONException when trying to get session package mapping owner"

    invoke-static {v4, v5, v3}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1890
    :cond_1
    :goto_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1891
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1893
    invoke-direct {p0, v5, v0}, Lcom/amazon/identity/auth/device/ab$h;->b(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1896
    :cond_2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1899
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1902
    invoke-direct {p0, v4, v3}, Lcom/amazon/identity/auth/device/ab$h;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v4

    goto :goto_3

    .line 1906
    :cond_4
    invoke-direct {p0, v4, v0}, Lcom/amazon/identity/auth/device/ab$h;->c(Ljava/lang/String;Z)Ljava/util/Set;

    move-result-object v4

    .line 1908
    :goto_3
    invoke-static {v4}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1910
    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 661
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JSONException happened when trying to parse the session package mapping json"

    invoke-static {v1, v2, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    .line 664
    :cond_5
    invoke-static {v2}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result p1

    const/4 v1, 0x1

    const/4 v3, 0x2

    if-nez p1, :cond_6

    .line 666
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/ab$h;->cs:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;

    .line 668
    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab$h;->cs:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;

    .line 669
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "Notifying of user change of type %s set. Account for profile %s changed."

    .line 666
    invoke-static {p1, v0, v3}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 671
    invoke-direct {p0, v2}, Lcom/amazon/identity/auth/device/ab$h;->c(Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 673
    :cond_6
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/ab$h;->cs:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;

    .line 675
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab$h;->cs:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;

    .line 676
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Setting mapping type %s with value %s did not change. Not notifing."

    .line 673
    invoke-static {p1, v0, v2}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 677
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

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

    const/4 v0, 0x1

    .line 683
    invoke-virtual {p0, p1, v0}, Lcom/amazon/identity/auth/device/ab$h;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method V()Ljava/lang/String;
    .locals 3

    .line 801
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/ab$h;->U()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string/jumbo v1, "owner"

    .line 806
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 811
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JSONException happens when trying get owner of the session package mapping."

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
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

    const/4 v0, 0x0

    .line 690
    invoke-virtual {p0, p1, v0}, Lcom/amazon/identity/auth/device/ab$h;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method W()Landroid/content/Intent;
    .locals 4

    .line 818
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/ab$h;->U()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string/jumbo v1, "owner"

    .line 823
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "activity"

    .line 824
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 825
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 827
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.amazon.identity.auth.device.session_package_mapping.remove.action"

    .line 828
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 829
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 836
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JSONException happens when trying get owner and remove activity of the session package mapping."

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/ab$e;",
            ">;"
        }
    .end annotation

    .line 704
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/ab$h;->c(Ljava/lang/String;Z)Ljava/util/Set;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 708
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v0, "JSONException happened when trying to parse the session package mapping json"

    invoke-static {p2, v0, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 711
    :goto_0
    invoke-static {p1}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez p2, :cond_0

    .line 713
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object p2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/ab$h;->cs:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;

    .line 715
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ab$h;->cs:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;

    .line 716
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingValue()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "Notifying of user change of type %s removed. Account for profile %s changed."

    .line 713
    invoke-static {p2, v0, v2}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 717
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/ab$h;->c(Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 719
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ab$h;->cs:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;

    .line 721
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ab$h;->cs:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;

    .line 722
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingValue()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    const-string v0, "Cannot remove mapping type %s with value %s did not change. Not notifing."

    .line 719
    invoke-static {p1, v0, p2}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 723
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method
