.class public final Lcom/amazon/identity/auth/device/id;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.id"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2

    .line 18
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 19
    new-instance v1, Lcom/amazon/identity/auth/device/id$1;

    invoke-direct {v1, p1, v0}, Lcom/amazon/identity/auth/device/id$1;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 43
    sget-object p1, Lcom/amazon/identity/auth/device/id;->TAG:Ljava/lang/String;

    const-string v0, "Latch was interrupted."

    invoke-static {p1, v0, p0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
