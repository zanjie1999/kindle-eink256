.class public Lcom/amazon/devicesetupservice/reporting/RegistrationState;
.super Ljava/lang/Object;
.source "RegistrationState.java"


# static fields
.field public static final COMPLETING_REGISTRATION:Ljava/lang/String; = "COMPLETING_REGISTRATION"

.field public static final NOT_REGISTERED:Ljava/lang/String; = "NOT_REGISTERED"

.field public static final REGISTERED:Ljava/lang/String; = "REGISTERED"

.field public static final REGISTRATION_COMPLETE:Ljava/lang/String; = "REGISTRATION_COMPLETE"

.field public static final REGISTRATION_FAILED_OTHER:Ljava/lang/String; = "REGISTRATION_FAILED_OTHER"

.field public static final REGISTRATION_FAILED_SERVER_ERROR:Ljava/lang/String; = "REGISTRATION_FAILED_SERVER_ERROR"

.field public static final REGISTRATION_FAILED_SERVER_NOT_REACHABLE:Ljava/lang/String; = "REGISTRATION_FAILED_SERVER_NOT_REACHABLE"

.field public static final REGISTRATION_FAILED_TOKEN_EXPIRED:Ljava/lang/String; = "REGISTRATION_FAILED_TOKEN_EXPIRED"

.field public static final REGISTRATION_FAILED_TOKEN_INVALID:Ljava/lang/String; = "REGISTRATION_FAILED_TOKEN_INVALID"

.field private static final values:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "NOT_REGISTERED"

    const-string v1, "COMPLETING_REGISTRATION"

    const-string v2, "REGISTRATION_COMPLETE"

    const-string v3, "REGISTRATION_FAILED_TOKEN_INVALID"

    const-string v4, "REGISTRATION_FAILED_TOKEN_EXPIRED"

    const-string v5, "REGISTRATION_FAILED_SERVER_NOT_REACHABLE"

    const-string v6, "REGISTRATION_FAILED_SERVER_ERROR"

    const-string v7, "REGISTRATION_FAILED_OTHER"

    const-string v8, "REGISTERED"

    .line 17
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/devicesetupservice/reporting/RegistrationState;->values:[Ljava/lang/String;

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

    .line 22
    sget-object v0, Lcom/amazon/devicesetupservice/reporting/RegistrationState;->values:[Ljava/lang/String;

    return-object v0
.end method
