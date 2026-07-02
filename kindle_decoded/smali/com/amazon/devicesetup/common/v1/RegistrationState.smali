.class public Lcom/amazon/devicesetup/common/v1/RegistrationState;
.super Ljava/lang/Object;
.source "RegistrationState.java"


# static fields
.field public static final COMPLETE:Ljava/lang/String; = "COMPLETE"

.field public static final FAILED:Ljava/lang/String; = "FAILED"

.field public static final IN_PROGRESS:Ljava/lang/String; = "IN_PROGRESS"

.field public static final NOT_REGISTERED:Ljava/lang/String; = "NOT_REGISTERED"

.field private static final values:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "NOT_REGISTERED"

    const-string v1, "IN_PROGRESS"

    const-string v2, "COMPLETE"

    const-string v3, "FAILED"

    .line 12
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/devicesetup/common/v1/RegistrationState;->values:[Ljava/lang/String;

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
    sget-object v0, Lcom/amazon/devicesetup/common/v1/RegistrationState;->values:[Ljava/lang/String;

    return-object v0
.end method
