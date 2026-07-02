.class public final Lcom/amazon/identity/auth/device/api/DeviceDataStore;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.api.DeviceDataStore"

.field private static fX:Lcom/amazon/identity/auth/device/api/DeviceDataStore;


# instance fields
.field private final fY:Lcom/amazon/identity/auth/device/ch;

.field private final fZ:Lcom/amazon/identity/auth/device/ci;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/amazon/identity/auth/device/api/MAPInit;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/MAPInit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPInit;->initialize()V

    .line 33
    invoke-static {}, Lcom/amazon/identity/auth/device/ch;->bO()Lcom/amazon/identity/auth/device/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/api/DeviceDataStore;->fY:Lcom/amazon/identity/auth/device/ch;

    .line 34
    invoke-static {p1}, Lcom/amazon/identity/auth/device/cj;->w(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ci;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/DeviceDataStore;->fZ:Lcom/amazon/identity/auth/device/ci;

    return-void
.end method

.method public static generateNewInstance(Landroid/content/Context;)V
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 61
    new-instance v0, Lcom/amazon/identity/auth/device/api/DeviceDataStore;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/api/DeviceDataStore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/DeviceDataStore;->fX:Lcom/amazon/identity/auth/device/api/DeviceDataStore;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/DeviceDataStore;
    .locals 2
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const-class v0, Lcom/amazon/identity/auth/device/api/DeviceDataStore;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/api/DeviceDataStore;->fX:Lcom/amazon/identity/auth/device/api/DeviceDataStore;

    if-nez v1, :cond_0

    .line 48
    invoke-static {p0}, Lcom/amazon/identity/auth/device/api/DeviceDataStore;->generateNewInstance(Landroid/content/Context;)V

    .line 51
    :cond_0
    sget-object p0, Lcom/amazon/identity/auth/device/api/DeviceDataStore;->fX:Lcom/amazon/identity/auth/device/api/DeviceDataStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/DeviceDataStore;->fY:Lcom/amazon/identity/auth/device/ch;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ch;->O()V

    return-void
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/DeviceDataStoreException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 92
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/DeviceDataStore;->fY:Lcom/amazon/identity/auth/device/ch;

    invoke-virtual {v1, p1}, Lcom/amazon/identity/auth/device/ch;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/DeviceDataStore;->fY:Lcom/amazon/identity/auth/device/ch;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/ch;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "DeviceDataStore:getValue"

    .line 97
    invoke-static {v1}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v1

    .line 100
    :try_start_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/DeviceDataStore;->fZ:Lcom/amazon/identity/auth/device/ci;

    invoke-interface {v2, p1}, Lcom/amazon/identity/auth/device/ci;->aP(Ljava/lang/String;)Lcom/amazon/identity/auth/device/cf;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 109
    iget-object v4, v2, Lcom/amazon/identity/auth/device/cf;->value:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 115
    iget-boolean v0, v2, Lcom/amazon/identity/auth/device/cf;->ib:Z

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/DeviceDataStore;->fY:Lcom/amazon/identity/auth/device/ch;

    invoke-virtual {v0, p1, v4}, Lcom/amazon/identity/auth/device/ch;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":Null"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    .line 123
    sget-object v2, Lcom/amazon/identity/auth/device/api/DeviceDataStore;->TAG:Ljava/lang/String;

    const-string v5, "Getting null value for key %s "

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {v2, v5, v3}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ej;->ea()V

    return-object v4

    :cond_3
    :try_start_1
    const-string v2, "Key %s was not found in the device data store"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    .line 104
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 105
    sget-object v0, Lcom/amazon/identity/auth/device/api/DeviceDataStore;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v0, Lcom/amazon/identity/auth/device/api/DeviceDataStoreException;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/api/DeviceDataStoreException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 130
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ej;->ea()V

    .line 131
    throw p1

    :cond_4
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "Key passed in is null"

    .line 87
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 88
    sget-object v0, Lcom/amazon/identity/auth/device/api/DeviceDataStore;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v0, Lcom/amazon/identity/auth/device/api/DeviceDataStoreException;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/api/DeviceDataStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
