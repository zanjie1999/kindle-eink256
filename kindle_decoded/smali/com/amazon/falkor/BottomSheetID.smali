.class public final enum Lcom/amazon/falkor/BottomSheetID;
.super Ljava/lang/Enum;
.source "BottomSheetController.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/falkor/BottomSheetID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/falkor/BottomSheetID;

.field public static final enum FAVE_BOTTOM_SHEET_ID:Lcom/amazon/falkor/BottomSheetID;

.field public static final enum NEXT_EPISODE_BOTTOM_SHEET_ID:Lcom/amazon/falkor/BottomSheetID;

.field public static final enum SAMPLE_EPISODE_BOTTOM_SHEET_ID:Lcom/amazon/falkor/BottomSheetID;

.field public static final enum STORE_BOTTOM_SHEET_ID:Lcom/amazon/falkor/BottomSheetID;

.field public static final enum STORE_TOKEN_BOTTOM_SHEET_ID:Lcom/amazon/falkor/BottomSheetID;


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/amazon/falkor/BottomSheetID;

    new-instance v1, Lcom/amazon/falkor/BottomSheetID;

    const/4 v2, 0x0

    const-string v3, "NEXT_EPISODE_BOTTOM_SHEET_ID"

    const-string v4, "NEXT_EPISODE_BOTTOM_SHEET"

    .line 41
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/falkor/BottomSheetID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/falkor/BottomSheetID;->NEXT_EPISODE_BOTTOM_SHEET_ID:Lcom/amazon/falkor/BottomSheetID;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/falkor/BottomSheetID;

    const/4 v2, 0x1

    const-string v3, "SAMPLE_EPISODE_BOTTOM_SHEET_ID"

    const-string v4, "SAMPLE_EPISODE_BOTTOM_SHEET"

    .line 42
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/falkor/BottomSheetID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/falkor/BottomSheetID;->SAMPLE_EPISODE_BOTTOM_SHEET_ID:Lcom/amazon/falkor/BottomSheetID;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/falkor/BottomSheetID;

    const/4 v2, 0x2

    const-string v3, "FAVE_BOTTOM_SHEET_ID"

    const-string v4, "FAVE_BOTTOM_SHEET"

    .line 43
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/falkor/BottomSheetID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/falkor/BottomSheetID;->FAVE_BOTTOM_SHEET_ID:Lcom/amazon/falkor/BottomSheetID;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/falkor/BottomSheetID;

    const/4 v2, 0x3

    const-string v3, "STORE_TOKEN_BOTTOM_SHEET_ID"

    const-string v4, "STORE_TOKEN_BOTTOM_SHEET"

    .line 44
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/falkor/BottomSheetID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/falkor/BottomSheetID;->STORE_TOKEN_BOTTOM_SHEET_ID:Lcom/amazon/falkor/BottomSheetID;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/falkor/BottomSheetID;

    const/4 v2, 0x4

    const-string v3, "STORE_BOTTOM_SHEET_ID"

    const-string v4, "STORE_BOTTOM_SHEET"

    .line 45
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/falkor/BottomSheetID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/falkor/BottomSheetID;->STORE_BOTTOM_SHEET_ID:Lcom/amazon/falkor/BottomSheetID;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/falkor/BottomSheetID;->$VALUES:[Lcom/amazon/falkor/BottomSheetID;

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

    const-string v0, "id"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/falkor/BottomSheetID;->id:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/falkor/BottomSheetID;
    .locals 1

    const-class v0, Lcom/amazon/falkor/BottomSheetID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/falkor/BottomSheetID;

    return-object p0
.end method

.method public static values()[Lcom/amazon/falkor/BottomSheetID;
    .locals 1

    sget-object v0, Lcom/amazon/falkor/BottomSheetID;->$VALUES:[Lcom/amazon/falkor/BottomSheetID;

    invoke-virtual {v0}, [Lcom/amazon/falkor/BottomSheetID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/falkor/BottomSheetID;

    return-object v0
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/falkor/BottomSheetID;->id:Ljava/lang/String;

    return-object v0
.end method
