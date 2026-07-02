.class synthetic Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiConfiguration$1;
.super Ljava/lang/Object;
.source "ProtoWifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$whisperjoin$common$sharedtypes$provisioning$data$wifi$WifiKeyManagement:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    invoke-static {}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;->values()[Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiConfiguration$1;->$SwitchMap$com$amazon$whisperjoin$common$sharedtypes$provisioning$data$wifi$WifiKeyManagement:[I

    :try_start_0
    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;->NONE:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiConfiguration$1;->$SwitchMap$com$amazon$whisperjoin$common$sharedtypes$provisioning$data$wifi$WifiKeyManagement:[I

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;->WEP:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiConfiguration$1;->$SwitchMap$com$amazon$whisperjoin$common$sharedtypes$provisioning$data$wifi$WifiKeyManagement:[I

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;->WPA_PSK:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
