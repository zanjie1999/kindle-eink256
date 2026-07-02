.class public Lcom/amazon/kindle/krx/application/StandaloneDeviceInformation;
.super Lcom/amazon/kindle/krx/application/DeviceInformation;
.source "StandaloneDeviceInformation.java"


# static fields
.field private static final chromebookDisallowedOrientations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x9

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 12
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/application/StandaloneDeviceInformation;->chromebookDisallowedOrientations:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/IAuthenticationManager;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/application/DeviceInformation;-><init>(Lcom/amazon/kcp/application/IAuthenticationManager;)V

    return-void
.end method


# virtual methods
.method public isOrientationChangeSupported(I)Z
    .locals 2

    .line 31
    invoke-static {}, Lcom/amazon/kcp/application/StandaloneApplicationCapabilities;->isChromebook()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/amazon/kindle/krx/application/StandaloneDeviceInformation;->chromebookDisallowedOrientations:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_0
    return v1
.end method
