.class public Lcom/amazon/identity/auth/device/ce;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/ci;


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final hU:Landroid/net/Uri;

.field public static final hV:Landroid/net/Uri;

.field public static final hW:[Ljava/lang/String;

.field private static final hX:[Ljava/lang/String;


# instance fields
.field private final dp:Lcom/amazon/identity/auth/device/ec;

.field private final hY:Lcom/amazon/identity/auth/device/ds;

.field private final o:Lcom/amazon/identity/auth/device/ed;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.amazon.sso.device.data"

    .line 25
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/ce;->hU:Landroid/net/Uri;

    const-string v0, "content://com.amazon.sso.device.data.directboot"

    .line 26
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/ce;->hV:Landroid/net/Uri;

    const-string v0, "exception"

    const-string v1, "exception_message"

    .line 35
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/ce;->hW:[Ljava/lang/String;

    const-string/jumbo v0, "value"

    const-string v1, "isPersistent"

    .line 37
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/ce;->hX:[Ljava/lang/String;

    .line 39
    const-class v0, Lcom/amazon/identity/auth/device/ce;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/ce;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/ed;)V
    .locals 2

    .line 46
    new-instance v0, Lcom/amazon/identity/auth/device/ec;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/ec;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/amazon/identity/auth/device/ds;

    invoke-direct {v1, p1}, Lcom/amazon/identity/auth/device/ds;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/identity/auth/device/ce;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/ec;Lcom/amazon/identity/auth/device/ds;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/ec;Lcom/amazon/identity/auth/device/ds;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/amazon/identity/auth/device/ce;->dp:Lcom/amazon/identity/auth/device/ec;

    .line 56
    iput-object p3, p0, Lcom/amazon/identity/auth/device/ce;->hY:Lcom/amazon/identity/auth/device/ds;

    .line 57
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ce;->o:Lcom/amazon/identity/auth/device/ed;

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/net/Uri;)Lcom/amazon/identity/auth/device/cf;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/DeviceDataStoreException;
        }
    .end annotation

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ce;->dp:Lcom/amazon/identity/auth/device/ec;

    .line 1080
    new-instance v1, Lcom/amazon/identity/auth/device/ce$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/amazon/identity/auth/device/ce$1;-><init>(Lcom/amazon/identity/auth/device/ce;Landroid/net/Uri;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0, p2, v1}, Lcom/amazon/identity/auth/device/ec;->a(Landroid/net/Uri;Lcom/amazon/identity/auth/device/dj;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/cf;
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/framework/RemoteMAPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 158
    sget-object p2, Lcom/amazon/identity/auth/device/ce;->TAG:Ljava/lang/String;

    const-string v0, "Got a RemoteMAPException"

    invoke-static {p2, v0, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/amazon/identity/auth/device/api/DeviceDataStoreException;

    if-eqz p2, :cond_0

    .line 161
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/api/DeviceDataStoreException;

    throw p1

    .line 165
    :cond_0
    new-instance p2, Lcom/amazon/identity/auth/device/api/DeviceDataStoreException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to query device data store: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/identity/auth/device/api/DeviceDataStoreException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method static synthetic a(Landroid/database/Cursor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/DeviceDataStoreException;
        }
    .end annotation

    const-string v0, "exception"

    .line 1172
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/hz;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "exception_message"

    .line 1173
    invoke-static {p0, v1}, Lcom/amazon/identity/auth/device/hz;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1175
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1183
    :try_start_0
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ir;->dt(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 1185
    instance-of v3, v0, Lcom/amazon/identity/auth/device/api/DeviceDataStoreException;

    if-eqz v3, :cond_0

    .line 1187
    check-cast v0, Lcom/amazon/identity/auth/device/api/DeviceDataStoreException;

    goto :goto_0

    .line 1191
    :cond_0
    new-instance v0, Lcom/amazon/identity/auth/device/api/DeviceDataStoreException;

    const-string v3, "The output of deserialized exception from DeviceDataProvider is not a DeviceDataStoreException instance. Original exception message is %s."

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/amazon/identity/auth/device/api/DeviceDataStoreException;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1198
    sget-object v3, Lcom/amazon/identity/auth/device/ce;->TAG:Ljava/lang/String;

    const-string v4, "Unable to deserialize exception from DeviceDataProvider"

    invoke-static {v3, v4, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1199
    new-instance v0, Lcom/amazon/identity/auth/device/api/DeviceDataStoreException;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const-string p0, "Unable to deserialize exception from DeviceDataProvider, exception message from DeviceDataProvider is %s."

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/api/DeviceDataStoreException;-><init>(Ljava/lang/String;)V

    .line 1202
    :goto_0
    throw v0

    :cond_1
    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/identity/auth/device/ce;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bJ()[Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/identity/auth/device/ce;->hX:[Ljava/lang/String;

    return-object v0
.end method

.method public static t(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ce;
    .locals 1

    .line 62
    new-instance v0, Lcom/amazon/identity/auth/device/ce;

    invoke-static {p0}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/ce;-><init>(Lcom/amazon/identity/auth/device/ed;)V

    return-object v0
.end method


# virtual methods
.method public aP(Ljava/lang/String;)Lcom/amazon/identity/auth/device/cf;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/DeviceDataStoreException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ce;->hY:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->dz()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/amazon/identity/auth/device/ce;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/ce;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    aput-object p1, v3, v1

    const-string v1, "%s try get device data in direct mode for %s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/amazon/identity/auth/device/ce;->hV:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/ce;->a(Ljava/lang/String;Landroid/net/Uri;)Lcom/amazon/identity/auth/device/cf;

    move-result-object p1

    return-object p1

    .line 73
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/ce;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/ce;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    aput-object p1, v3, v1

    const-string v1, "%s try get device data out of direct mode for %s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/amazon/identity/auth/device/ce;->hU:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/ce;->a(Ljava/lang/String;Landroid/net/Uri;)Lcom/amazon/identity/auth/device/cf;

    move-result-object p1

    return-object p1
.end method
