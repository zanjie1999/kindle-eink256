.class public abstract Lcom/amazon/identity/auth/device/kn;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.kn"


# instance fields
.field private final fB:[Ljava/lang/Object;

.field private sa:Ljava/security/PrivateKey;

.field private sb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 17
    iput-object v0, p0, Lcom/amazon/identity/auth/device/kn;->fB:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public ht()Ljava/lang/String;
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/amazon/identity/auth/device/kn;->sb:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/kn;->x()Lcom/amazon/identity/auth/device/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/a;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/amazon/identity/auth/device/kn;->sb:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "-----BEGIN EC PRIVATE KEY-----"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SHA256withECDSA"

    .line 39
    iput-object v0, p0, Lcom/amazon/identity/auth/device/kn;->sb:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "SHA256WithRSA"

    .line 43
    iput-object v0, p0, Lcom/amazon/identity/auth/device/kn;->sb:Ljava/lang/String;

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/kn;->sb:Ljava/lang/String;

    return-object v0
.end method

.method public hu()Ljava/security/PrivateKey;
    .locals 5

    .line 52
    iget-object v0, p0, Lcom/amazon/identity/auth/device/kn;->fB:[Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/kn;->sa:Ljava/security/PrivateKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 58
    :try_start_1
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/kn;->x()Lcom/amazon/identity/auth/device/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/identity/auth/device/ii;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/identity/auth/device/kn;->sa:Ljava/security/PrivateKey;
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 62
    :try_start_2
    sget-object v2, Lcom/amazon/identity/auth/device/kn;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "parseKey: Could not parse private key because it was invalid. Error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/kn;->sa:Ljava/security/PrivateKey;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 68
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public abstract x()Lcom/amazon/identity/auth/device/a;
.end method
