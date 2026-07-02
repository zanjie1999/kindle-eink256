.class public final enum Lcom/amazon/ras/uservalidation/DeviceType;
.super Ljava/lang/Enum;
.source "DeviceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ras/uservalidation/DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ras/uservalidation/DeviceType;

.field public static final enum ANDROID:Lcom/amazon/ras/uservalidation/DeviceType;

.field public static final enum FIRE:Lcom/amazon/ras/uservalidation/DeviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lcom/amazon/ras/uservalidation/DeviceType;

    const/4 v1, 0x0

    const-string v2, "FIRE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/ras/uservalidation/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ras/uservalidation/DeviceType;->FIRE:Lcom/amazon/ras/uservalidation/DeviceType;

    new-instance v0, Lcom/amazon/ras/uservalidation/DeviceType;

    const/4 v2, 0x1

    const-string v3, "ANDROID"

    invoke-direct {v0, v3, v2}, Lcom/amazon/ras/uservalidation/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ras/uservalidation/DeviceType;->ANDROID:Lcom/amazon/ras/uservalidation/DeviceType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/ras/uservalidation/DeviceType;

    .line 12
    sget-object v4, Lcom/amazon/ras/uservalidation/DeviceType;->FIRE:Lcom/amazon/ras/uservalidation/DeviceType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/ras/uservalidation/DeviceType;->$VALUES:[Lcom/amazon/ras/uservalidation/DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ras/uservalidation/DeviceType;
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/ras/uservalidation/DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ras/uservalidation/DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ras/uservalidation/DeviceType;
    .locals 1

    .line 12
    sget-object v0, Lcom/amazon/ras/uservalidation/DeviceType;->$VALUES:[Lcom/amazon/ras/uservalidation/DeviceType;

    invoke-virtual {v0}, [Lcom/amazon/ras/uservalidation/DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ras/uservalidation/DeviceType;

    return-object v0
.end method
