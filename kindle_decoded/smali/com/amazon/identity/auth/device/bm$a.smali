.class Lcom/amazon/identity/auth/device/bm$a;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic hf:Lcom/amazon/identity/auth/device/bm;

.field private final mId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/bm;Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/amazon/identity/auth/device/bm$a;->hf:Lcom/amazon/identity/auth/device/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p2, p0, Lcom/amazon/identity/auth/device/bm$a;->mId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bm$a;->hf:Lcom/amazon/identity/auth/device/bm;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/bm$a;->mId:Ljava/lang/String;

    .line 2079
    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/bm;->aJ(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2080
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/identity/auth/device/api/Callback;

    .line 2082
    invoke-interface {v2, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    goto :goto_0

    .line 2085
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bm$a;->hf:Lcom/amazon/identity/auth/device/bm;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/bm$a;->mId:Ljava/lang/String;

    .line 1068
    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/bm;->aJ(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1069
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/identity/auth/device/api/Callback;

    .line 1071
    invoke-interface {v2, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1074
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
