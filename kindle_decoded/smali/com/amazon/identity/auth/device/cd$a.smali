.class public final Lcom/amazon/identity/auth/device/cd$a;
.super Lcom/amazon/identity/auth/device/cx;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/cd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final dp:Lcom/amazon/identity/auth/device/ec;

.field private fb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/cx;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Lcom/amazon/identity/auth/device/ec;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/ec;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/cd$a;->dp:Lcom/amazon/identity/auth/device/ec;

    return-void
.end method


# virtual methods
.method public declared-synchronized getDeviceSerialNumber()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/cd$a;->fb:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/amazon/identity/auth/device/cd$a;->fb:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 50
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/cd$a;->dp:Lcom/amazon/identity/auth/device/ec;

    const-string v1, "dsn"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/cd;->a(Lcom/amazon/identity/auth/device/ec;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/cd$a;->fb:Ljava/lang/String;
    :try_end_1
    .catch Lcom/amazon/identity/auth/device/framework/RemoteMAPException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 55
    :try_start_2
    invoke-static {}, Lcom/amazon/identity/auth/device/cd;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to retrieve Device Serial Number from Amazon Device Information Component. Falling back to 3P value."

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    invoke-super {p0}, Lcom/amazon/identity/auth/device/cx;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/cd$a;->fb:Ljava/lang/String;

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/cd$a;->fb:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
