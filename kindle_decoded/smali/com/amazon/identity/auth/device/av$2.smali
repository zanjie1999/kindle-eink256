.class Lcom/amazon/identity/auth/device/av$2;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/av;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic H:Ljava/lang/String;

.field final synthetic W:Lcom/amazon/identity/auth/device/bl;

.field final synthetic dL:Lcom/amazon/identity/auth/device/av;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/av;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/bl;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/amazon/identity/auth/device/av$2;->dL:Lcom/amazon/identity/auth/device/av;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/av$2;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/av$2;->H:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/av$2;->val$value:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/av$2;->W:Lcom/amazon/identity/auth/device/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 237
    iget-object v0, p0, Lcom/amazon/identity/auth/device/av$2;->val$key:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ij;->dk(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ij;

    move-result-object v0

    .line 238
    invoke-static {}, Lcom/amazon/identity/auth/device/av;->ao()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->gC()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Setting the attribute for key: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/amazon/identity/auth/device/av$2;->dL:Lcom/amazon/identity/auth/device/av;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/av;->b(Lcom/amazon/identity/auth/device/av;)Lcom/amazon/identity/auth/device/gi;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/av$2;->H:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->gC()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/amazon/identity/auth/device/av$2;->val$value:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcom/amazon/identity/auth/device/gi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/amazon/identity/auth/device/av$2;->dL:Lcom/amazon/identity/auth/device/av;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/av$2;->W:Lcom/amazon/identity/auth/device/bl;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/av$2;->val$value:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amazon/identity/auth/device/av;->b(Lcom/amazon/identity/auth/device/av;Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;)V

    return-void
.end method
