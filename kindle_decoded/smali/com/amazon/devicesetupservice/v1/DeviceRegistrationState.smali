.class public Lcom/amazon/devicesetupservice/v1/DeviceRegistrationState;
.super Ljava/lang/Object;
.source "DeviceRegistrationState.java"


# static fields
.field public static final NOT_REGISTERED:Ljava/lang/String; = "NOT_REGISTERED"

.field public static final PAST_REGISTERED:Ljava/lang/String; = "PAST_REGISTERED"

.field public static final RECENTLY_REGISTERED:Ljava/lang/String; = "RECENTLY_REGISTERED"

.field private static final values:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "NOT_REGISTERED"

    const-string v1, "RECENTLY_REGISTERED"

    const-string v2, "PAST_REGISTERED"

    .line 11
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/devicesetupservice/v1/DeviceRegistrationState;->values:[Ljava/lang/String;

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
    sget-object v0, Lcom/amazon/devicesetupservice/v1/DeviceRegistrationState;->values:[Ljava/lang/String;

    return-object v0
.end method
