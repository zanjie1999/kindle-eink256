.class final Lcom/amazon/identity/auth/device/dn$c;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/dn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final dG:Ljava/util/concurrent/CountDownLatch;

.field private gD:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/dn$c;->dG:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/dn$c;-><init>()V

    return-void
.end method

.method private z(Landroid/os/Bundle;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dn$c;->gD:Landroid/os/Bundle;

    .line 197
    iget-object p1, p0, Lcom/amazon/identity/auth/device/dn$c;->dG:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dn$c;->dG:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/amazon/identity/auth/device/dn$c;->gD:Landroid/os/Bundle;

    return-object p1

    .line 190
    :cond_0
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1
.end method

.method public onError(Landroid/os/Bundle;)V
    .locals 0

    .line 179
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/dn$c;->z(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 0

    .line 173
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/dn$c;->z(Landroid/os/Bundle;)V

    return-void
.end method
