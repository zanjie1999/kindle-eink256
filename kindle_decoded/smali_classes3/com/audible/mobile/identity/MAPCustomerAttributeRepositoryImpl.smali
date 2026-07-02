.class public final Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl;
.super Ljava/lang/Object;
.source "MAPCustomerAttributeRepositoryImpl.java"

# interfaces
.implements Lcom/audible/mobile/identity/CustomerAttributeRepository;


# instance fields
.field private final customerAttributeStore:Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;

.field private final logger:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl;->logger:Lorg/slf4j/Logger;

    .line 31
    invoke-static {p1}, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl;->customerAttributeStore:Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl;)Lorg/slf4j/Logger;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl;->logger:Lorg/slf4j/Logger;

    return-object p0
.end method

.method private getAttribute(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10

    .line 48
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 50
    new-instance v9, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl$1;

    move-object v0, v9

    move-object v1, p0

    move v2, p3

    move-object v3, v7

    move-object v4, v8

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl$1;-><init>(Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl;ZLjava/lang/StringBuilder;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, v9}, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl;->getAttribute(Ljava/lang/String;Ljava/lang/String;Lcom/audible/mobile/identity/CustomerAttributeRepository$Callback;)V

    .line 70
    :try_start_0
    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 72
    iget-object p2, p0, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    :goto_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 76
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl;->getAttribute(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttribute(Ljava/lang/String;Ljava/lang/String;Lcom/audible/mobile/identity/CustomerAttributeRepository$Callback;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl;->customerAttributeStore:Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;

    new-instance v1, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl$2;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl$2;-><init>(Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl;Lcom/audible/mobile/identity/CustomerAttributeRepository$Callback;Ljava/lang/String;Ljava/lang/String;)V

    const-class p3, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;

    .line 112
    invoke-static {p3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p3

    .line 85
    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->getAttribute(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Ljava/util/EnumSet;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    return-void
.end method

.method public getDefaultAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl;->getAttribute(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
