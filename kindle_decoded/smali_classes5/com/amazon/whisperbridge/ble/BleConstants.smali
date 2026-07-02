.class public final Lcom/amazon/whisperbridge/ble/BleConstants;
.super Ljava/lang/Object;
.source "BleConstants.java"


# static fields
.field public static final CLIENT_CHARACTERISTIC_CONFIGURATION_DESCRIPTOR_UUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    .line 29
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperbridge/ble/BleConstants;->CLIENT_CHARACTERISTIC_CONFIGURATION_DESCRIPTOR_UUID:Ljava/util/UUID;

    return-void
.end method
