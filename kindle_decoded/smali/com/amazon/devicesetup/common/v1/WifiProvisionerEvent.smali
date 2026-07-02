.class public Lcom/amazon/devicesetup/common/v1/WifiProvisionerEvent;
.super Ljava/lang/Object;
.source "WifiProvisionerEvent.java"


# static fields
.field public static final ACCESS_POINT_CREATED:Ljava/lang/String; = "ACCESS_POINT_CREATED"

.field public static final ACCESS_POINT_DESTROYED:Ljava/lang/String; = "ACCESS_POINT_DESTROYED"

.field public static final ERROR:Ljava/lang/String; = "ERROR"

.field public static final PROBE_REQUEST_RECEIVED:Ljava/lang/String; = "PROBE_REQUEST_RECEIVED"

.field public static final PROBE_REQUEST_SCANNING_STARTED:Ljava/lang/String; = "PROBE_REQUEST_SCANNING_STARTED"

.field public static final PROBE_REQUEST_SCANNING_STOPPED:Ljava/lang/String; = "PROBE_REQUEST_SCANNING_STOPPED"

.field public static final PROVISIONEE_CONNECTED:Ljava/lang/String; = "PROVISIONEE_CONNECTED"

.field public static final PROVISIONEE_DISCONNECTED:Ljava/lang/String; = "PROVISIONEE_DISCONNECTED"

.field public static final SESSION_ENDED:Ljava/lang/String; = "SESSION_ENDED"

.field private static final values:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "PROBE_REQUEST_SCANNING_STARTED"

    const-string v1, "PROBE_REQUEST_SCANNING_STOPPED"

    const-string v2, "PROBE_REQUEST_RECEIVED"

    const-string v3, "ACCESS_POINT_CREATED"

    const-string v4, "ACCESS_POINT_DESTROYED"

    const-string v5, "PROVISIONEE_CONNECTED"

    const-string v6, "PROVISIONEE_DISCONNECTED"

    const-string v7, "SESSION_ENDED"

    const-string v8, "ERROR"

    .line 17
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/devicesetup/common/v1/WifiProvisionerEvent;->values:[Ljava/lang/String;

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

    .line 22
    sget-object v0, Lcom/amazon/devicesetup/common/v1/WifiProvisionerEvent;->values:[Ljava/lang/String;

    return-object v0
.end method
