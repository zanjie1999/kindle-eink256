.class public Lcom/amazon/identity/auth/device/api/MAPDebugManager;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.api.MAPDebugManager"


# instance fields
.field private final o:Lcom/amazon/identity/auth/device/ed;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPDebugManager;->o:Lcom/amazon/identity/auth/device/ed;

    return-void
.end method


# virtual methods
.method public getDeviceSnapshot()Ljava/lang/String;
    .locals 2

    .line 51
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPDebugManager;->TAG:Ljava/lang/String;

    const-string v1, "GetDeviceSnapshot API called"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPDebugManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ed;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gc;->getDeviceSnapshot()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
