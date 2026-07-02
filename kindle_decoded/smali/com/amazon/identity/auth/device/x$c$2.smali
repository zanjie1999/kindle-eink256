.class Lcom/amazon/identity/auth/device/x$c$2;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/x$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bT:Lcom/amazon/identity/auth/device/x$c;

.field final synthetic bU:Lcom/amazon/identity/auth/device/i;

.field final synthetic bV:Lcom/amazon/identity/auth/device/i$a;

.field final synthetic bW:Ljava/lang/String;

.field final synthetic bX:Lcom/amazon/identity/auth/device/br;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/x$c;Lcom/amazon/identity/auth/device/i;Lcom/amazon/identity/auth/device/i$a;Ljava/lang/String;Lcom/amazon/identity/auth/device/br;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/amazon/identity/auth/device/x$c$2;->bT:Lcom/amazon/identity/auth/device/x$c;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/x$c$2;->bU:Lcom/amazon/identity/auth/device/i;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/x$c$2;->bV:Lcom/amazon/identity/auth/device/i$a;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/x$c$2;->bW:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/x$c$2;->bX:Lcom/amazon/identity/auth/device/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 433
    iget-object v0, p0, Lcom/amazon/identity/auth/device/x$c$2;->bU:Lcom/amazon/identity/auth/device/i;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/x$c$2;->bV:Lcom/amazon/identity/auth/device/i$a;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/x$c$2;->bW:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/x$c$2;->bT:Lcom/amazon/identity/auth/device/x$c;

    .line 1217
    iget-object v4, v3, Lcom/amazon/identity/auth/device/x$c;->bM:Ljava/lang/String;

    .line 435
    iget-object v5, p0, Lcom/amazon/identity/auth/device/x$c$2;->bX:Lcom/amazon/identity/auth/device/br;

    .line 2217
    iget-object v6, v3, Lcom/amazon/identity/auth/device/x$c;->t:Lcom/amazon/identity/auth/device/j;

    .line 3217
    iget-object v7, v3, Lcom/amazon/identity/auth/device/x$c;->bO:Lcom/amazon/identity/auth/device/ej;

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, v4

    move-object v4, v5

    move v5, v8

    move-object v8, v9

    .line 433
    invoke-virtual/range {v0 .. v8}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/auth/device/i$a;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/br;ZLcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)V

    return-void
.end method
