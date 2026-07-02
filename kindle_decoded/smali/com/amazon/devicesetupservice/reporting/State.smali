.class public Lcom/amazon/devicesetupservice/reporting/State;
.super Ljava/lang/Object;
.source "State.java"


# static fields
.field public static final CONNECTED:Ljava/lang/String; = "CONNECTED"

.field public static final DISCOVERED:Ljava/lang/String; = "DISCOVERED"

.field public static final DONE:Ljava/lang/String; = "DONE"

.field public static final FINALIZED_AUTHENTICATION:Ljava/lang/String; = "FINALIZED_AUTHENTICATION"

.field public static final GET_CREDENTIALS:Ljava/lang/String; = "GET_CREDENTIALS"

.field public static final NETWORKED:Ljava/lang/String; = "NETWORKED"

.field public static final PROVISIONED:Ljava/lang/String; = "PROVISIONED"

.field public static final REGISTERED:Ljava/lang/String; = "REGISTERED"

.field public static final REGISTRATION_COMPLETE:Ljava/lang/String; = "REGISTRATION_COMPLETE"

.field public static final RETRIEVED_PROVISIONING_DETAILS:Ljava/lang/String; = "RETRIEVED_PROVISIONING_DETAILS"

.field public static final SAVED_NETWORK:Ljava/lang/String; = "SAVED_NETWORK"

.field public static final SECURE_CHANNEL_ESTABLISHED:Ljava/lang/String; = "SECURE_CHANNEL_ESTABLISHED"

.field public static final STARTED_AUTHENTICATION:Ljava/lang/String; = "STARTED_AUTHENTICATION"

.field public static final TOKEN_REDEEMED:Ljava/lang/String; = "TOKEN_REDEEMED"

.field private static final values:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v0, "DISCOVERED"

    const-string v1, "CONNECTED"

    const-string v2, "SECURE_CHANNEL_ESTABLISHED"

    const-string v3, "RETRIEVED_PROVISIONING_DETAILS"

    const-string v4, "PROVISIONED"

    const-string v5, "NETWORKED"

    const-string v6, "REGISTERED"

    const-string v7, "DONE"

    const-string v8, "REGISTRATION_COMPLETE"

    const-string v9, "TOKEN_REDEEMED"

    const-string v10, "STARTED_AUTHENTICATION"

    const-string v11, "FINALIZED_AUTHENTICATION"

    const-string v12, "GET_CREDENTIALS"

    const-string v13, "SAVED_NETWORK"

    .line 22
    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/devicesetupservice/reporting/State;->values:[Ljava/lang/String;

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
    sget-object v0, Lcom/amazon/devicesetupservice/reporting/State;->values:[Ljava/lang/String;

    return-object v0
.end method
