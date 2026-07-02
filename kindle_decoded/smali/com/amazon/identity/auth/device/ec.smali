.class public Lcom/amazon/identity/auth/device/ec;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.ec"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/ec;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ec;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/amazon/identity/auth/device/ec;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/ec;)Landroid/content/ContentResolver;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/identity/auth/device/ec;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/net/Uri;Lcom/amazon/identity/auth/device/dj;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "Lcom/amazon/identity/auth/device/dj<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/framework/RemoteMAPException;
        }
    .end annotation

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ec;->mContext:Landroid/content/Context;

    .line 1145
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1146
    invoke-static {p1, v1}, Lcom/amazon/identity/auth/device/ek;->a(Landroid/net/Uri;Landroid/content/pm/PackageManager;)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 1155
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/ix;->C(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 97
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 100
    :try_start_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_0

    .line 105
    iget-object v5, p0, Lcom/amazon/identity/auth/device/ec;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    goto :goto_1

    .line 109
    :cond_0
    iget-object v5, p0, Lcom/amazon/identity/auth/device/ec;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 112
    :goto_1
    invoke-interface {p2, v1}, Lcom/amazon/identity/auth/device/dj;->b(Landroid/content/ContentProviderClient;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Lcom/amazon/identity/auth/device/api/DeviceDataStoreException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 139
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 143
    :cond_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_0
    move-exception v5

    const-string v6, "Got exception querying "

    if-gtz v0, :cond_4

    .line 131
    :try_start_2
    sget-object v7, Lcom/amazon/identity/auth/device/ec;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ". Retrying."

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "ContentProviderRetry"

    new-array v6, v2, [Ljava/lang/String;

    .line 132
    invoke-static {v5, v6}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    .line 139
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 143
    :cond_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-gtz v0, :cond_3

    const-wide/16 v3, 0xa

    .line 150
    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 155
    sget-object v3, Lcom/amazon/identity/auth/device/ec;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Got an InterruptedException while retrying calling "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_4
    :try_start_4
    sget-object p2, Lcom/amazon/identity/auth/device/ec;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Failing after "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " retries."

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v5}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "ContentProviderFailure"

    new-array p2, v2, [Ljava/lang/String;

    .line 125
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 126
    new-instance p1, Lcom/amazon/identity/auth/device/framework/RemoteMAPException;

    invoke-direct {p1, v5}, Lcom/amazon/identity/auth/device/framework/RemoteMAPException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p1

    .line 118
    new-instance p2, Lcom/amazon/identity/auth/device/framework/RemoteMAPException;

    invoke-direct {p2, p1}, Lcom/amazon/identity/auth/device/framework/RemoteMAPException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    if-eqz v1, :cond_5

    .line 139
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 143
    :cond_5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    throw p1

    .line 1151
    :cond_6
    :try_start_5
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Authority %s does not exist on the device"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1152
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 1151
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    move-exception p1

    .line 83
    new-instance p2, Lcom/amazon/identity/auth/device/framework/RemoteMAPException;

    invoke-direct {p2, p1}, Lcom/amazon/identity/auth/device/framework/RemoteMAPException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/framework/RemoteMAPException;
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/amazon/identity/auth/device/ec$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/ec$1;-><init>(Lcom/amazon/identity/auth/device/ec;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/amazon/identity/auth/device/ec;->a(Landroid/net/Uri;Lcom/amazon/identity/auth/device/dj;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/framework/RemoteMAPException;
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/amazon/identity/auth/device/ec$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/identity/auth/device/ec$2;-><init>(Lcom/amazon/identity/auth/device/ec;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-virtual {p0, p1, v0}, Lcom/amazon/identity/auth/device/ec;->a(Landroid/net/Uri;Lcom/amazon/identity/auth/device/dj;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    return-object p1
.end method
