.class Lcom/amazon/identity/auth/device/db$1$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/db$1;->a([BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic iK:[B

.field final synthetic iL:I

.field final synthetic iM:Lcom/amazon/identity/auth/device/db$1;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/db$1;[BI)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/amazon/identity/auth/device/db$1$1;->iM:Lcom/amazon/identity/auth/device/db$1;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/db$1$1;->iK:[B

    iput p3, p0, Lcom/amazon/identity/auth/device/db$1$1;->iL:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/amazon/identity/auth/device/db$1$1;->iM:Lcom/amazon/identity/auth/device/db$1;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/db$1;->iI:Lcom/amazon/identity/auth/device/kj;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/db$1$1;->iK:[B

    iget v2, p0, Lcom/amazon/identity/auth/device/db$1$1;->iL:I

    invoke-interface {v0, v1, v2}, Lcom/amazon/identity/auth/device/kj;->a([BI)V

    return-void
.end method
