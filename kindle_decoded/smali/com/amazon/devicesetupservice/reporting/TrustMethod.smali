.class public Lcom/amazon/devicesetupservice/reporting/TrustMethod;
.super Ljava/lang/Object;
.source "TrustMethod.java"


# static fields
.field public static final AUTHENTICATED:Ljava/lang/String; = "AUTHENTICATED"

.field public static final NONE:Ljava/lang/String; = "NONE"

.field public static final UNAUTHENTICATED:Ljava/lang/String; = "UNAUTHENTICATED"

.field private static final values:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "AUTHENTICATED"

    const-string v1, "UNAUTHENTICATED"

    const-string v2, "NONE"

    .line 11
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/devicesetupservice/reporting/TrustMethod;->values:[Ljava/lang/String;

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
    sget-object v0, Lcom/amazon/devicesetupservice/reporting/TrustMethod;->values:[Ljava/lang/String;

    return-object v0
.end method
