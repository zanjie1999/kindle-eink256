.class final Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask;
.super Ljava/lang/Object;
.source "CustomerAttributeStoreTokenTask.java"

# interfaces
.implements Lcom/amazon/kindle/services/authentication/MAPTokenTask;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private customerStore:Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;

.field private mapCallback:Lcom/amazon/identity/auth/device/api/Callback;

.field private final options:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;",
            ">;"
        }
    .end annotation
.end field

.field private tokenKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;Ljava/lang/String;Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask$1;-><init>(Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask;)V

    iput-object v0, p0, Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask;->mapCallback:Lcom/amazon/identity/auth/device/api/Callback;

    .line 45
    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask;->customerStore:Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;

    .line 46
    iput-object p2, p0, Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask;->tokenKey:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask;->options:Ljava/util/EnumSet;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask;Landroid/os/Bundle;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask;->tokenKey:Ljava/lang/String;

    return-object p0
.end method

.method private onSuccess(Landroid/os/Bundle;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask;->tokenKey:Ljava/lang/String;

    const-string v1, "email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "CustomerAttributeStore with tokenKey "

    if-eqz v0, :cond_0

    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask;->tokenKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " returned an email"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask;->tokenKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " returned "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask;->getValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask;->customerStore:Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;

    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask;->tokenKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask;->mapCallback:Lcom/amazon/identity/auth/device/api/Callback;

    iget-object v3, p0, Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask;->options:Ljava/util/EnumSet;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->getAttribute(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Ljava/util/EnumSet;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 0

    .line 57
    invoke-static {p1}, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->getValueOrAttributeDefault(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
