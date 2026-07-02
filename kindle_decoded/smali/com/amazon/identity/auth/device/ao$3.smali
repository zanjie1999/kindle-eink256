.class Lcom/amazon/identity/auth/device/ao$3;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/dj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/ao;->a(Landroid/net/Uri;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dj;
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
.field final synthetic dt:Lcom/amazon/identity/auth/device/ao;

.field final synthetic du:Landroid/net/Uri;

.field final synthetic dv:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/ao;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ao$3;->dt:Lcom/amazon/identity/auth/device/ao;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/ao$3;->du:Landroid/net/Uri;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/ao$3;->dv:Ljava/lang/String;

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

    .line 287
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ao$3;->du:Landroid/net/Uri;

    sget-object v0, Lcom/amazon/identity/auth/device/ao;->do:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 289
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/ao$3;->dv:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .line 288
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ao$3;->dv:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/ao;->a(Landroid/database/Cursor;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 302
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 304
    :cond_1
    throw v0
.end method

.method public synthetic b(Landroid/content/ContentProviderClient;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 282
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/ao$3;->a(Landroid/content/ContentProviderClient;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
