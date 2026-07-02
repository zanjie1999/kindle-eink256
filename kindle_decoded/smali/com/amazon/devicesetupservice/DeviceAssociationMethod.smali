.class public Lcom/amazon/devicesetupservice/DeviceAssociationMethod;
.super Ljava/lang/Object;
.source "DeviceAssociationMethod.java"


# static fields
.field public static final INNER_BARCODE:Ljava/lang/String; = "INNER_BARCODE"

.field public static final OUTER_BARCODE:Ljava/lang/String; = "OUTER_BARCODE"

.field private static final values:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "INNER_BARCODE"

    const-string v1, "OUTER_BARCODE"

    .line 10
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/devicesetupservice/DeviceAssociationMethod;->values:[Ljava/lang/String;

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

    .line 15
    sget-object v0, Lcom/amazon/devicesetupservice/DeviceAssociationMethod;->values:[Ljava/lang/String;

    return-object v0
.end method
