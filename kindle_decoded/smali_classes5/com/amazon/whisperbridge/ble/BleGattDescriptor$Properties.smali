.class public final enum Lcom/amazon/whisperbridge/ble/BleGattDescriptor$Properties;
.super Ljava/lang/Enum;
.source "BleGattDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperbridge/ble/BleGattDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Properties"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperbridge/ble/BleGattDescriptor$Properties;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperbridge/ble/BleGattDescriptor$Properties;

.field public static final enum READ:Lcom/amazon/whisperbridge/ble/BleGattDescriptor$Properties;

.field public static final enum WRITE:Lcom/amazon/whisperbridge/ble/BleGattDescriptor$Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 24
    new-instance v0, Lcom/amazon/whisperbridge/ble/BleGattDescriptor$Properties;

    const/4 v1, 0x0

    const-string v2, "READ"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whisperbridge/ble/BleGattDescriptor$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/ble/BleGattDescriptor$Properties;->READ:Lcom/amazon/whisperbridge/ble/BleGattDescriptor$Properties;

    .line 25
    new-instance v0, Lcom/amazon/whisperbridge/ble/BleGattDescriptor$Properties;

    const/4 v2, 0x1

    const-string v3, "WRITE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whisperbridge/ble/BleGattDescriptor$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/ble/BleGattDescriptor$Properties;->WRITE:Lcom/amazon/whisperbridge/ble/BleGattDescriptor$Properties;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/whisperbridge/ble/BleGattDescriptor$Properties;

    .line 23
    sget-object v4, Lcom/amazon/whisperbridge/ble/BleGattDescriptor$Properties;->READ:Lcom/amazon/whisperbridge/ble/BleGattDescriptor$Properties;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/whisperbridge/ble/BleGattDescriptor$Properties;->$VALUES:[Lcom/amazon/whisperbridge/ble/BleGattDescriptor$Properties;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperbridge/ble/BleGattDescriptor$Properties;
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/whisperbridge/ble/BleGattDescriptor$Properties;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperbridge/ble/BleGattDescriptor$Properties;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperbridge/ble/BleGattDescriptor$Properties;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/whisperbridge/ble/BleGattDescriptor$Properties;->$VALUES:[Lcom/amazon/whisperbridge/ble/BleGattDescriptor$Properties;

    invoke-virtual {v0}, [Lcom/amazon/whisperbridge/ble/BleGattDescriptor$Properties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperbridge/ble/BleGattDescriptor$Properties;

    return-object v0
.end method
