.class Lcom/amazon/identity/auth/device/x$2;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/x$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/x;->a(Ljava/lang/String;Ljava/util/List;Lcom/amazon/identity/auth/device/x$d;Lcom/amazon/identity/auth/device/br;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/x$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bJ:Lcom/amazon/identity/auth/device/x;

.field final synthetic bK:Lcom/amazon/identity/auth/device/x$d;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/x;Lcom/amazon/identity/auth/device/x$d;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/amazon/identity/auth/device/x$2;->bJ:Lcom/amazon/identity/auth/device/x;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/x$2;->bK:Lcom/amazon/identity/auth/device/x$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 198
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "booleanResult"

    .line 199
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 200
    iget-object p1, p0, Lcom/amazon/identity/auth/device/x$2;->bK:Lcom/amazon/identity/auth/device/x$d;

    invoke-interface {p1, v0}, Lcom/amazon/identity/auth/device/x$d;->onResult(Landroid/os/Bundle;)V

    return-void
.end method
