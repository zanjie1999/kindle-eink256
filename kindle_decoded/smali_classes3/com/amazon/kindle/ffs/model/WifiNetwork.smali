.class public final Lcom/amazon/kindle/ffs/model/WifiNetwork;
.super Ljava/lang/Object;
.source "WifiNetwork.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/ffs/model/WifiNetwork$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/ffs/model/WifiNetwork$Companion;


# instance fields
.field private configuration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

.field private connecting:Z

.field private disabled:Z

.field private elementsNumber:I

.field private keyManagement:Ljava/lang/String;

.field private known:Z

.field private name:Ljava/lang/String;

.field private open:Z

.field private positionNumber:I

.field private requestAccessibilityFocus:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private signal:Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/ffs/model/WifiNetwork$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/ffs/model/WifiNetwork$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->Companion:Lcom/amazon/kindle/ffs/model/WifiNetwork$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;IIZ)V
    .locals 12

    const-string v0, "wifi"

    move-object v1, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->getSsid()Ljava/lang/String;

    move-result-object v2

    const-string v0, "wifi.ssid"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->Companion:Lcom/amazon/kindle/ffs/model/WifiNetwork$Companion;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;->getScanResult()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;

    move-result-object v3

    const-string v4, "wifi.scanResult"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;->getSignalStrength()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amazon/kindle/ffs/model/WifiNetwork$Companion;->signalForDecibels$ffs_debug(I)Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;

    move-result-object v3

    .line 36
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->getKeyManagement()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    move-result-object v0

    sget-object v4, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;->NONE:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 37
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->getKeyManagement()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 42
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;->getWifiConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object v10

    move-object v1, p0

    move v8, p2

    move v9, p3

    move/from16 v11, p4

    .line 33
    invoke-direct/range {v1 .. v11}, Lcom/amazon/kindle/ffs/model/WifiNetwork;-><init>(Ljava/lang/String;Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;ZLjava/lang/String;ZZIILcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;ZLjava/lang/String;ZZIILcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;Z)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signal"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyManagement"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->signal:Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;

    iput-boolean p3, p0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->open:Z

    iput-object p4, p0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->keyManagement:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->connecting:Z

    iput-boolean p6, p0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->disabled:Z

    iput p7, p0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->positionNumber:I

    iput p8, p0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->elementsNumber:I

    iput-object p9, p0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->configuration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    iput-boolean p10, p0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->known:Z

    .line 64
    sget-object p1, Lcom/amazon/kindle/ffs/model/WifiNetwork$requestAccessibilityFocus$1;->INSTANCE:Lcom/amazon/kindle/ffs/model/WifiNetwork$requestAccessibilityFocus$1;

    iput-object p1, p0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->requestAccessibilityFocus:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final getConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->configuration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    return-object v0
.end method

.method public final getConnecting()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->connecting:Z

    return v0
.end method

.method public final getDisabled()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->disabled:Z

    return v0
.end method

.method public final getElementsNumber()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->elementsNumber:I

    return v0
.end method

.method public final getKeyManagement()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->keyManagement:Ljava/lang/String;

    return-object v0
.end method

.method public final getKnown()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->known:Z

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getOpen()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->open:Z

    return v0
.end method

.method public final getPositionNumber()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->positionNumber:I

    return v0
.end method

.method public final getRequestAccessibilityFocus()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->requestAccessibilityFocus:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getSignal()Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->signal:Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;

    return-object v0
.end method

.method public final setConfiguration(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->configuration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    return-void
.end method

.method public final setConnecting(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->connecting:Z

    return-void
.end method

.method public final setDisabled(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->disabled:Z

    return-void
.end method

.method public final setElementsNumber(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->elementsNumber:I

    return-void
.end method

.method public final setKeyManagement(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->keyManagement:Ljava/lang/String;

    return-void
.end method

.method public final setKnown(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->known:Z

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->name:Ljava/lang/String;

    return-void
.end method

.method public final setOpen(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->open:Z

    return-void
.end method

.method public final setPositionNumber(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->positionNumber:I

    return-void
.end method

.method public final setRequestAccessibilityFocus(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->requestAccessibilityFocus:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setSignal(Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->signal:Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/kindle/ffs/model/WifiNetwork;->name:Ljava/lang/String;

    return-object v0
.end method
