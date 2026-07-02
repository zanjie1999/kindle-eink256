.class public Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;
.super Ljava/lang/Object;
.source "AccountSecretProvider.java"

# interfaces
.implements Lcom/amazon/kindle/services/authentication/IAccountSecretProvider;


# static fields
.field private static final SERIALIZATION_SEPARATOR:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final backupStorage:Lcom/amazon/kindle/persistence/ISecureStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/amazon/kindle/persistence/AndroidSecureStorage;->create(Landroid/content/Context;)Lcom/amazon/kindle/persistence/AndroidSecureStorage;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->backupStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    return-void
.end method

.method private declared-synchronized appendAccountSecret(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    if-eqz p1, :cond_3

    .line 65
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 66
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->getAccountSecrets()Ljava/util/Vector;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 68
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v1, ","

    .line 71
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v0, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 74
    sget-object v3, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->TAG:Ljava/lang/String;

    const-string v4, "We tried to add the same secret twice.  This isn\'t the end of the world."

    invoke-static {v3, v4}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 84
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->serializeSecrets(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kindle.account.tokens"

    .line 87
    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/persistence/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 90
    :cond_3
    :goto_2
    monitor-exit p0

    return-void
.end method

.method private deserializeSecrets(Ljava/lang/String;)Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 196
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, ","

    .line 197
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 199
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;
    .locals 1

    .line 209
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object v0

    return-object v0
.end method

.method private serializeSecrets(Ljava/util/Vector;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 183
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 184
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const-string v2, ","

    .line 186
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public declared-synchronized addSecretsFromTodo(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 48
    :try_start_0
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 49
    monitor-exit p0

    return-void

    .line 53
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->clearSecrets()V

    .line 56
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->appendAccountSecret(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearSecrets()V
    .locals 2

    monitor-enter p0

    .line 94
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "kindle.account.tokens"

    .line 96
    invoke-interface {v0, v1}, Lcom/amazon/kindle/persistence/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAccountSecrets()Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 113
    :try_start_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 119
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->backupStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    const-string v2, "kindle.account.tokens"

    invoke-interface {v1, v2}, Lcom/amazon/kindle/persistence/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->deserializeSecrets(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 126
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 128
    :try_start_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/services/authentication/TokenKey;->LEGACY_ACCOUNT_SECRETS:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v1, v2}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 131
    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->deserializeSecrets(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 132
    invoke-direct {p0}, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "kindle.account.tokens"

    .line 134
    invoke-interface {v2, v3, v1}, Lcom/amazon/kindle/persistence/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 139
    :try_start_2
    sget-object v2, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->TAG:Ljava/lang/String;

    const-string v3, "Error retrieving account secrets from legacy SSO."

    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 157
    invoke-direct {p0}, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_2

    .line 160
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_3
    const-string v2, "kindle.account.tokens"

    .line 165
    invoke-interface {v1, v2}, Lcom/amazon/kindle/persistence/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 167
    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->deserializeSecrets(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    .line 170
    :try_start_4
    sget-object v2, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->TAG:Ljava/lang/String;

    const-string v3, "Error retrieving account secrets from MAP"

    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 175
    sget-object v1, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->TAG:Ljava/lang/String;

    const-string v2, "Failed to find secrets, secret lookup returned empty."

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 178
    :cond_4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
