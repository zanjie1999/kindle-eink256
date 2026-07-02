.class Lcom/amazon/identity/auth/device/ce$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/dj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/ce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/identity/auth/device/dj<",
        "Lcom/amazon/identity/auth/device/cf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic hZ:Landroid/net/Uri;

.field final synthetic ia:Lcom/amazon/identity/auth/device/ce;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/ce;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ce$1;->ia:Lcom/amazon/identity/auth/device/ce;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/ce$1;->hZ:Landroid/net/Uri;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/ce$1;->val$key:Ljava/lang/String;

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

    .line 81
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/ce$1;->d(Landroid/content/ContentProviderClient;)Lcom/amazon/identity/auth/device/cf;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroid/content/ContentProviderClient;)Lcom/amazon/identity/auth/device/cf;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ce$1;->hZ:Landroid/net/Uri;

    .line 88
    invoke-static {}, Lcom/amazon/identity/auth/device/ce;->bJ()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/identity/auth/device/ce$1;->val$key:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .line 87
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 96
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ce;->a(Landroid/database/Cursor;)V

    const-string/jumbo v3, "value"

    .line 119
    invoke-static {p1, v3}, Lcom/amazon/identity/auth/device/hz;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "isPersistent"

    .line 122
    invoke-static {p1, v4}, Lcom/amazon/identity/auth/device/hz;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 127
    invoke-static {}, Lcom/amazon/identity/auth/device/ce;->access$200()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Received Key=%s, Value=%s, Persistent=%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/amazon/identity/auth/device/ce$1;->val$key:Ljava/lang/String;

    aput-object v9, v8, v1

    aput-object v3, v8, v2

    aput-object v4, v8, v0

    .line 128
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    invoke-static {v6}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 133
    new-instance v0, Lcom/amazon/identity/auth/device/cf;

    invoke-direct {v0, v3, v5}, Lcom/amazon/identity/auth/device/cf;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 141
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    :try_start_1
    const-string v3, "Key %s was not found in the device data store."

    new-array v4, v2, [Ljava/lang/Object;

    .line 98
    iget-object v5, p0, Lcom/amazon/identity/auth/device/ce$1;->val$key:Ljava/lang/String;

    aput-object v5, v4, v1

    .line 99
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 109
    iget-object v4, p0, Lcom/amazon/identity/auth/device/ce$1;->val$key:Ljava/lang/String;

    const-string v5, "ke_device"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/amazon/identity/auth/device/ce$1;->val$key:Ljava/lang/String;

    const-string/jumbo v5, "re_device"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 111
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " This device does not support %s. This error is expected if the device not support %s."

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/ce$1;->val$key:Ljava/lang/String;

    aput-object v5, v0, v1

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ce$1;->val$key:Ljava/lang/String;

    aput-object v1, v0, v2

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 113
    :cond_4
    new-instance v0, Lcom/amazon/identity/auth/device/api/DeviceDataStoreException;

    invoke-direct {v0, v3}, Lcom/amazon/identity/auth/device/api/DeviceDataStoreException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_5

    .line 141
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 143
    :cond_5
    throw v0
.end method
