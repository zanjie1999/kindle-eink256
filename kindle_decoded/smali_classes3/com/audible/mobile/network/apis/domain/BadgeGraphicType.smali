.class public final enum Lcom/audible/mobile/network/apis/domain/BadgeGraphicType;
.super Ljava/lang/Enum;
.source "BadgeGraphicType.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/network/apis/domain/BadgeGraphicType;",
        ">;",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/network/apis/domain/BadgeGraphicType;

.field public static final enum ICON:Lcom/audible/mobile/network/apis/domain/BadgeGraphicType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon"
    .end annotation
.end field

.field public static final enum IMAGE:Lcom/audible/mobile/network/apis/domain/BadgeGraphicType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image"
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Lcom/audible/mobile/network/apis/domain/BadgeGraphicType;

    const/4 v1, 0x0

    const-string v2, "IMAGE"

    const-string v3, "image"

    invoke-direct {v0, v2, v1, v3}, Lcom/audible/mobile/network/apis/domain/BadgeGraphicType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/network/apis/domain/BadgeGraphicType;->IMAGE:Lcom/audible/mobile/network/apis/domain/BadgeGraphicType;

    .line 18
    new-instance v0, Lcom/audible/mobile/network/apis/domain/BadgeGraphicType;

    const/4 v2, 0x1

    const-string v3, "ICON"

    const-string v4, "icon"

    invoke-direct {v0, v3, v2, v4}, Lcom/audible/mobile/network/apis/domain/BadgeGraphicType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/network/apis/domain/BadgeGraphicType;->ICON:Lcom/audible/mobile/network/apis/domain/BadgeGraphicType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/audible/mobile/network/apis/domain/BadgeGraphicType;

    .line 14
    sget-object v4, Lcom/audible/mobile/network/apis/domain/BadgeGraphicType;->IMAGE:Lcom/audible/mobile/network/apis/domain/BadgeGraphicType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/audible/mobile/network/apis/domain/BadgeGraphicType;->$VALUES:[Lcom/audible/mobile/network/apis/domain/BadgeGraphicType;

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

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-object p3, p0, Lcom/audible/mobile/network/apis/domain/BadgeGraphicType;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/audible/mobile/network/apis/domain/BadgeGraphicType;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 47
    :cond_0
    invoke-static {}, Lcom/audible/mobile/network/apis/domain/BadgeGraphicType;->values()[Lcom/audible/mobile/network/apis/domain/BadgeGraphicType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 48
    invoke-virtual {v4}, Lcom/audible/mobile/network/apis/domain/BadgeGraphicType;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/network/apis/domain/BadgeGraphicType;
    .locals 1

    .line 14
    const-class v0, Lcom/audible/mobile/network/apis/domain/BadgeGraphicType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/network/apis/domain/BadgeGraphicType;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/network/apis/domain/BadgeGraphicType;
    .locals 1

    .line 14
    sget-object v0, Lcom/audible/mobile/network/apis/domain/BadgeGraphicType;->$VALUES:[Lcom/audible/mobile/network/apis/domain/BadgeGraphicType;

    invoke-virtual {v0}, [Lcom/audible/mobile/network/apis/domain/BadgeGraphicType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/network/apis/domain/BadgeGraphicType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/audible/mobile/network/apis/domain/BadgeGraphicType;->value:Ljava/lang/String;

    return-object v0
.end method
