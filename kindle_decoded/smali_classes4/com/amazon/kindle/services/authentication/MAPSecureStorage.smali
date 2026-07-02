.class Lcom/amazon/kindle/services/authentication/MAPSecureStorage;
.super Ljava/lang/Object;
.source "MAPSecureStorage.java"

# interfaces
.implements Lcom/amazon/kindle/persistence/ISecureStorage;


# static fields
.field private static KEY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/services/authentication/TokenKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final accountProvider:Lcom/amazon/kindle/services/authentication/IAccountProvider;

.field private final secondaryStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

.field private final tokenCache:Lcom/amazon/kindle/services/authentication/ITokenCache;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 22
    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->ACCOUNT_SECRETS:Lcom/amazon/kindle/services/authentication/TokenKey;

    const-string v2, "kindle.account.tokens"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/services/authentication/MAPSecureStorage;->KEY_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/persistence/ISecureStorage;Lcom/amazon/kindle/services/authentication/ITokenCache;Lcom/amazon/kindle/services/authentication/IAccountProvider;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/MAPSecureStorage;->secondaryStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    .line 33
    iput-object p2, p0, Lcom/amazon/kindle/services/authentication/MAPSecureStorage;->tokenCache:Lcom/amazon/kindle/services/authentication/ITokenCache;

    .line 34
    iput-object p3, p0, Lcom/amazon/kindle/services/authentication/MAPSecureStorage;->accountProvider:Lcom/amazon/kindle/services/authentication/IAccountProvider;

    return-void
.end method

.method private getAccount()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPSecureStorage;->accountProvider:Lcom/amazon/kindle/services/authentication/IAccountProvider;

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountProvider;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPSecureStorage;->accountProvider:Lcom/amazon/kindle/services/authentication/IAccountProvider;

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountProvider;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPSecureStorage;->accountProvider:Lcom/amazon/kindle/services/authentication/IAccountProvider;

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountProvider;->getPrimaryAmazonAccount()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 64
    sget-object v0, Lcom/amazon/kindle/services/authentication/MAPSecureStorage;->KEY_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/services/authentication/TokenKey;

    if-eqz v0, :cond_0

    .line 66
    iget-object p1, p0, Lcom/amazon/kindle/services/authentication/MAPSecureStorage;->tokenCache:Lcom/amazon/kindle/services/authentication/ITokenCache;

    invoke-direct {p0}, Lcom/amazon/kindle/services/authentication/MAPSecureStorage;->getAccount()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/amazon/kindle/services/authentication/ITokenCache;->getValue(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPSecureStorage;->secondaryStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/persistence/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    return-object p1
.end method

.method public removeItemWithKey(Ljava/lang/String;)Z
    .locals 1

    .line 81
    sget-object v0, Lcom/amazon/kindle/services/authentication/MAPSecureStorage;->KEY_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/services/authentication/TokenKey;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPSecureStorage;->secondaryStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/persistence/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 39
    sget-object v0, Lcom/amazon/kindle/services/authentication/MAPSecureStorage;->KEY_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/services/authentication/TokenKey;

    if-eqz v0, :cond_1

    .line 47
    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/MAPSecureStorage;->secondaryStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    invoke-interface {v1, p1, p2}, Lcom/amazon/kindle/persistence/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 50
    invoke-direct {p0}, Lcom/amazon/kindle/services/authentication/MAPSecureStorage;->getAccount()Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/MAPSecureStorage;->tokenCache:Lcom/amazon/kindle/services/authentication/ITokenCache;

    invoke-interface {v1, v0, p2, p1}, Lcom/amazon/kindle/services/authentication/ITokenCache;->setValue(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPSecureStorage;->secondaryStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/persistence/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
