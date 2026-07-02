.class Lcom/amazon/identity/auth/device/hd$a$1;
.super Ljava/util/TimerTask;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/hd$a;->gi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pU:Lcom/amazon/identity/auth/device/hd$a;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/hd$a;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/amazon/identity/auth/device/hd$a$1;->pU:Lcom/amazon/identity/auth/device/hd$a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hd$a$1;->pU:Lcom/amazon/identity/auth/device/hd$a;

    .line 1156
    iget-object v0, v0, Lcom/amazon/identity/auth/device/hd$a;->pS:Lcom/amazon/identity/auth/device/je;

    .line 182
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/je;->gP()V

    const-string v0, "TokenJobQueue"

    const-string v1, "Calling scheduleNext in blocking task\'s scheduler"

    .line 183
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hd$a$1;->pU:Lcom/amazon/identity/auth/device/hd$a;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/hd$a;->pT:Lcom/amazon/identity/auth/device/hd;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/hd;->c(Lcom/amazon/identity/auth/device/hd;)V

    return-void
.end method
