.class Lcom/amazon/identity/auth/device/dr$2;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/dr;->reqPerm(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ke:Lcom/amazon/identity/auth/device/dr;

.field final synthetic kf:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/dr;Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dr$2;->ke:Lcom/amazon/identity/auth/device/dr;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/dr$2;->kf:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 79
    invoke-static {}, Lcom/amazon/identity/auth/device/dr;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Javascript interface reqPerm() is triggered."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dr$2;->kf:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->bt(Ljava/lang/String;)Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dr$2;->ke:Lcom/amazon/identity/auth/device/dr;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/dr;->a(Lcom/amazon/identity/auth/device/dr;)Lcom/amazon/identity/auth/device/dr$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/identity/auth/device/dr$a;->a(Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;)V

    :cond_0
    return-void
.end method
