.class Lcom/amazon/identity/auth/device/hd$b;
.super Lcom/amazon/identity/auth/device/hd$c;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/hd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic pT:Lcom/amazon/identity/auth/device/hd;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/hd;Lcom/amazon/identity/auth/device/hd$d;Lcom/amazon/identity/auth/device/api/Callback;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/amazon/identity/auth/device/hd$b;->pT:Lcom/amazon/identity/auth/device/hd;

    .line 210
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/hd$c;-><init>(Lcom/amazon/identity/auth/device/hd;Lcom/amazon/identity/auth/device/hd$d;Lcom/amazon/identity/auth/device/api/Callback;)V

    return-void
.end method


# virtual methods
.method protected gi()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 216
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/hd$c;->gk()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Scheduled running concurrent job %s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TokenJobQueue"

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hd$b;->pT:Lcom/amazon/identity/auth/device/hd;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/hd;->c(Lcom/amazon/identity/auth/device/hd;)V

    return-void
.end method
