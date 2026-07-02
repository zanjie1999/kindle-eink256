.class Lcom/amazon/identity/auth/device/db$1$4;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/db$1;->cD()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic iM:Lcom/amazon/identity/auth/device/db$1;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/db$1;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/amazon/identity/auth/device/db$1$4;->iM:Lcom/amazon/identity/auth/device/db$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/amazon/identity/auth/device/db$1$4;->iM:Lcom/amazon/identity/auth/device/db$1;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/db$1;->iI:Lcom/amazon/identity/auth/device/kj;

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/kj;->cD()V

    return-void
.end method
