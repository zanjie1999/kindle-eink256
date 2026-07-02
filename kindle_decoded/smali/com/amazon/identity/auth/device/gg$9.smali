.class Lcom/amazon/identity/auth/device/gg$9;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/gg;->a(Lcom/amazon/identity/auth/device/gg$a;Lcom/amazon/identity/auth/device/gc$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic nR:Lcom/amazon/identity/auth/device/gg;

.field final synthetic nY:Lcom/amazon/identity/auth/device/gg$a;

.field final synthetic nZ:Lcom/amazon/identity/auth/device/gc$a;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/gg;Lcom/amazon/identity/auth/device/gg$a;Lcom/amazon/identity/auth/device/gc$a;)V
    .locals 0

    .line 846
    iput-object p1, p0, Lcom/amazon/identity/auth/device/gg$9;->nR:Lcom/amazon/identity/auth/device/gg;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/gg$9;->nY:Lcom/amazon/identity/auth/device/gg$a;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/gg$9;->nZ:Lcom/amazon/identity/auth/device/gc$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 850
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg$9;->nR:Lcom/amazon/identity/auth/device/gg;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/gg$9;->nY:Lcom/amazon/identity/auth/device/gg$a;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/gg;->a(Lcom/amazon/identity/auth/device/gg;Lcom/amazon/identity/auth/device/gg$a;)Z

    .line 851
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg$9;->nZ:Lcom/amazon/identity/auth/device/gc$a;

    if-eqz v0, :cond_0

    .line 853
    invoke-interface {v0}, Lcom/amazon/identity/auth/device/gc$a;->onSuccess()V

    :cond_0
    return-void
.end method
