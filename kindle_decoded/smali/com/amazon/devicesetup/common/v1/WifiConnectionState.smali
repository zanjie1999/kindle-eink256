.class public Lcom/amazon/devicesetup/common/v1/WifiConnectionState;
.super Ljava/lang/Object;
.source "WifiConnectionState.java"


# static fields
.field public static final ASSOCIATED:Ljava/lang/String; = "ASSOCIATED"

.field public static final AUTHENTICATED:Ljava/lang/String; = "AUTHENTICATED"

.field public static final DISCONNECTED:Ljava/lang/String; = "DISCONNECTED"

.field public static final FAILED:Ljava/lang/String; = "FAILED"

.field public static final IDLE:Ljava/lang/String; = "IDLE"

.field public static final UNAUTHENTICATED:Ljava/lang/String; = "UNAUTHENTICATED"

.field private static final values:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "IDLE"

    const-string v1, "DISCONNECTED"

    const-string v2, "UNAUTHENTICATED"

    const-string v3, "AUTHENTICATED"

    const-string v4, "ASSOCIATED"

    const-string v5, "FAILED"

    .line 14
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/devicesetup/common/v1/WifiConnectionState;->values:[Ljava/lang/String;

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

    .line 19
    sget-object v0, Lcom/amazon/devicesetup/common/v1/WifiConnectionState;->values:[Ljava/lang/String;

    return-object v0
.end method
