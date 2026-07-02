.class Lcom/amazon/identity/auth/device/db$1$2;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/db$1;->a(Lcom/amazon/identity/auth/device/mb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic iM:Lcom/amazon/identity/auth/device/db$1;

.field final synthetic iN:Lcom/amazon/identity/auth/device/mb;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/db$1;Lcom/amazon/identity/auth/device/mb;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/amazon/identity/auth/device/db$1$2;->iM:Lcom/amazon/identity/auth/device/db$1;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/db$1$2;->iN:Lcom/amazon/identity/auth/device/mb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/amazon/identity/auth/device/db$1$2;->iM:Lcom/amazon/identity/auth/device/db$1;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/db$1;->iI:Lcom/amazon/identity/auth/device/kj;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/db$1$2;->iN:Lcom/amazon/identity/auth/device/mb;

    invoke-interface {v0, v1}, Lcom/amazon/identity/auth/device/kj;->a(Lcom/amazon/identity/auth/device/mb;)V

    return-void
.end method
