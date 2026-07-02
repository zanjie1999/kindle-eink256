.class Lcom/amazon/identity/auth/device/gp$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/dj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/gp;->c(Landroid/net/Uri;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/identity/auth/device/dj<",
        "Ljava/util/Collection<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic oG:Landroid/net/Uri;

.field final synthetic oH:Lcom/amazon/identity/auth/device/gp;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/gp;Landroid/net/Uri;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/amazon/identity/auth/device/gp$1;->oH:Lcom/amazon/identity/auth/device/gp;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/gp$1;->oG:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic b(Landroid/content/ContentProviderClient;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 138
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/gp$1;->e(Landroid/content/ContentProviderClient;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/content/ContentProviderClient;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentProviderClient;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 143
    iget-object v1, p0, Lcom/amazon/identity/auth/device/gp$1;->oG:Landroid/net/Uri;

    sget-object v0, Lcom/amazon/identity/auth/device/gn;->oC:Ljava/util/List;

    .line 145
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .line 144
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 157
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 160
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 190
    invoke-static {p1}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;)V

    return-object v0

    .line 167
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 169
    sget-object v2, Lcom/amazon/identity/auth/device/gn;->oC:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 172
    invoke-static {p1, v3}, Lcom/amazon/identity/auth/device/hy;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_2

    .line 179
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 182
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 190
    invoke-static {p1}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;)V

    .line 191
    throw v0
.end method
