.class public final enum Lcom/amazon/device/crashmanager/CrashDetectionHelper$CrashTypeCaughtException;
.super Ljava/lang/Enum;
.source "CrashDetectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/crashmanager/CrashDetectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CrashTypeCaughtException"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/device/crashmanager/CrashDetectionHelper$CrashTypeCaughtException;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/crashmanager/CrashDetectionHelper$CrashTypeCaughtException;

.field public static final enum CRASH_TYPE_JAVA_EXCEPTION:Lcom/amazon/device/crashmanager/CrashDetectionHelper$CrashTypeCaughtException;

.field public static final enum CRASH_TYPE_NATIVE_EXCEPTION:Lcom/amazon/device/crashmanager/CrashDetectionHelper$CrashTypeCaughtException;


# instance fields
.field private exceptionType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 516
    new-instance v0, Lcom/amazon/device/crashmanager/CrashDetectionHelper$CrashTypeCaughtException;

    const/4 v1, 0x0

    const-string v2, "CRASH_TYPE_JAVA_EXCEPTION"

    const-string v3, "data_app_exception"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/device/crashmanager/CrashDetectionHelper$CrashTypeCaughtException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/crashmanager/CrashDetectionHelper$CrashTypeCaughtException;->CRASH_TYPE_JAVA_EXCEPTION:Lcom/amazon/device/crashmanager/CrashDetectionHelper$CrashTypeCaughtException;

    .line 517
    new-instance v0, Lcom/amazon/device/crashmanager/CrashDetectionHelper$CrashTypeCaughtException;

    const/4 v2, 0x1

    const-string v3, "CRASH_TYPE_NATIVE_EXCEPTION"

    const-string v4, "data_native_exception"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/device/crashmanager/CrashDetectionHelper$CrashTypeCaughtException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/crashmanager/CrashDetectionHelper$CrashTypeCaughtException;->CRASH_TYPE_NATIVE_EXCEPTION:Lcom/amazon/device/crashmanager/CrashDetectionHelper$CrashTypeCaughtException;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/device/crashmanager/CrashDetectionHelper$CrashTypeCaughtException;

    .line 515
    sget-object v4, Lcom/amazon/device/crashmanager/CrashDetectionHelper$CrashTypeCaughtException;->CRASH_TYPE_JAVA_EXCEPTION:Lcom/amazon/device/crashmanager/CrashDetectionHelper$CrashTypeCaughtException;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/device/crashmanager/CrashDetectionHelper$CrashTypeCaughtException;->$VALUES:[Lcom/amazon/device/crashmanager/CrashDetectionHelper$CrashTypeCaughtException;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 521
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 522
    iput-object p3, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper$CrashTypeCaughtException;->exceptionType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/crashmanager/CrashDetectionHelper$CrashTypeCaughtException;
    .locals 1

    .line 515
    const-class v0, Lcom/amazon/device/crashmanager/CrashDetectionHelper$CrashTypeCaughtException;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper$CrashTypeCaughtException;

    return-object p0
.end method

.method public static values()[Lcom/amazon/device/crashmanager/CrashDetectionHelper$CrashTypeCaughtException;
    .locals 1

    .line 515
    sget-object v0, Lcom/amazon/device/crashmanager/CrashDetectionHelper$CrashTypeCaughtException;->$VALUES:[Lcom/amazon/device/crashmanager/CrashDetectionHelper$CrashTypeCaughtException;

    invoke-virtual {v0}, [Lcom/amazon/device/crashmanager/CrashDetectionHelper$CrashTypeCaughtException;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/crashmanager/CrashDetectionHelper$CrashTypeCaughtException;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper$CrashTypeCaughtException;->exceptionType:Ljava/lang/String;

    return-object v0
.end method
