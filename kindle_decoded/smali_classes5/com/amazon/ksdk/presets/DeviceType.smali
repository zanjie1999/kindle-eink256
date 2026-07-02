.class public final enum Lcom/amazon/ksdk/presets/DeviceType;
.super Ljava/lang/Enum;
.source "DeviceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ksdk/presets/DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ksdk/presets/DeviceType;

.field public static final enum ANDROID_3P:Lcom/amazon/ksdk/presets/DeviceType;

.field public static final enum ANDROID_FOS:Lcom/amazon/ksdk/presets/DeviceType;

.field public static final enum EREADER:Lcom/amazon/ksdk/presets/DeviceType;

.field public static final enum INVALID:Lcom/amazon/ksdk/presets/DeviceType;

.field public static final enum IOS:Lcom/amazon/ksdk/presets/DeviceType;

.field public static final enum LINUX:Lcom/amazon/ksdk/presets/DeviceType;

.field public static final enum MAC:Lcom/amazon/ksdk/presets/DeviceType;

.field public static final enum WIN:Lcom/amazon/ksdk/presets/DeviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 16
    new-instance v0, Lcom/amazon/ksdk/presets/DeviceType;

    const/4 v1, 0x0

    const-string v2, "INVALID"

    invoke-direct {v0, v2, v1}, Lcom/amazon/ksdk/presets/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/DeviceType;->INVALID:Lcom/amazon/ksdk/presets/DeviceType;

    .line 17
    new-instance v0, Lcom/amazon/ksdk/presets/DeviceType;

    const/4 v2, 0x1

    const-string v3, "ANDROID_3P"

    invoke-direct {v0, v3, v2}, Lcom/amazon/ksdk/presets/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/DeviceType;->ANDROID_3P:Lcom/amazon/ksdk/presets/DeviceType;

    .line 18
    new-instance v0, Lcom/amazon/ksdk/presets/DeviceType;

    const/4 v3, 0x2

    const-string v4, "ANDROID_FOS"

    invoke-direct {v0, v4, v3}, Lcom/amazon/ksdk/presets/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/DeviceType;->ANDROID_FOS:Lcom/amazon/ksdk/presets/DeviceType;

    .line 19
    new-instance v0, Lcom/amazon/ksdk/presets/DeviceType;

    const/4 v4, 0x3

    const-string v5, "EREADER"

    invoke-direct {v0, v5, v4}, Lcom/amazon/ksdk/presets/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/DeviceType;->EREADER:Lcom/amazon/ksdk/presets/DeviceType;

    .line 20
    new-instance v0, Lcom/amazon/ksdk/presets/DeviceType;

    const/4 v5, 0x4

    const-string v6, "IOS"

    invoke-direct {v0, v6, v5}, Lcom/amazon/ksdk/presets/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/DeviceType;->IOS:Lcom/amazon/ksdk/presets/DeviceType;

    .line 21
    new-instance v0, Lcom/amazon/ksdk/presets/DeviceType;

    const/4 v6, 0x5

    const-string v7, "MAC"

    invoke-direct {v0, v7, v6}, Lcom/amazon/ksdk/presets/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/DeviceType;->MAC:Lcom/amazon/ksdk/presets/DeviceType;

    .line 22
    new-instance v0, Lcom/amazon/ksdk/presets/DeviceType;

    const/4 v7, 0x6

    const-string v8, "WIN"

    invoke-direct {v0, v8, v7}, Lcom/amazon/ksdk/presets/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/DeviceType;->WIN:Lcom/amazon/ksdk/presets/DeviceType;

    .line 23
    new-instance v0, Lcom/amazon/ksdk/presets/DeviceType;

    const/4 v8, 0x7

    const-string v9, "LINUX"

    invoke-direct {v0, v9, v8}, Lcom/amazon/ksdk/presets/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/DeviceType;->LINUX:Lcom/amazon/ksdk/presets/DeviceType;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/amazon/ksdk/presets/DeviceType;

    .line 15
    sget-object v10, Lcom/amazon/ksdk/presets/DeviceType;->INVALID:Lcom/amazon/ksdk/presets/DeviceType;

    aput-object v10, v9, v1

    sget-object v1, Lcom/amazon/ksdk/presets/DeviceType;->ANDROID_3P:Lcom/amazon/ksdk/presets/DeviceType;

    aput-object v1, v9, v2

    sget-object v1, Lcom/amazon/ksdk/presets/DeviceType;->ANDROID_FOS:Lcom/amazon/ksdk/presets/DeviceType;

    aput-object v1, v9, v3

    sget-object v1, Lcom/amazon/ksdk/presets/DeviceType;->EREADER:Lcom/amazon/ksdk/presets/DeviceType;

    aput-object v1, v9, v4

    sget-object v1, Lcom/amazon/ksdk/presets/DeviceType;->IOS:Lcom/amazon/ksdk/presets/DeviceType;

    aput-object v1, v9, v5

    sget-object v1, Lcom/amazon/ksdk/presets/DeviceType;->MAC:Lcom/amazon/ksdk/presets/DeviceType;

    aput-object v1, v9, v6

    sget-object v1, Lcom/amazon/ksdk/presets/DeviceType;->WIN:Lcom/amazon/ksdk/presets/DeviceType;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/amazon/ksdk/presets/DeviceType;->$VALUES:[Lcom/amazon/ksdk/presets/DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ksdk/presets/DeviceType;
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/ksdk/presets/DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ksdk/presets/DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ksdk/presets/DeviceType;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/ksdk/presets/DeviceType;->$VALUES:[Lcom/amazon/ksdk/presets/DeviceType;

    invoke-virtual {v0}, [Lcom/amazon/ksdk/presets/DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ksdk/presets/DeviceType;

    return-object v0
.end method
