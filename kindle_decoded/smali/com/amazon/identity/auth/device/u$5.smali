.class Lcom/amazon/identity/auth/device/u$5;
.super Lcom/amazon/identity/auth/device/br;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic H:Ljava/lang/String;

.field final synthetic bA:Lcom/amazon/identity/auth/device/u;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/u;Ljava/lang/String;)V
    .locals 0

    .line 1039
    iput-object p1, p0, Lcom/amazon/identity/auth/device/u$5;->bA:Lcom/amazon/identity/auth/device/u;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/u$5;->H:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amazon/identity/auth/device/br;-><init>()V

    return-void
.end method


# virtual methods
.method public x()Lcom/amazon/identity/auth/device/a;
    .locals 4

    .line 1043
    iget-object v0, p0, Lcom/amazon/identity/auth/device/u$5;->bA:Lcom/amazon/identity/auth/device/u;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/u;->b(Lcom/amazon/identity/auth/device/u;)Lcom/amazon/identity/auth/device/gc;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/u$5;->H:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/u$5;->bA:Lcom/amazon/identity/auth/device/u;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/u;->a(Lcom/amazon/identity/auth/device/u;)Lcom/amazon/identity/auth/device/u$a;

    move-result-object v2

    iget-object v2, v2, Lcom/amazon/identity/auth/device/u$a;->bE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/auth/device/gc;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1044
    iget-object v1, p0, Lcom/amazon/identity/auth/device/u$5;->bA:Lcom/amazon/identity/auth/device/u;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/u;->b(Lcom/amazon/identity/auth/device/u;)Lcom/amazon/identity/auth/device/gc;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/u$5;->H:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/u$5;->bA:Lcom/amazon/identity/auth/device/u;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/u;->c(Lcom/amazon/identity/auth/device/u;)Lcom/amazon/identity/auth/device/u$a;

    move-result-object v3

    iget-object v3, v3, Lcom/amazon/identity/auth/device/u$a;->bE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/amazon/identity/auth/device/gc;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1046
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1049
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/u$5;->bA:Lcom/amazon/identity/auth/device/u;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/u;->b(Lcom/amazon/identity/auth/device/u;)Lcom/amazon/identity/auth/device/gc;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/u$5;->H:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/u$5;->bA:Lcom/amazon/identity/auth/device/u;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/u;->a(Lcom/amazon/identity/auth/device/u;)Lcom/amazon/identity/auth/device/u$a;

    move-result-object v2

    iget-object v2, v2, Lcom/amazon/identity/auth/device/u$a;->bD:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/auth/device/gc;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1050
    iget-object v1, p0, Lcom/amazon/identity/auth/device/u$5;->bA:Lcom/amazon/identity/auth/device/u;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/u;->b(Lcom/amazon/identity/auth/device/u;)Lcom/amazon/identity/auth/device/gc;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/u$5;->H:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/u$5;->bA:Lcom/amazon/identity/auth/device/u;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/u;->c(Lcom/amazon/identity/auth/device/u;)Lcom/amazon/identity/auth/device/u$a;

    move-result-object v3

    iget-object v3, v3, Lcom/amazon/identity/auth/device/u$a;->bD:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/amazon/identity/auth/device/gc;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1053
    :cond_1
    new-instance v2, Lcom/amazon/identity/auth/device/a;

    invoke-direct {v2, v0, v1}, Lcom/amazon/identity/auth/device/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public y()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
