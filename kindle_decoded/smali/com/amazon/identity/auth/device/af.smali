.class public Lcom/amazon/identity/auth/device/af;
.super Lcom/amazon/identity/auth/device/ct;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/identity/auth/device/ct<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/api/Callback;Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/ct;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 18
    iput-object p2, p0, Lcom/amazon/identity/auth/device/af;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/identity/auth/device/af;->b(Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)V

    return-void
.end method

.method protected b(Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/identity/auth/device/af;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/amazon/identity/auth/device/hr;->b(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 27
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)V

    return-void
.end method
