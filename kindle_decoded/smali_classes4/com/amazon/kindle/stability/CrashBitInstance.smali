.class public final enum Lcom/amazon/kindle/stability/CrashBitInstance;
.super Ljava/lang/Enum;
.source "CrashBit.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/stability/CrashBitInstance;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/stability/CrashBitInstance;

.field public static final enum ACTIVITY:Lcom/amazon/kindle/stability/CrashBitInstance;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/kindle/stability/CrashBitInstance;

    new-instance v1, Lcom/amazon/kindle/stability/CrashBitInstance;

    const/4 v2, 0x0

    const-string v3, "ACTIVITY"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/stability/CrashBitInstance;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/stability/CrashBitInstance;->ACTIVITY:Lcom/amazon/kindle/stability/CrashBitInstance;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/stability/CrashBitInstance;->$VALUES:[Lcom/amazon/kindle/stability/CrashBitInstance;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/stability/CrashBitInstance;
    .locals 1

    const-class v0, Lcom/amazon/kindle/stability/CrashBitInstance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/stability/CrashBitInstance;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/stability/CrashBitInstance;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/stability/CrashBitInstance;->$VALUES:[Lcom/amazon/kindle/stability/CrashBitInstance;

    invoke-virtual {v0}, [Lcom/amazon/kindle/stability/CrashBitInstance;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/stability/CrashBitInstance;

    return-object v0
.end method
