.class final Lcom/amazon/identity/auth/device/fk$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/fk;->i(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic mE:Lcom/amazon/identity/auth/device/api/AccountChangeEvent;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/api/AccountChangeEvent;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/amazon/identity/auth/device/fk$1;->mE:Lcom/amazon/identity/auth/device/api/AccountChangeEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "NotifyMAPAccountChangeObservers"

    .line 67
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/amazon/identity/auth/device/fk;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$MAPAccountChangeObserver;

    .line 70
    iget-object v2, p0, Lcom/amazon/identity/auth/device/fk$1;->mE:Lcom/amazon/identity/auth/device/api/AccountChangeEvent;

    invoke-interface {v1, v2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$MAPAccountChangeObserver;->onAccountChange(Lcom/amazon/identity/auth/device/api/AccountChangeEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method
