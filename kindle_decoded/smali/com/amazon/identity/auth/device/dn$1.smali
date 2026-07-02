.class Lcom/amazon/identity/auth/device/dn$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/dj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/dn;->a(Landroid/os/Bundle;Landroid/net/Uri;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/identity/auth/device/dj<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic du:Landroid/net/Uri;

.field final synthetic dv:Ljava/lang/String;

.field final synthetic jK:Lcom/amazon/identity/auth/device/dn;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/dn;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dn$1;->jK:Lcom/amazon/identity/auth/device/dn;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/dn$1;->du:Landroid/net/Uri;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/dn$1;->dv:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/ContentProviderClient;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 404
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dn$1;->du:Landroid/net/Uri;

    .line 406
    invoke-static {}, Lcom/amazon/identity/auth/device/dn;->cS()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/identity/auth/device/dn$1;->dv:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .line 405
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 417
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "bundle_value"

    .line 423
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/hz;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ir;->dr(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 438
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    .line 429
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Corrupted value returned."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Got an empty cursor calling Generic IPC central store."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 414
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Got a null cursor calling Generic IPC central store."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p1, :cond_4

    .line 438
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 440
    :cond_4
    throw v0
.end method

.method public synthetic b(Landroid/content/ContentProviderClient;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 399
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/dn$1;->a(Landroid/content/ContentProviderClient;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
