.class public Lcom/amazon/devicesetupservice/reporting/ProvisioningMethod;
.super Ljava/lang/Object;
.source "ProvisioningMethod.java"


# static fields
.field public static final FFS:Ljava/lang/String; = "FFS"

.field public static final MANUAL:Ljava/lang/String; = "MANUAL"

.field public static final SH_PHILIPS:Ljava/lang/String; = "SH_PHILIPS"

.field public static final WIFI_FFS:Ljava/lang/String; = "WIFI_FFS"

.field private static final values:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "FFS"

    const-string v1, "MANUAL"

    const-string v2, "WIFI_FFS"

    const-string v3, "SH_PHILIPS"

    .line 12
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/devicesetupservice/reporting/ProvisioningMethod;->values:[Ljava/lang/String;

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

    .line 17
    sget-object v0, Lcom/amazon/devicesetupservice/reporting/ProvisioningMethod;->values:[Ljava/lang/String;

    return-object v0
.end method
