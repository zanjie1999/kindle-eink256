.class public final Lcom/amazon/kindle/com/amazonaws/auth/SignerFactory;
.super Ljava/lang/Object;
.source "SignerFactory.java"


# static fields
.field private static final NO_OP_SIGNER:Ljava/lang/String; = "NoOpSignerType"

.field private static final QUERY_STRING_SIGNER:Ljava/lang/String; = "QueryStringSignerType"

.field private static final SIGNERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/kindle/com/amazonaws/auth/Signer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final VERSION_FOUR_SIGNER:Ljava/lang/String; = "AWS4SignerType"

.field private static final VERSION_THREE_SIGNER:Ljava/lang/String; = "AWS3SignerType"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/auth/SignerFactory;->SIGNERS:Ljava/util/Map;

    .line 36
    const-class v1, Lcom/amazon/kindle/com/amazonaws/auth/QueryStringSigner;

    const-string v2, "QueryStringSignerType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/auth/SignerFactory;->SIGNERS:Ljava/util/Map;

    const-class v1, Lcom/amazon/kindle/com/amazonaws/auth/AWS3Signer;

    const-string v2, "AWS3SignerType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/auth/SignerFactory;->SIGNERS:Ljava/util/Map;

    const-class v1, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;

    const-string v2, "AWS4SignerType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/auth/SignerFactory;->SIGNERS:Ljava/util/Map;

    const-class v1, Lcom/amazon/kindle/com/amazonaws/auth/NoOpSigner;

    const-string v2, "NoOpSignerType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static createSigner(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/auth/Signer;
    .locals 3

    const-string v0, "Cannot create an instance of "

    .line 113
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/auth/SignerFactory;->SIGNERS:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    if-eqz p0, :cond_1

    .line 118
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/com/amazonaws/auth/Signer;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    instance-of p0, v1, Lcom/amazon/kindle/com/amazonaws/auth/ServiceAwareSigner;

    if-eqz p0, :cond_0

    .line 130
    move-object p0, v1

    check-cast p0, Lcom/amazon/kindle/com/amazonaws/auth/ServiceAwareSigner;

    invoke-interface {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/ServiceAwareSigner;->setServiceName(Ljava/lang/String;)V

    :cond_0
    return-object v1

    :catch_0
    move-exception p1

    .line 124
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p1

    .line 120
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 115
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static getSigner(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/auth/Signer;
    .locals 0

    .line 79
    invoke-static {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/SignerFactory;->lookupAndCreateSigner(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/auth/Signer;

    move-result-object p0

    return-object p0
.end method

.method public static getSignerByTypeAndService(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/auth/Signer;
    .locals 0

    .line 92
    invoke-static {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/SignerFactory;->createSigner(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/auth/Signer;

    move-result-object p0

    return-object p0
.end method

.method private static lookupAndCreateSigner(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/auth/Signer;
    .locals 1

    .line 100
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/internal/config/InternalConfig$Factory;->getInternalConfig()Lcom/amazon/kindle/com/amazonaws/internal/config/InternalConfig;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p0, p1}, Lcom/amazon/kindle/com/amazonaws/internal/config/InternalConfig;->getSignerConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;->getSignerType()Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-static {p1, p0}, Lcom/amazon/kindle/com/amazonaws/auth/SignerFactory;->createSigner(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/auth/Signer;

    move-result-object p0

    return-object p0
.end method

.method public static registerSigner(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/kindle/com/amazonaws/auth/Signer;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 65
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/auth/SignerFactory;->SIGNERS:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 62
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "signerClass cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 59
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "signerType cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
