.class public final enum Lcom/amazon/falkor/bottomsheet/BottomSheetType;
.super Ljava/lang/Enum;
.source "StoreBottomSheetController.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/falkor/bottomsheet/BottomSheetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/falkor/bottomsheet/BottomSheetType;

.field public static final enum FAVE_ACTION:Lcom/amazon/falkor/bottomsheet/BottomSheetType;

.field public static final enum FAVE_EARNED:Lcom/amazon/falkor/bottomsheet/BottomSheetType;

.field public static final enum FAVE_INFO:Lcom/amazon/falkor/bottomsheet/BottomSheetType;

.field public static final enum WHAT_IS_KINDLE_VELLA:Lcom/amazon/falkor/bottomsheet/BottomSheetType;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/amazon/falkor/bottomsheet/BottomSheetType;

    new-instance v1, Lcom/amazon/falkor/bottomsheet/BottomSheetType;

    const/4 v2, 0x0

    const-string v3, "FAVE_INFO"

    const-string v4, "fave-info"

    .line 33
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/falkor/bottomsheet/BottomSheetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/falkor/bottomsheet/BottomSheetType;->FAVE_INFO:Lcom/amazon/falkor/bottomsheet/BottomSheetType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/falkor/bottomsheet/BottomSheetType;

    const/4 v2, 0x1

    const-string v3, "FAVE_ACTION"

    const-string v4, "fave-action"

    .line 34
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/falkor/bottomsheet/BottomSheetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/falkor/bottomsheet/BottomSheetType;->FAVE_ACTION:Lcom/amazon/falkor/bottomsheet/BottomSheetType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/falkor/bottomsheet/BottomSheetType;

    const/4 v2, 0x2

    const-string v3, "FAVE_EARNED"

    const-string v4, "fave-earned"

    .line 35
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/falkor/bottomsheet/BottomSheetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/falkor/bottomsheet/BottomSheetType;->FAVE_EARNED:Lcom/amazon/falkor/bottomsheet/BottomSheetType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/falkor/bottomsheet/BottomSheetType;

    const/4 v2, 0x3

    const-string v3, "COMMON_TOKEN_STORE"

    const-string v4, "common-token-store"

    .line 36
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/falkor/bottomsheet/BottomSheetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/falkor/bottomsheet/BottomSheetType;

    const/4 v2, 0x4

    const-string v3, "COMMON_FREE_BUNDLE"

    const-string v4, "common-free-bundle"

    .line 37
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/falkor/bottomsheet/BottomSheetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/falkor/bottomsheet/BottomSheetType;

    const/4 v2, 0x5

    const-string v3, "WHAT_IS_KINDLE_VELLA"

    const-string/jumbo v4, "what-is-kindle-vella"

    .line 38
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/falkor/bottomsheet/BottomSheetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/falkor/bottomsheet/BottomSheetType;->WHAT_IS_KINDLE_VELLA:Lcom/amazon/falkor/bottomsheet/BottomSheetType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/falkor/bottomsheet/BottomSheetType;->$VALUES:[Lcom/amazon/falkor/bottomsheet/BottomSheetType;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/falkor/bottomsheet/BottomSheetType;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/falkor/bottomsheet/BottomSheetType;
    .locals 1

    const-class v0, Lcom/amazon/falkor/bottomsheet/BottomSheetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/falkor/bottomsheet/BottomSheetType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/falkor/bottomsheet/BottomSheetType;
    .locals 1

    sget-object v0, Lcom/amazon/falkor/bottomsheet/BottomSheetType;->$VALUES:[Lcom/amazon/falkor/bottomsheet/BottomSheetType;

    invoke-virtual {v0}, [Lcom/amazon/falkor/bottomsheet/BottomSheetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/falkor/bottomsheet/BottomSheetType;

    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/BottomSheetType;->type:Ljava/lang/String;

    return-object v0
.end method
