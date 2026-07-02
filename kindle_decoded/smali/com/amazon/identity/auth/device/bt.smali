.class public Lcom/amazon/identity/auth/device/bt;
.super Lcom/amazon/identity/auth/device/br;
.source "DCP"


# instance fields
.field private final hC:Lcom/amazon/identity/auth/device/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/br;-><init>()V

    .line 15
    new-instance v0, Lcom/amazon/identity/auth/device/a;

    invoke-direct {v0, p1, p2}, Lcom/amazon/identity/auth/device/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/bt;->hC:Lcom/amazon/identity/auth/device/a;

    return-void
.end method


# virtual methods
.method public x()Lcom/amazon/identity/auth/device/a;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bt;->hC:Lcom/amazon/identity/auth/device/a;

    return-object v0
.end method

.method public y()Z
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bt;->hC:Lcom/amazon/identity/auth/device/a;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/a;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/identity/auth/device/bt;->hC:Lcom/amazon/identity/auth/device/a;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
