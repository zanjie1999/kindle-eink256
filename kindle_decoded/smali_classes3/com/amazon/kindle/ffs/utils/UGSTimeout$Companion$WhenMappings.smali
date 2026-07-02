.class public final synthetic Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;->values()[Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;->ERROR:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;->SCANNING:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;->NETWORK_SELECTION:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v0, Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;->CONNECTING:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    invoke-static {}, Lcom/amazon/kindle/ffs/utils/Screen;->values()[Lcom/amazon/kindle/ffs/utils/Screen;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/amazon/kindle/ffs/utils/Screen;->DISCOVERY:Lcom/amazon/kindle/ffs/utils/Screen;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/amazon/kindle/ffs/utils/Screen;->PAIRING:Lcom/amazon/kindle/ffs/utils/Screen;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/amazon/kindle/ffs/utils/Screen;->WIFI_LIST:Lcom/amazon/kindle/ffs/utils/Screen;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    return-void
.end method
