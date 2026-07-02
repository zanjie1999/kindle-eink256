.class public final enum Lcom/audible/mobile/network/apis/domain/BadgeTagType;
.super Ljava/lang/Enum;
.source "BadgeTagType.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/network/apis/domain/BadgeTagType;",
        ">;",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/network/apis/domain/BadgeTagType;

.field public static final enum OUTLINE:Lcom/audible/mobile/network/apis/domain/BadgeTagType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "outline"
    .end annotation
.end field

.field public static final enum PRIMARY:Lcom/audible/mobile/network/apis/domain/BadgeTagType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "primary"
    .end annotation
.end field

.field public static final enum SIMPLE:Lcom/audible/mobile/network/apis/domain/BadgeTagType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "simple"
    .end annotation
.end field

.field public static final enum SOLID:Lcom/audible/mobile/network/apis/domain/BadgeTagType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "solid"
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 16
    new-instance v0, Lcom/audible/mobile/network/apis/domain/BadgeTagType;

    const/4 v1, 0x0

    const-string v2, "PRIMARY"

    const-string v3, "primary"

    invoke-direct {v0, v2, v1, v3}, Lcom/audible/mobile/network/apis/domain/BadgeTagType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/network/apis/domain/BadgeTagType;->PRIMARY:Lcom/audible/mobile/network/apis/domain/BadgeTagType;

    .line 19
    new-instance v0, Lcom/audible/mobile/network/apis/domain/BadgeTagType;

    const/4 v2, 0x1

    const-string v3, "SIMPLE"

    const-string v4, "simple"

    invoke-direct {v0, v3, v2, v4}, Lcom/audible/mobile/network/apis/domain/BadgeTagType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/network/apis/domain/BadgeTagType;->SIMPLE:Lcom/audible/mobile/network/apis/domain/BadgeTagType;

    .line 22
    new-instance v0, Lcom/audible/mobile/network/apis/domain/BadgeTagType;

    const/4 v3, 0x2

    const-string v4, "OUTLINE"

    const-string v5, "outline"

    invoke-direct {v0, v4, v3, v5}, Lcom/audible/mobile/network/apis/domain/BadgeTagType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/network/apis/domain/BadgeTagType;->OUTLINE:Lcom/audible/mobile/network/apis/domain/BadgeTagType;

    .line 25
    new-instance v0, Lcom/audible/mobile/network/apis/domain/BadgeTagType;

    const/4 v4, 0x3

    const-string v5, "SOLID"

    const-string v6, "solid"

    invoke-direct {v0, v5, v4, v6}, Lcom/audible/mobile/network/apis/domain/BadgeTagType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/network/apis/domain/BadgeTagType;->SOLID:Lcom/audible/mobile/network/apis/domain/BadgeTagType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/audible/mobile/network/apis/domain/BadgeTagType;

    .line 15
    sget-object v6, Lcom/audible/mobile/network/apis/domain/BadgeTagType;->PRIMARY:Lcom/audible/mobile/network/apis/domain/BadgeTagType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/audible/mobile/network/apis/domain/BadgeTagType;->SIMPLE:Lcom/audible/mobile/network/apis/domain/BadgeTagType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/audible/mobile/network/apis/domain/BadgeTagType;->OUTLINE:Lcom/audible/mobile/network/apis/domain/BadgeTagType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/audible/mobile/network/apis/domain/BadgeTagType;->$VALUES:[Lcom/audible/mobile/network/apis/domain/BadgeTagType;

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

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lcom/audible/mobile/network/apis/domain/BadgeTagType;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/audible/mobile/network/apis/domain/BadgeTagType;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 54
    :cond_0
    invoke-static {}, Lcom/audible/mobile/network/apis/domain/BadgeTagType;->values()[Lcom/audible/mobile/network/apis/domain/BadgeTagType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 55
    invoke-virtual {v3}, Lcom/audible/mobile/network/apis/domain/BadgeTagType;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_2
    sget-object p0, Lcom/audible/mobile/network/apis/domain/BadgeTagType;->SIMPLE:Lcom/audible/mobile/network/apis/domain/BadgeTagType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/network/apis/domain/BadgeTagType;
    .locals 1

    .line 15
    const-class v0, Lcom/audible/mobile/network/apis/domain/BadgeTagType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/network/apis/domain/BadgeTagType;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/network/apis/domain/BadgeTagType;
    .locals 1

    .line 15
    sget-object v0, Lcom/audible/mobile/network/apis/domain/BadgeTagType;->$VALUES:[Lcom/audible/mobile/network/apis/domain/BadgeTagType;

    invoke-virtual {v0}, [Lcom/audible/mobile/network/apis/domain/BadgeTagType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/network/apis/domain/BadgeTagType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/audible/mobile/network/apis/domain/BadgeTagType;->value:Ljava/lang/String;

    return-object v0
.end method
