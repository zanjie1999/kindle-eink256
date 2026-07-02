.class public final enum Lcom/amazon/ksdk/presets/FontOriginType;
.super Ljava/lang/Enum;
.source "FontOriginType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ksdk/presets/FontOriginType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ksdk/presets/FontOriginType;

.field public static final enum DOWNLOADED:Lcom/amazon/ksdk/presets/FontOriginType;

.field public static final enum INVALID:Lcom/amazon/ksdk/presets/FontOriginType;

.field public static final enum PUBLISHER:Lcom/amazon/ksdk/presets/FontOriginType;

.field public static final enum READER:Lcom/amazon/ksdk/presets/FontOriginType;

.field public static final enum SIDELOADED:Lcom/amazon/ksdk/presets/FontOriginType;

.field public static final enum SYSTEM:Lcom/amazon/ksdk/presets/FontOriginType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 8
    new-instance v0, Lcom/amazon/ksdk/presets/FontOriginType;

    const/4 v1, 0x0

    const-string v2, "INVALID"

    invoke-direct {v0, v2, v1}, Lcom/amazon/ksdk/presets/FontOriginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/FontOriginType;->INVALID:Lcom/amazon/ksdk/presets/FontOriginType;

    .line 10
    new-instance v0, Lcom/amazon/ksdk/presets/FontOriginType;

    const/4 v2, 0x1

    const-string v3, "SYSTEM"

    invoke-direct {v0, v3, v2}, Lcom/amazon/ksdk/presets/FontOriginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/FontOriginType;->SYSTEM:Lcom/amazon/ksdk/presets/FontOriginType;

    .line 12
    new-instance v0, Lcom/amazon/ksdk/presets/FontOriginType;

    const/4 v3, 0x2

    const-string v4, "READER"

    invoke-direct {v0, v4, v3}, Lcom/amazon/ksdk/presets/FontOriginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/FontOriginType;->READER:Lcom/amazon/ksdk/presets/FontOriginType;

    .line 14
    new-instance v0, Lcom/amazon/ksdk/presets/FontOriginType;

    const/4 v4, 0x3

    const-string v5, "DOWNLOADED"

    invoke-direct {v0, v5, v4}, Lcom/amazon/ksdk/presets/FontOriginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/FontOriginType;->DOWNLOADED:Lcom/amazon/ksdk/presets/FontOriginType;

    .line 16
    new-instance v0, Lcom/amazon/ksdk/presets/FontOriginType;

    const/4 v5, 0x4

    const-string v6, "SIDELOADED"

    invoke-direct {v0, v6, v5}, Lcom/amazon/ksdk/presets/FontOriginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/FontOriginType;->SIDELOADED:Lcom/amazon/ksdk/presets/FontOriginType;

    .line 18
    new-instance v0, Lcom/amazon/ksdk/presets/FontOriginType;

    const/4 v6, 0x5

    const-string v7, "PUBLISHER"

    invoke-direct {v0, v7, v6}, Lcom/amazon/ksdk/presets/FontOriginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/FontOriginType;->PUBLISHER:Lcom/amazon/ksdk/presets/FontOriginType;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/ksdk/presets/FontOriginType;

    .line 7
    sget-object v8, Lcom/amazon/ksdk/presets/FontOriginType;->INVALID:Lcom/amazon/ksdk/presets/FontOriginType;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/ksdk/presets/FontOriginType;->SYSTEM:Lcom/amazon/ksdk/presets/FontOriginType;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/ksdk/presets/FontOriginType;->READER:Lcom/amazon/ksdk/presets/FontOriginType;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/ksdk/presets/FontOriginType;->DOWNLOADED:Lcom/amazon/ksdk/presets/FontOriginType;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/ksdk/presets/FontOriginType;->SIDELOADED:Lcom/amazon/ksdk/presets/FontOriginType;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/ksdk/presets/FontOriginType;->$VALUES:[Lcom/amazon/ksdk/presets/FontOriginType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ksdk/presets/FontOriginType;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/ksdk/presets/FontOriginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ksdk/presets/FontOriginType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ksdk/presets/FontOriginType;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/ksdk/presets/FontOriginType;->$VALUES:[Lcom/amazon/ksdk/presets/FontOriginType;

    invoke-virtual {v0}, [Lcom/amazon/ksdk/presets/FontOriginType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ksdk/presets/FontOriginType;

    return-object v0
.end method
