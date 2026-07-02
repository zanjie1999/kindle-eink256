.class Lcom/amazon/identity/auth/device/h$5;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic L:Lcom/amazon/identity/auth/device/h;

.field final synthetic N:Lcom/amazon/identity/auth/device/ej;

.field final synthetic R:Ljava/lang/String;

.field final synthetic S:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/h;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)V
    .locals 0

    .line 2417
    iput-object p1, p0, Lcom/amazon/identity/auth/device/h$5;->L:Lcom/amazon/identity/auth/device/h;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/h$5;->R:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/h$5;->S:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/h$5;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2421
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$5;->R:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/h$5;->S:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/h$5;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-static {v0, v1, v2}, Lcom/amazon/identity/auth/device/h;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Ljava/util/Collection;

    move-result-object v0

    .line 2422
    iget-object v1, p0, Lcom/amazon/identity/auth/device/h$5;->L:Lcom/amazon/identity/auth/device/h;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/h;->a(Lcom/amazon/identity/auth/device/h;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;->ah(Landroid/content/Context;)Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;

    move-result-object v1

    .line 2423
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2425
    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;->cT(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
