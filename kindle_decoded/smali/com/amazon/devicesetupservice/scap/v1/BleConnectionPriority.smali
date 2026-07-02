.class public Lcom/amazon/devicesetupservice/scap/v1/BleConnectionPriority;
.super Ljava/lang/Object;
.source "BleConnectionPriority.java"


# static fields
.field public static final BALANCED:Ljava/lang/String; = "BALANCED"

.field public static final HIGH:Ljava/lang/String; = "HIGH"

.field public static final LOW:Ljava/lang/String; = "LOW"

.field private static final values:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "HIGH"

    const-string v1, "BALANCED"

    const-string v2, "LOW"

    .line 11
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/devicesetupservice/scap/v1/BleConnectionPriority;->values:[Ljava/lang/String;

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

    .line 16
    sget-object v0, Lcom/amazon/devicesetupservice/scap/v1/BleConnectionPriority;->values:[Ljava/lang/String;

    return-object v0
.end method
