.class public final Lcom/amazon/falkor/bottomsheet/BottomSheetCollisionControl;
.super Ljava/lang/Object;
.source "BottomSheetCollisionControl.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/falkor/bottomsheet/BottomSheetCollisionControl;

.field private static faveBottomSheetController:Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/amazon/falkor/bottomsheet/BottomSheetCollisionControl;

    invoke-direct {v0}, Lcom/amazon/falkor/bottomsheet/BottomSheetCollisionControl;-><init>()V

    sput-object v0, Lcom/amazon/falkor/bottomsheet/BottomSheetCollisionControl;->INSTANCE:Lcom/amazon/falkor/bottomsheet/BottomSheetCollisionControl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final canShowBottomSheet(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "sheetId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/amazon/falkor/BottomSheetID;->NEXT_EPISODE_BOTTOM_SHEET_ID:Lcom/amazon/falkor/BottomSheetID;

    invoke-virtual {v0}, Lcom/amazon/falkor/BottomSheetID;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 28
    sget-object p1, Lcom/amazon/falkor/bottomsheet/BottomSheetCollisionControl;->faveBottomSheetController:Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/falkor/BottomSheetController;->getCurrentBottomSheet()Lcom/amazon/falkor/CurrentBottomSheet;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/falkor/CurrentBottomSheet;->getActions()Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;->isVisible()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public final initialize(Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;)V
    .locals 1

    const-string v0, "faveBottomSheetController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sput-object p1, Lcom/amazon/falkor/bottomsheet/BottomSheetCollisionControl;->faveBottomSheetController:Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;

    return-void
.end method
