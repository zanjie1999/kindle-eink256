.class Lcom/amazon/identity/auth/device/du$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/dj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/du;->dL()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/identity/auth/device/dj<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic kL:Landroid/net/Uri;

.field final synthetic kM:Lcom/amazon/identity/auth/device/du;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/du;Landroid/net/Uri;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/amazon/identity/auth/device/du$1;->kM:Lcom/amazon/identity/auth/device/du;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/du$1;->kL:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/ContentProviderClient;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "dsn_override"

    .line 249
    iget-object v2, p0, Lcom/amazon/identity/auth/device/du$1;->kL:Landroid/net/Uri;

    sget-object v1, Lcom/amazon/identity/auth/device/gn;->oB:Ljava/util/List;

    const/4 v7, 0x0

    new-array v3, v7, [Ljava/lang/String;

    .line 251
    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    .line 250
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    .line 257
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 265
    :cond_0
    iget-object v3, p0, Lcom/amazon/identity/auth/device/du$1;->kM:Lcom/amazon/identity/auth/device/du;

    const-string/jumbo v4, "map_major_version"

    .line 266
    invoke-static {p1, v4}, Lcom/amazon/identity/auth/device/hy;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/identity/auth/device/jb;->dz(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 265
    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/du;->a(Lcom/amazon/identity/auth/device/du;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 268
    iget-object v3, p0, Lcom/amazon/identity/auth/device/du$1;->kM:Lcom/amazon/identity/auth/device/du;

    const-string/jumbo v4, "map_minor_version"

    .line 269
    invoke-static {p1, v4}, Lcom/amazon/identity/auth/device/hy;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/identity/auth/device/jb;->dz(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 268
    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/du;->b(Lcom/amazon/identity/auth/device/du;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 271
    iget-object v3, p0, Lcom/amazon/identity/auth/device/du$1;->kM:Lcom/amazon/identity/auth/device/du;

    const-string/jumbo v4, "map_sw_version"

    .line 272
    invoke-static {p1, v4}, Lcom/amazon/identity/auth/device/hy;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/identity/auth/device/jb;->dz(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 271
    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/du;->c(Lcom/amazon/identity/auth/device/du;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 274
    iget-object v3, p0, Lcom/amazon/identity/auth/device/du$1;->kM:Lcom/amazon/identity/auth/device/du;

    const-string/jumbo v4, "map_brazil_version"

    .line 275
    invoke-static {p1, v4}, Lcom/amazon/identity/auth/device/hy;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 274
    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/du;->a(Lcom/amazon/identity/auth/device/du;Ljava/lang/String;)Ljava/lang/String;

    .line 278
    iget-object v3, p0, Lcom/amazon/identity/auth/device/du$1;->kM:Lcom/amazon/identity/auth/device/du;

    const-string v4, "current_device_type"

    .line 279
    invoke-static {p1, v4}, Lcom/amazon/identity/auth/device/hy;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 278
    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/du;->b(Lcom/amazon/identity/auth/device/du;Ljava/lang/String;)Ljava/lang/String;

    .line 282
    iget-object v3, p0, Lcom/amazon/identity/auth/device/du$1;->kM:Lcom/amazon/identity/auth/device/du;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/du;->c(Lcom/amazon/identity/auth/device/du;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 284
    invoke-static {}, Lcom/amazon/identity/auth/device/du;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Package %s has a null device type. Defaulting to the central device type"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/amazon/identity/auth/device/du$1;->kM:Lcom/amazon/identity/auth/device/du;

    .line 286
    invoke-virtual {v6}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 284
    invoke-static {v3, v4, v5}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    iget-object v3, p0, Lcom/amazon/identity/auth/device/du$1;->kM:Lcom/amazon/identity/auth/device/du;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/du$1;->kM:Lcom/amazon/identity/auth/device/du;

    .line 288
    invoke-static {v4}, Lcom/amazon/identity/auth/device/du;->d(Lcom/amazon/identity/auth/device/du;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;->CentralDeviceType:Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;

    invoke-static {v4, v5}, Lcom/amazon/identity/auth/device/it;->c(Landroid/content/Context;Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;)Ljava/lang/String;

    move-result-object v4

    .line 287
    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/du;->b(Lcom/amazon/identity/auth/device/du;Ljava/lang/String;)Ljava/lang/String;

    .line 292
    :cond_1
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/hy;->f(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 295
    iget-object v2, p0, Lcom/amazon/identity/auth/device/du$1;->kM:Lcom/amazon/identity/auth/device/du;

    .line 296
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/hy;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-static {v2, v0}, Lcom/amazon/identity/auth/device/du;->c(Lcom/amazon/identity/auth/device/du;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 301
    :cond_2
    invoke-static {}, Lcom/amazon/identity/auth/device/du;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Package %s does not provide a custom DSN override"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/du$1;->kM:Lcom/amazon/identity/auth/device/du;

    .line 303
    invoke-static {v4}, Lcom/amazon/identity/auth/device/du;->b(Lcom/amazon/identity/auth/device/du;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    .line 301
    invoke-static {v0, v3, v2}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    :goto_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/du$1;->kM:Lcom/amazon/identity/auth/device/du;

    const-string/jumbo v2, "map_init_version"

    .line 307
    invoke-static {p1, v2}, Lcom/amazon/identity/auth/device/hy;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/identity/auth/device/jb;->dz(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 306
    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/du;->d(Lcom/amazon/identity/auth/device/du;Ljava/lang/Integer;)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    invoke-static {p1}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;)V

    return-object v1

    .line 259
    :cond_3
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/amazon/identity/auth/device/du;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v3, "No version info returned from package %s."

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/du$1;->kM:Lcom/amazon/identity/auth/device/du;

    .line 261
    invoke-static {v4}, Lcom/amazon/identity/auth/device/du;->b(Lcom/amazon/identity/auth/device/du;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    .line 260
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    invoke-static {p1}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;)V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;)V

    .line 314
    throw v0
.end method
