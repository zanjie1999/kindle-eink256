.class Lcom/amazon/identity/auth/device/hn$c;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/hn$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/hn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final dG:Ljava/util/concurrent/CountDownLatch;

.field private qB:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/hn$c;->dG:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/hn$c;->qB:Z

    return-void
.end method


# virtual methods
.method public gr()V
    .locals 1

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/hn$c;->qB:Z

    .line 49
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hn$c;->dG:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public gs()V
    .locals 1

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/hn$c;->qB:Z

    .line 56
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hn$c;->dG:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public gt()Z
    .locals 2

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hn$c;->dG:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    invoke-static {}, Lcom/amazon/identity/auth/device/hn;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Interrupted waiting for defensive remove account."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_0
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/hn$c;->qB:Z

    return v0
.end method
