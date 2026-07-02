.class public Lcom/amazon/identity/auth/device/c;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/c$a;,
        Lcom/amazon/identity/auth/device/c$b;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.c"


# instance fields
.field private final e:Lcom/amazon/identity/auth/device/el;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lcom/amazon/identity/auth/device/el;

    const-string v1, "MAP-AccountAuthenticatorQueueThread"

    .line 98
    invoke-static {v1}, Lcom/amazon/identity/auth/device/jf;->dE(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ip;

    move-result-object v1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/el;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/c;->e:Lcom/amazon/identity/auth/device/el;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/identity/auth/device/c;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/c$b;Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/amazon/identity/auth/device/c;->e:Lcom/amazon/identity/auth/device/el;

    new-instance v1, Lcom/amazon/identity/auth/device/c$a;

    invoke-direct {v1, p1, p2, p3}, Lcom/amazon/identity/auth/device/c$a;-><init>(Lcom/amazon/identity/auth/device/c$b;Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/el;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
