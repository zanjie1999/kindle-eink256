.class Lcom/amazon/identity/auth/device/ah$1;
.super Lcom/amazon/identity/auth/device/ke;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/ah;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/auth/device/t;Lcom/amazon/identity/auth/device/ej;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cE:Lcom/amazon/identity/auth/device/t;

.field final synthetic cF:Lcom/amazon/identity/auth/device/ah;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/ah;Lcom/amazon/identity/auth/device/t;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ah$1;->cF:Lcom/amazon/identity/auth/device/ah;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/ah$1;->cE:Lcom/amazon/identity/auth/device/t;

    invoke-direct {p0}, Lcom/amazon/identity/auth/device/ke;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 47
    check-cast p1, Lcom/amazon/identity/auth/device/ky;

    .line 49
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ah$1;->cE:Lcom/amazon/identity/auth/device/t;

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/t;->c(Lcom/amazon/identity/auth/device/ky;)V

    return-void
.end method

.method public j()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ah$1;->cE:Lcom/amazon/identity/auth/device/t;

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/t;->onNetworkError()V

    return-void
.end method

.method public k()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ah$1;->cE:Lcom/amazon/identity/auth/device/t;

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/t;->onBadResponse()V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ah$1;->cE:Lcom/amazon/identity/auth/device/t;

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/t;->onAuthenticationFailed()V

    return-void
.end method
