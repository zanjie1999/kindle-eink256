.class public Lcom/amazon/devicesetupservice/reporting/KeyManagement;
.super Ljava/lang/Object;
.source "KeyManagement.java"


# static fields
.field public static final NONE:Ljava/lang/String; = "NONE"

.field public static final OPEN:Ljava/lang/String; = "OPEN"

.field public static final WEP:Ljava/lang/String; = "WEP"

.field public static final WPAPSK:Ljava/lang/String; = "WPAPSK"

.field private static final values:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "WPAPSK"

    const-string v1, "WEP"

    const-string v2, "OPEN"

    const-string v3, "NONE"

    .line 12
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/devicesetupservice/reporting/KeyManagement;->values:[Ljava/lang/String;

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
    sget-object v0, Lcom/amazon/devicesetupservice/reporting/KeyManagement;->values:[Ljava/lang/String;

    return-object v0
.end method
