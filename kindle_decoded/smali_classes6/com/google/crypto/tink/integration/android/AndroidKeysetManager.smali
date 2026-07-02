.class public final Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;
.super Ljava/lang/Object;
.source "AndroidKeysetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidKeysetManager"


# instance fields
.field private keysetManager:Lcom/google/crypto/tink/KeysetManager;

.field private final masterKey:Lcom/google/crypto/tink/Aead;

.field private final writer:Lcom/google/crypto/tink/KeysetWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-static {p1}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->access$000(Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;)Lcom/google/crypto/tink/KeysetWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;->writer:Lcom/google/crypto/tink/KeysetWriter;

    .line 130
    invoke-static {p1}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->access$100(Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;)Lcom/google/crypto/tink/Aead;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;->masterKey:Lcom/google/crypto/tink/Aead;

    .line 131
    invoke-static {p1}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->access$200(Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;)Lcom/google/crypto/tink/KeysetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;->keysetManager:Lcom/google/crypto/tink/KeysetManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;-><init>(Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;)V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 120
    invoke-static {}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;->isAtLeastM()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 120
    sget-object v0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static isAtLeastM()Z
    .locals 2

    .line 489
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public declared-synchronized getKeysetHandle()Lcom/google/crypto/tink/KeysetHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;->keysetManager:Lcom/google/crypto/tink/KeysetManager;

    invoke-virtual {v0}, Lcom/google/crypto/tink/KeysetManager;->getKeysetHandle()Lcom/google/crypto/tink/KeysetHandle;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
