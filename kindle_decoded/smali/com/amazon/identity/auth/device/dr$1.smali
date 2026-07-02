.class Lcom/amazon/identity/auth/device/dr$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/dr;->onCF()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ke:Lcom/amazon/identity/auth/device/dr;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/dr;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dr$1;->ke:Lcom/amazon/identity/auth/device/dr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 54
    invoke-static {}, Lcom/amazon/identity/auth/device/dr;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Javascript interface onCF() is triggered."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dr$1;->ke:Lcom/amazon/identity/auth/device/dr;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/dr;->a(Lcom/amazon/identity/auth/device/dr;)Lcom/amazon/identity/auth/device/dr$a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dr$1;->ke:Lcom/amazon/identity/auth/device/dr;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/dr;->a(Lcom/amazon/identity/auth/device/dr;)Lcom/amazon/identity/auth/device/dr$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/dr$a;->aK()V

    .line 62
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dr$1;->ke:Lcom/amazon/identity/auth/device/dr;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/dr;->a(Lcom/amazon/identity/auth/device/dr;)Lcom/amazon/identity/auth/device/dr$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/dr$a;->aJ()V

    return-void
.end method
