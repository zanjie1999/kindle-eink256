.class public Lcom/amazon/devicesetupservice/reporting/NetworkState;
.super Ljava/lang/Object;
.source "NetworkState.java"


# static fields
.field public static final ASSOCIATED:Ljava/lang/String; = "ASSOCIATED"

.field public static final CONNECTED:Ljava/lang/String; = "CONNECTED"

.field public static final CONNECTED_BEHIND_CAPTIVE_PORTAL:Ljava/lang/String; = "CONNECTED_BEHIND_CAPTIVE_PORTAL"

.field public static final CONNECTED_LIMITED_CONNECTIVITY:Ljava/lang/String; = "CONNECTED_LIMITED_CONNECTIVITY"

.field public static final CONNECTING:Ljava/lang/String; = "CONNECTING"

.field public static final CONNECTION_FAILED_AP_NOT_FOUND:Ljava/lang/String; = "CONNECTION_FAILED_AP_NOT_FOUND"

.field public static final CONNECTION_FAILED_INTERNAL_ERROR:Ljava/lang/String; = "CONNECTION_FAILED_INTERNAL_ERROR"

.field public static final CONNECTION_FAILED_PSK_AUTHENTICATION:Ljava/lang/String; = "CONNECTION_FAILED_PSK_AUTHENTICATION"

.field public static final DISCONNECTED:Ljava/lang/String; = "DISCONNECTED"

.field public static final INITIATING_CONNECTION_ATTEMPT:Ljava/lang/String; = "INITIATING_CONNECTION_ATTEMPT"

.field public static final STATE_ASSOCIATED:Ljava/lang/String; = "STATE_ASSOCIATED"

.field public static final STATE_CONNECTING:Ljava/lang/String; = "STATE_CONNECTING"

.field public static final STATE_DISCONNECTED:Ljava/lang/String; = "STATE_DISCONNECTED"

.field public static final STATE_INITIATING_CONNECTION_ATTEMPT:Ljava/lang/String; = "STATE_INITIATING_CONNECTION_ATTEMPT"

.field private static final values:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v0, "INITIATING_CONNECTION_ATTEMPT"

    const-string v1, "DISCONNECTED"

    const-string v2, "CONNECTING"

    const-string v3, "CONNECTED"

    const-string v4, "ASSOCIATED"

    const-string v5, "CONNECTION_FAILED_INTERNAL_ERROR"

    const-string v6, "CONNECTION_FAILED_PSK_AUTHENTICATION"

    const-string v7, "CONNECTION_FAILED_AP_NOT_FOUND"

    const-string v8, "CONNECTED_BEHIND_CAPTIVE_PORTAL"

    const-string v9, "CONNECTED_LIMITED_CONNECTIVITY"

    const-string v10, "STATE_INITIATING_CONNECTION_ATTEMPT"

    const-string v11, "STATE_DISCONNECTED"

    const-string v12, "STATE_CONNECTING"

    const-string v13, "STATE_ASSOCIATED"

    .line 22
    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/devicesetupservice/reporting/NetworkState;->values:[Ljava/lang/String;

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

    .line 27
    sget-object v0, Lcom/amazon/devicesetupservice/reporting/NetworkState;->values:[Ljava/lang/String;

    return-object v0
.end method
