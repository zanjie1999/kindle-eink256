.class Lcom/amazon/identity/auth/device/h$13;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/gc$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/h;->a(ZZZLjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;)Lcom/amazon/identity/auth/device/gc$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic L:Lcom/amazon/identity/auth/device/h;

.field final synthetic ab:Z

.field final synthetic ac:Z

.field final synthetic ad:Ljava/lang/String;

.field final synthetic ae:Landroid/os/Bundle;

.field final synthetic af:Ljava/util/List;

.field final synthetic ag:Landroid/os/Bundle;

.field final synthetic ah:Z


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/h;ZZLjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/os/Bundle;Z)V
    .locals 0

    .line 1390
    iput-object p1, p0, Lcom/amazon/identity/auth/device/h$13;->L:Lcom/amazon/identity/auth/device/h;

    iput-boolean p2, p0, Lcom/amazon/identity/auth/device/h$13;->ab:Z

    iput-boolean p3, p0, Lcom/amazon/identity/auth/device/h$13;->ac:Z

    iput-object p4, p0, Lcom/amazon/identity/auth/device/h$13;->ad:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/h$13;->ae:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/amazon/identity/auth/device/h$13;->af:Ljava/util/List;

    iput-object p7, p0, Lcom/amazon/identity/auth/device/h$13;->ag:Landroid/os/Bundle;

    iput-boolean p8, p0, Lcom/amazon/identity/auth/device/h$13;->ah:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 7

    .line 1395
    invoke-static {}, Lcom/amazon/identity/auth/device/h;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 1400
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$13;->L:Lcom/amazon/identity/auth/device/h;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/h;->d(Lcom/amazon/identity/auth/device/h;)Lcom/amazon/identity/auth/device/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ab;->O()V

    .line 1402
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/h$13;->ab:Z

    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/h$13;->ac:Z

    if-eqz v0, :cond_1

    .line 1406
    :cond_0
    new-instance v0, Lcom/amazon/identity/auth/device/h$13$1;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/h$13$1;-><init>(Lcom/amazon/identity/auth/device/h$13;)V

    invoke-static {v0}, Lcom/amazon/identity/auth/device/jf;->c(Ljava/lang/Runnable;)V

    .line 1433
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$13;->L:Lcom/amazon/identity/auth/device/h;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/h$13;->af:Ljava/util/List;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/h$13;->ag:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/amazon/identity/auth/device/h;->a(Lcom/amazon/identity/auth/device/h;Ljava/util/List;Landroid/os/Bundle;)V

    .line 1437
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$13;->L:Lcom/amazon/identity/auth/device/h;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/h;->a(Lcom/amazon/identity/auth/device/h;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v1

    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$13;->L:Lcom/amazon/identity/auth/device/h;

    .line 1438
    invoke-static {v0}, Lcom/amazon/identity/auth/device/h;->d(Lcom/amazon/identity/auth/device/h;)Lcom/amazon/identity/auth/device/ab;

    move-result-object v2

    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$13;->L:Lcom/amazon/identity/auth/device/h;

    .line 1439
    invoke-static {v0}, Lcom/amazon/identity/auth/device/h;->e(Lcom/amazon/identity/auth/device/h;)Lcom/amazon/identity/auth/device/z;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/identity/auth/device/h$13;->ad:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/amazon/identity/auth/device/h$13;->ah:Z

    iget-object v6, p0, Lcom/amazon/identity/auth/device/h$13;->ag:Landroid/os/Bundle;

    .line 1437
    invoke-static/range {v1 .. v6}, Lcom/amazon/identity/auth/device/l;->a(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/ab;Lcom/amazon/identity/auth/device/z;Ljava/lang/String;ZLandroid/os/Bundle;)V

    :cond_1
    return-void
.end method
