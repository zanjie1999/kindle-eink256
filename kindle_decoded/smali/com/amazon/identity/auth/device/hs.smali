.class public final Lcom/amazon/identity/auth/device/hs;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.hs"

.field private static qC:Lcom/amazon/identity/auth/device/hs;


# instance fields
.field public final kH:Ljava/lang/String;

.field public final qD:I

.field public final qE:I

.field public final qF:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xd

    .line 29
    iput v0, p0, Lcom/amazon/identity/auth/device/hs;->qD:I

    const v1, 0xc352

    .line 30
    iput v1, p0, Lcom/amazon/identity/auth/device/hs;->qE:I

    .line 31
    iput-object p1, p0, Lcom/amazon/identity/auth/device/hs;->kH:Ljava/lang/String;

    const p1, 0x989680

    mul-int v0, v0, p1

    add-int/2addr v0, v1

    .line 33
    iput v0, p0, Lcom/amazon/identity/auth/device/hs;->qF:I

    return-void
.end method

.method public static declared-synchronized gu()Lcom/amazon/identity/auth/device/hs;
    .locals 3

    const-class v0, Lcom/amazon/identity/auth/device/hs;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/hs;->qC:Lcom/amazon/identity/auth/device/hs;

    if-eqz v1, :cond_0

    .line 46
    sget-object v1, Lcom/amazon/identity/auth/device/hs;->qC:Lcom/amazon/identity/auth/device/hs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 49
    :cond_0
    :try_start_1
    new-instance v1, Lcom/amazon/identity/auth/device/hs;

    const-string v2, "MAPAndroidLib-1.3.1451.0"

    invoke-direct {v1, v2}, Lcom/amazon/identity/auth/device/hs;-><init>(Ljava/lang/String;)V

    .line 50
    sput-object v1, Lcom/amazon/identity/auth/device/hs;->qC:Lcom/amazon/identity/auth/device/hs;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static gv()Ljava/lang/String;
    .locals 1

    .line 55
    invoke-static {}, Lcom/amazon/identity/auth/device/hs;->gu()Lcom/amazon/identity/auth/device/hs;

    move-result-object v0

    iget v0, v0, Lcom/amazon/identity/auth/device/hs;->qF:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/amazon/identity/auth/device/hs;->qF:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/hs;->kH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
