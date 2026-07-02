.class Lcom/amazon/identity/auth/device/token/RemoteInternalListenerWrapper$a;
.super Lcom/amazon/identity/auth/device/token/IInternalListener$Stub;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/token/RemoteInternalListenerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final pz:Lcom/amazon/identity/auth/device/gv;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/gv;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/token/IInternalListener$Stub;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amazon/identity/auth/device/token/RemoteInternalListenerWrapper$a;->pz:Lcom/amazon/identity/auth/device/gv;

    return-void
.end method


# virtual methods
.method public finish(Landroid/os/Bundle;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/RemoteInternalListenerWrapper$a;->pz:Lcom/amazon/identity/auth/device/gv;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/gv;->finish(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
