.class public Lcom/amazon/devicesetupservice/scap/v1/ActionType;
.super Ljava/lang/Object;
.source "ActionType.java"


# static fields
.field public static final BLACKLIST_PERIPHERALS:Ljava/lang/String; = "BLACKLIST_PERIPHERALS"

.field public static final CONNECT_PERIPHERAL:Ljava/lang/String; = "CONNECT_PERIPHERAL"

.field public static final DISCONNECT_PERIPHERAL:Ljava/lang/String; = "DISCONNECT_PERIPHERAL"

.field public static final END_SESSION:Ljava/lang/String; = "END_SESSION"

.field public static final GENERATE_CBL_TOKEN:Ljava/lang/String; = "GENERATE_CBL_TOKEN"

.field public static final READ_CHARACTERISTIC:Ljava/lang/String; = "READ_CHARACTERISTIC"

.field public static final SET_SMARTHOME_CREDENTIALS:Ljava/lang/String; = "SET_SMARTHOME_CREDENTIALS"

.field public static final START_CHARACTERISTIC_DISCOVERY:Ljava/lang/String; = "START_CHARACTERISTIC_DISCOVERY"

.field public static final START_SCANNING:Ljava/lang/String; = "START_SCANNING"

.field public static final START_SERVICE_DISCOVERY:Ljava/lang/String; = "START_SERVICE_DISCOVERY"

.field public static final STOP_CHARACTERISTIC_DISCOVERY:Ljava/lang/String; = "STOP_CHARACTERISTIC_DISCOVERY"

.field public static final STOP_SCANNING:Ljava/lang/String; = "STOP_SCANNING"

.field public static final STOP_SERVICE_DISCOVERY:Ljava/lang/String; = "STOP_SERVICE_DISCOVERY"

.field public static final SUBSCRIBE_CHARACTERISTIC:Ljava/lang/String; = "SUBSCRIBE_CHARACTERISTIC"

.field public static final UNSUBSCRIBE_CHARACTERISTIC:Ljava/lang/String; = "UNSUBSCRIBE_CHARACTERISTIC"

.field public static final WAIT:Ljava/lang/String; = "WAIT"

.field public static final WRITE_CHARACTERISTIC:Ljava/lang/String; = "WRITE_CHARACTERISTIC"

.field private static final values:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v0, "WAIT"

    const-string v1, "END_SESSION"

    const-string v2, "START_SCANNING"

    const-string v3, "STOP_SCANNING"

    const-string v4, "CONNECT_PERIPHERAL"

    const-string v5, "DISCONNECT_PERIPHERAL"

    const-string v6, "START_SERVICE_DISCOVERY"

    const-string v7, "STOP_SERVICE_DISCOVERY"

    const-string v8, "START_CHARACTERISTIC_DISCOVERY"

    const-string v9, "STOP_CHARACTERISTIC_DISCOVERY"

    const-string v10, "SUBSCRIBE_CHARACTERISTIC"

    const-string v11, "UNSUBSCRIBE_CHARACTERISTIC"

    const-string v12, "READ_CHARACTERISTIC"

    const-string v13, "WRITE_CHARACTERISTIC"

    const-string v14, "BLACKLIST_PERIPHERALS"

    const-string v15, "GENERATE_CBL_TOKEN"

    const-string v16, "SET_SMARTHOME_CREDENTIALS"

    .line 25
    filled-new-array/range {v0 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/devicesetupservice/scap/v1/ActionType;->values:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static values()[Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/amazon/devicesetupservice/scap/v1/ActionType;->values:[Ljava/lang/String;

    return-object v0
.end method
