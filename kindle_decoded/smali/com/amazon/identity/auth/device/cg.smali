.class public Lcom/amazon/identity/auth/device/cg;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/ci;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.cg"

.field private static ic:Lcom/amazon/identity/auth/device/cg;


# instance fields
.field private final dB:Lcom/amazon/identity/auth/device/aq;

.field private final mContext:Landroid/content/Context;

.field private final w:Lcom/amazon/identity/auth/device/gc;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/cg;->mContext:Landroid/content/Context;

    .line 46
    new-instance p1, Lcom/amazon/identity/auth/device/aq;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/cg;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/aq;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/cg;->dB:Lcom/amazon/identity/auth/device/aq;

    .line 48
    iget-object p1, p0, Lcom/amazon/identity/auth/device/cg;->mContext:Landroid/content/Context;

    const-string v0, "dcp_data_storage_factory"

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/gd;

    .line 50
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/gd;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/cg;->w:Lcom/amazon/identity/auth/device/gc;

    return-void
.end method

.method public static generateNewInstance(Landroid/content/Context;)V
    .locals 1

    .line 87
    new-instance v0, Lcom/amazon/identity/auth/device/cg;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/cg;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amazon/identity/auth/device/cg;->ic:Lcom/amazon/identity/auth/device/cg;

    return-void
.end method

.method public static declared-synchronized u(Landroid/content/Context;)Lcom/amazon/identity/auth/device/cg;
    .locals 2

    const-class v0, Lcom/amazon/identity/auth/device/cg;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/cg;->ic:Lcom/amazon/identity/auth/device/cg;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amazon/identity/auth/device/jh;->gT()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    :cond_0
    invoke-static {p0}, Lcom/amazon/identity/auth/device/cg;->generateNewInstance(Landroid/content/Context;)V

    .line 78
    :cond_1
    sget-object p0, Lcom/amazon/identity/auth/device/cg;->ic:Lcom/amazon/identity/auth/device/cg;
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
.method public aP(Ljava/lang/String;)Lcom/amazon/identity/auth/device/cf;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/DeviceDataStoreException;
        }
    .end annotation

    .line 139
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ij;->dk(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ij;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Device Serial Number"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/cg;->bN()Lcom/amazon/identity/auth/device/cf;

    move-result-object p1

    return-object p1

    .line 144
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/cg;->e(Lcom/amazon/identity/auth/device/ij;)Lcom/amazon/identity/auth/device/cf;

    move-result-object p1

    return-object p1

    .line 148
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Default COR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/cg;->bK()Lcom/amazon/identity/auth/device/cf;

    move-result-object p1

    return-object p1

    .line 152
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Default PFM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 154
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/cg;->bL()Lcom/amazon/identity/auth/device/cf;

    move-result-object p1

    return-object p1

    .line 156
    :cond_3
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Client Id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 158
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/cg;->bM()Lcom/amazon/identity/auth/device/cf;

    move-result-object p1

    return-object p1

    .line 1177
    :cond_4
    iget-object v0, p0, Lcom/amazon/identity/auth/device/cg;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mw;->aX(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1179
    iget-object v0, p0, Lcom/amazon/identity/auth/device/cg;->w:Lcom/amazon/identity/auth/device/gc;

    const-string v2, "device.metadata"

    invoke-virtual {v0, v2, p1}, Lcom/amazon/identity/auth/device/gc;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1182
    sget-object v0, Lcom/amazon/identity/auth/device/cg;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device attribute "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found in datastore"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 1185
    :cond_5
    new-instance p1, Lcom/amazon/identity/auth/device/cf;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/amazon/identity/auth/device/cf;-><init>(Ljava/lang/String;Z)V

    return-object p1

    .line 1189
    :cond_6
    sget-object v0, Lcom/amazon/identity/auth/device/cg;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Key : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found. Generic keys are not supported on this platform."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-object v1
.end method

.method protected bK()Lcom/amazon/identity/auth/device/cf;
    .locals 3

    .line 93
    new-instance v0, Lcom/amazon/identity/auth/device/cf;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/cg;->dB:Lcom/amazon/identity/auth/device/aq;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/aq;->as()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/cf;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected bL()Lcom/amazon/identity/auth/device/cf;
    .locals 3

    .line 98
    new-instance v0, Lcom/amazon/identity/auth/device/cf;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/cg;->dB:Lcom/amazon/identity/auth/device/aq;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/aq;->at()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/cf;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected bM()Lcom/amazon/identity/auth/device/cf;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/DeviceDataStoreException;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/cg;->bN()Lcom/amazon/identity/auth/device/cf;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/identity/auth/device/cf;->value:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/amazon/identity/auth/device/cg;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;->CentralDeviceType:Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/it;->c(Landroid/content/Context;Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;)Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v1, Lcom/amazon/identity/auth/device/cf;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/amazon/identity/auth/device/cf;-><init>(Ljava/lang/String;Z)V

    return-object v1
.end method

.method protected bN()Lcom/amazon/identity/auth/device/cf;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/DeviceDataStoreException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/amazon/identity/auth/device/cg;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/cj;->x(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ea;

    move-result-object v0

    .line 115
    :try_start_0
    new-instance v1, Lcom/amazon/identity/auth/device/cf;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ea;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/amazon/identity/auth/device/cf;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 120
    :catch_0
    new-instance v0, Lcom/amazon/identity/auth/device/api/DeviceDataStoreException;

    const-string v1, "Fetching DSN on this device is not supported while unregistered."

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/DeviceDataStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected e(Lcom/amazon/identity/auth/device/ij;)Lcom/amazon/identity/auth/device/cf;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/DeviceDataStoreException;
        }
    .end annotation

    .line 126
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 127
    iget-object v0, p0, Lcom/amazon/identity/auth/device/cg;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/ib;->s(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/amazon/identity/auth/device/cf;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/amazon/identity/auth/device/cf;-><init>(Ljava/lang/String;Z)V

    return-object v0

    .line 130
    :cond_0
    new-instance p1, Lcom/amazon/identity/auth/device/api/DeviceDataStoreException;

    const-string v0, "Value of device type is null.  This is expected on Grover V1 for the central device Type when the device is not registered."

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/api/DeviceDataStoreException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
