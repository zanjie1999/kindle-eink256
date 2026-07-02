.class public Lcom/amazon/devicesetup/common/v1/ProvisioningState;
.super Ljava/lang/Object;
.source "ProvisioningState.java"


# static fields
.field public static final COMPUTE_CONFIGURATION:Ljava/lang/String; = "COMPUTE_CONFIGURATION"

.field public static final CONNECTED_TO_USER_NETWORK:Ljava/lang/String; = "CONNECTED_TO_USER_NETWORK"

.field public static final CONNECTING_TO_USER_NETWORK:Ljava/lang/String; = "CONNECTING_TO_USER_NETWORK"

.field public static final DONE:Ljava/lang/String; = "DONE"

.field public static final GET_WIFI_LIST:Ljava/lang/String; = "GET_WIFI_LIST"

.field public static final NOT_PROVISIONED:Ljava/lang/String; = "NOT_PROVISIONED"

.field public static final POST_WIFI_SCAN_DATA:Ljava/lang/String; = "POST_WIFI_SCAN_DATA"

.field public static final START_PIN_BASED_SETUP:Ljava/lang/String; = "START_PIN_BASED_SETUP"

.field public static final START_PROVISIONING:Ljava/lang/String; = "START_PROVISIONING"

.field public static final TOKEN_REDEEMED:Ljava/lang/String; = "TOKEN_REDEEMED"

.field private static final values:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "NOT_PROVISIONED"

    const-string v1, "START_PROVISIONING"

    const-string v2, "START_PIN_BASED_SETUP"

    const-string v3, "POST_WIFI_SCAN_DATA"

    const-string v4, "GET_WIFI_LIST"

    const-string v5, "COMPUTE_CONFIGURATION"

    const-string v6, "CONNECTING_TO_USER_NETWORK"

    const-string v7, "CONNECTED_TO_USER_NETWORK"

    const-string v8, "TOKEN_REDEEMED"

    const-string v9, "DONE"

    .line 18
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/devicesetup/common/v1/ProvisioningState;->values:[Ljava/lang/String;

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

    .line 23
    sget-object v0, Lcom/amazon/devicesetup/common/v1/ProvisioningState;->values:[Ljava/lang/String;

    return-object v0
.end method
