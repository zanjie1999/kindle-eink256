.class public Lcom/amazon/identity/auth/device/dk;
.super Lcom/amazon/identity/auth/device/fs;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.dk"

.field private static jB:[B


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/fs;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/dk;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public declared-synchronized cp()[B
    .locals 2

    monitor-enter p0

    .line 31
    :try_start_0
    sget-object v0, Lcom/amazon/identity/auth/device/dk;->jB:[B

    if-nez v0, :cond_1

    .line 1041
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dk;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/di;->A(Landroid/content/Context;)Lcom/amazon/identity/auth/device/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/di;->cO()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1045
    sget-object v0, Lcom/amazon/identity/auth/device/dk;->TAG:Ljava/lang/String;

    const-string v1, "Could not generate a MAP only encryption key. Aborting."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1049
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 33
    :goto_0
    sput-object v0, Lcom/amazon/identity/auth/device/dk;->jB:[B

    .line 36
    :cond_1
    sget-object v0, Lcom/amazon/identity/auth/device/dk;->jB:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
