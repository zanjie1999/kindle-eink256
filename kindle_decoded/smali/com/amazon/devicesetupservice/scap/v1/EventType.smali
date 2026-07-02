.class public Lcom/amazon/devicesetupservice/scap/v1/EventType;
.super Ljava/lang/Object;
.source "EventType.java"


# static fields
.field public static final CBL_TOKEN_GENERATED:Ljava/lang/String; = "CBL_TOKEN_GENERATED"

.field public static final CHARACTERISTIC_DISCOVERED:Ljava/lang/String; = "CHARACTERISTIC_DISCOVERED"

.field public static final CHARACTERISTIC_DISCOVERY_DONE:Ljava/lang/String; = "CHARACTERISTIC_DISCOVERY_DONE"

.field public static final CHARACTERISTIC_READ:Ljava/lang/String; = "CHARACTERISTIC_READ"

.field public static final CHARACTERISTIC_SUBSCRIBED:Ljava/lang/String; = "CHARACTERISTIC_SUBSCRIBED"

.field public static final CHARACTERISTIC_UNSUBSCRIBED:Ljava/lang/String; = "CHARACTERISTIC_UNSUBSCRIBED"

.field public static final CHARACTERISTIC_UPDATED:Ljava/lang/String; = "CHARACTERISTIC_UPDATED"

.field public static final CHARACTERISTIC_WRITTEN:Ljava/lang/String; = "CHARACTERISTIC_WRITTEN"

.field public static final CONNECTION_PARAMETERS_UPDATED:Ljava/lang/String; = "CONNECTION_PARAMETERS_UPDATED"

.field public static final ERROR:Ljava/lang/String; = "ERROR"

.field public static final HTTP_BACK_OFF_RECOVERY:Ljava/lang/String; = "HTTP_BACK_OFF_RECOVERY"

.field public static final PERIPHERAL_CONNECTED:Ljava/lang/String; = "PERIPHERAL_CONNECTED"

.field public static final PERIPHERAL_DISCONNECTED:Ljava/lang/String; = "PERIPHERAL_DISCONNECTED"

.field public static final RECEIVED_SCAN_RESULT:Ljava/lang/String; = "RECEIVED_SCAN_RESULT"

.field public static final SCANNING_STARTED:Ljava/lang/String; = "SCANNING_STARTED"

.field public static final SCANNING_STOPPED:Ljava/lang/String; = "SCANNING_STOPPED"

.field public static final SERVICE_DISCOVERED:Ljava/lang/String; = "SERVICE_DISCOVERED"

.field public static final SERVICE_DISCOVERY_DONE:Ljava/lang/String; = "SERVICE_DISCOVERY_DONE"

.field public static final SESSION_ENDED:Ljava/lang/String; = "SESSION_ENDED"

.field public static final SESSION_STARTED:Ljava/lang/String; = "SESSION_STARTED"

.field public static final SMART_HOME_CREDENTIALS_SET:Ljava/lang/String; = "SMART_HOME_CREDENTIALS_SET"

.field public static final TIMEOUT:Ljava/lang/String; = "TIMEOUT"

.field private static final values:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    const-string v0, "SESSION_STARTED"

    const-string v1, "SESSION_ENDED"

    const-string v2, "SCANNING_STARTED"

    const-string v3, "SCANNING_STOPPED"

    const-string v4, "RECEIVED_SCAN_RESULT"

    const-string v5, "PERIPHERAL_CONNECTED"

    const-string v6, "PERIPHERAL_DISCONNECTED"

    const-string v7, "CONNECTION_PARAMETERS_UPDATED"

    const-string v8, "SERVICE_DISCOVERED"

    const-string v9, "SERVICE_DISCOVERY_DONE"

    const-string v10, "CHARACTERISTIC_DISCOVERED"

    const-string v11, "CHARACTERISTIC_DISCOVERY_DONE"

    const-string v12, "CHARACTERISTIC_SUBSCRIBED"

    const-string v13, "CHARACTERISTIC_UNSUBSCRIBED"

    const-string v14, "CHARACTERISTIC_READ"

    const-string v15, "CHARACTERISTIC_WRITTEN"

    const-string v16, "CHARACTERISTIC_UPDATED"

    const-string v17, "CBL_TOKEN_GENERATED"

    const-string v18, "SMART_HOME_CREDENTIALS_SET"

    const-string v19, "TIMEOUT"

    const-string v20, "HTTP_BACK_OFF_RECOVERY"

    const-string v21, "ERROR"

    .line 30
    filled-new-array/range {v0 .. v21}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/devicesetupservice/scap/v1/EventType;->values:[Ljava/lang/String;

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

    .line 35
    sget-object v0, Lcom/amazon/devicesetupservice/scap/v1/EventType;->values:[Ljava/lang/String;

    return-object v0
.end method
