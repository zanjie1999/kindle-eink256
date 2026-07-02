.class public final enum Lcom/audible/mobile/network/models/common/Button$Type;
.super Ljava/lang/Enum;
.source "Button.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/network/models/common/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/network/models/common/Button$Type$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/network/models/common/Button$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/network/models/common/Button$Type;

.field public static final Companion:Lcom/audible/mobile/network/models/common/Button$Type$Companion;

.field public static final enum UNKNOWN:Lcom/audible/mobile/network/models/common/Button$Type;


# instance fields
.field private final typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/audible/mobile/network/models/common/Button$Type;

    new-instance v1, Lcom/audible/mobile/network/models/common/Button$Type;

    const/4 v2, 0x0

    const-string v3, "PRIMARY"

    const-string v4, "primary"

    .line 28
    invoke-direct {v1, v3, v2, v4}, Lcom/audible/mobile/network/models/common/Button$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/network/models/common/Button$Type;

    const/4 v2, 0x1

    const-string v3, "SOLID"

    const-string v4, "solid"

    .line 29
    invoke-direct {v1, v3, v2, v4}, Lcom/audible/mobile/network/models/common/Button$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/network/models/common/Button$Type;

    const/4 v2, 0x2

    const-string v3, "OUTLINE"

    const-string v4, "outline"

    .line 30
    invoke-direct {v1, v3, v2, v4}, Lcom/audible/mobile/network/models/common/Button$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/network/models/common/Button$Type;

    const/4 v2, 0x3

    const-string v3, "SIMPLE"

    const-string v4, "simple"

    .line 31
    invoke-direct {v1, v3, v2, v4}, Lcom/audible/mobile/network/models/common/Button$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/network/models/common/Button$Type;

    const/4 v2, 0x4

    const-string v3, "UNKNOWN"

    const-string v4, "unknown"

    .line 32
    invoke-direct {v1, v3, v2, v4}, Lcom/audible/mobile/network/models/common/Button$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/audible/mobile/network/models/common/Button$Type;->UNKNOWN:Lcom/audible/mobile/network/models/common/Button$Type;

    aput-object v1, v0, v2

    sput-object v0, Lcom/audible/mobile/network/models/common/Button$Type;->$VALUES:[Lcom/audible/mobile/network/models/common/Button$Type;

    new-instance v0, Lcom/audible/mobile/network/models/common/Button$Type$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/audible/mobile/network/models/common/Button$Type$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/audible/mobile/network/models/common/Button$Type;->Companion:Lcom/audible/mobile/network/models/common/Button$Type$Companion;

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

    iput-object p3, p0, Lcom/audible/mobile/network/models/common/Button$Type;->typeName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/network/models/common/Button$Type;
    .locals 1

    const-class v0, Lcom/audible/mobile/network/models/common/Button$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/network/models/common/Button$Type;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/network/models/common/Button$Type;
    .locals 1

    sget-object v0, Lcom/audible/mobile/network/models/common/Button$Type;->$VALUES:[Lcom/audible/mobile/network/models/common/Button$Type;

    invoke-virtual {v0}, [Lcom/audible/mobile/network/models/common/Button$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/network/models/common/Button$Type;

    return-object v0
.end method


# virtual methods
.method public final getTypeName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/audible/mobile/network/models/common/Button$Type;->typeName:Ljava/lang/String;

    return-object v0
.end method
