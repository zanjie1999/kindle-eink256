.class Lcom/amazon/identity/auth/device/fg$10;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/fg;->isSmsRetrieverEnabled(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ms:Ljava/lang/String;

.field final synthetic mt:Lcom/amazon/identity/auth/device/fg;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/fg;Ljava/lang/String;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/amazon/identity/auth/device/fg$10;->mt:Lcom/amazon/identity/auth/device/fg;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/fg$10;->ms:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 366
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fg$10;->mt:Lcom/amazon/identity/auth/device/fg;

    .line 1037
    iget-object v1, v0, Lcom/amazon/identity/auth/device/fg;->er:Lcom/amazon/identity/auth/device/fe;

    if-nez v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/amazon/identity/auth/device/fg$10;->ms:Ljava/lang/String;

    const-string/jumbo v2, "mapJSCallback"

    const-string/jumbo v3, "{\"error\":\"Not_Supported\"}"

    .line 2037
    invoke-virtual {v0, v2, v1, v3}, Lcom/amazon/identity/auth/device/fg;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 372
    :cond_0
    new-instance v0, Lcom/amazon/identity/auth/device/fg$10$1;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/fg$10$1;-><init>(Lcom/amazon/identity/auth/device/fg$10;)V

    invoke-virtual {v1, v0}, Lcom/amazon/identity/auth/device/fe;->a(Lcom/amazon/identity/auth/device/fe$a;)V

    return-void
.end method
