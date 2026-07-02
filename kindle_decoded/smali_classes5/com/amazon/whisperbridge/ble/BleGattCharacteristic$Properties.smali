.class public final enum Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;
.super Ljava/lang/Enum;
.source "BleGattCharacteristic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Properties"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;

.field public static final enum INDICATE:Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;

.field public static final enum NOTIFY:Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;

.field public static final enum READ:Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;

.field public static final enum WRITE:Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 31
    new-instance v0, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;

    const/4 v1, 0x0

    const-string v2, "READ"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;->READ:Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;

    .line 32
    new-instance v0, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;

    const/4 v2, 0x1

    const-string v3, "WRITE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;->WRITE:Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;

    .line 33
    new-instance v0, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;

    const/4 v3, 0x2

    const-string v4, "NOTIFY"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;->NOTIFY:Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;

    .line 34
    new-instance v0, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;

    const/4 v4, 0x3

    const-string v5, "INDICATE"

    invoke-direct {v0, v5, v4}, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;->INDICATE:Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;

    .line 30
    sget-object v6, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;->READ:Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;->WRITE:Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;->NOTIFY:Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;->$VALUES:[Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;
    .locals 1

    .line 30
    const-class v0, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;
    .locals 1

    .line 30
    sget-object v0, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;->$VALUES:[Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;

    invoke-virtual {v0}, [Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;

    return-object v0
.end method
