.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/ble/ScanFilters;
.super Ljava/lang/Object;
.source "ScanFilters.java"


# static fields
.field private static final BOND_STATUS:B = 0x5t

.field private static final PHILIPS_PARCEL_UUID:Landroid/os/ParcelUuid;

.field private static final PLATFORM_ID:B = 0x10t

.field private static final SERVICE_DATA_FILTER_MASK:[B

.field private static final SERVICE_DATA_FILTER_VALUE:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "0000FE0F-0000-1000-8000-00805f9b34fb"

    .line 18
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/ble/ScanFilters;->PHILIPS_PARCEL_UUID:Landroid/os/ParcelUuid;

    const/4 v0, 0x5

    new-array v1, v0, [B

    .line 24
    fill-array-data v1, :array_0

    sput-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/ble/ScanFilters;->SERVICE_DATA_FILTER_VALUE:[B

    new-array v0, v0, [B

    .line 26
    fill-array-data v0, :array_1

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/ble/ScanFilters;->SERVICE_DATA_FILTER_MASK:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x10t
        0x0t
        0x0t
        0x5t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        -0x1t
        0x0t
        0x0t
        0xft
    .end array-data
.end method

.method public static getDefaultScanFilters()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleConstants;->WHISPER_JOIN_PARCEL_UUID:Landroid/os/ParcelUuid;

    const/4 v2, 0x1

    new-array v3, v2, [B

    const/4 v4, 0x0

    aput-byte v4, v3, v4

    .line 32
    invoke-virtual {v0, v1, v3}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v0

    .line 33
    new-instance v1, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v1}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    sget-object v3, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleConstants;->WHISPER_JOIN_PARCEL_UUID:Landroid/os/ParcelUuid;

    new-array v5, v2, [B

    aput-byte v2, v5, v4

    .line 34
    invoke-virtual {v1, v3, v5}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/bluetooth/le/ScanFilter;

    .line 35
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getScanFiltersForWJandPhilips()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleConstants;->WHISPER_JOIN_PARCEL_UUID:Landroid/os/ParcelUuid;

    const/4 v2, 0x1

    new-array v3, v2, [B

    const/4 v4, 0x0

    aput-byte v4, v3, v4

    .line 41
    invoke-virtual {v0, v1, v3}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v0

    .line 43
    new-instance v1, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v1}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    sget-object v3, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleConstants;->WHISPER_JOIN_PARCEL_UUID:Landroid/os/ParcelUuid;

    new-array v5, v2, [B

    aput-byte v2, v5, v4

    .line 44
    invoke-virtual {v1, v3, v5}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v1

    .line 47
    new-instance v3, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v3}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    sget-object v5, Lcom/amazon/whisperjoin/deviceprovisioningservice/ble/ScanFilters;->PHILIPS_PARCEL_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v3, v5}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v3

    sget-object v5, Lcom/amazon/whisperjoin/deviceprovisioningservice/ble/ScanFilters;->PHILIPS_PARCEL_UUID:Landroid/os/ParcelUuid;

    sget-object v6, Lcom/amazon/whisperjoin/deviceprovisioningservice/ble/ScanFilters;->SERVICE_DATA_FILTER_VALUE:[B

    sget-object v7, Lcom/amazon/whisperjoin/deviceprovisioningservice/ble/ScanFilters;->SERVICE_DATA_FILTER_MASK:[B

    .line 48
    invoke-virtual {v3, v5, v6, v7}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v3

    .line 49
    invoke-virtual {v3}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v3

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/bluetooth/le/ScanFilter;

    aput-object v0, v5, v4

    aput-object v1, v5, v2

    const/4 v0, 0x2

    aput-object v3, v5, v0

    .line 51
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
