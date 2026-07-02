.class Lcom/amazon/identity/auth/device/ar$a;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final dG:Ljava/util/concurrent/CountDownLatch;

.field dH:Lcom/amazon/identity/auth/attributes/CORPFMResponse;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/ar$a;->dG:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method
