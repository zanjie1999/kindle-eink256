.class Lcom/amazon/identity/auth/device/fg$3;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/fg;->a(Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ms:Ljava/lang/String;

.field final synthetic mt:Lcom/amazon/identity/auth/device/fg;

.field final synthetic mu:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/fg;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/amazon/identity/auth/device/fg$3;->mt:Lcom/amazon/identity/auth/device/fg;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/fg$3;->ms:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/fg$3;->mu:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 501
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fg$3;->mt:Lcom/amazon/identity/auth/device/fg;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/fg;->ew()Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fg$3;->mt:Lcom/amazon/identity/auth/device/fg;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/fg$3;->ms:Ljava/lang/String;

    const-string/jumbo v2, "mapJSCallback"

    const-string/jumbo v3, "{\"error\":\"UnAuthorized_Domain\"}"

    .line 1037
    invoke-virtual {v0, v2, v1, v3}, Lcom/amazon/identity/auth/device/fg;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fg$3;->mu:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
