.class public final Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;
.super Ljava/lang/Object;
.source "MrprBottomSheetStateManager.kt"


# instance fields
.field private volatile currPosition:I

.field private final lastLocalPosition:I

.field private lastVisitedPosition:I

.field private mrprPosition:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->lastLocalPosition:I

    iput p2, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->mrprPosition:I

    .line 13
    iput p1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->lastVisitedPosition:I

    .line 16
    iput p1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->currPosition:I

    return-void
.end method


# virtual methods
.method public final getCurrPosition()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->currPosition:I

    return v0
.end method

.method public final getLastLocalPosition()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->lastLocalPosition:I

    return v0
.end method

.method public final getLastVisitedPosition()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->lastVisitedPosition:I

    return v0
.end method

.method public final getMrprPosition()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->mrprPosition:I

    return v0
.end method

.method public final isComingFromLastLocalPosition()Z
    .locals 2

    .line 23
    iget v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->lastVisitedPosition:I

    iget v1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->lastLocalPosition:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isMrprAfterLastLocal()Z
    .locals 2

    .line 29
    iget v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->mrprPosition:I

    iget v1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->lastLocalPosition:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final updateCurrentPosition(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->currPosition:I

    return-void
.end method

.method public final updateCurrentPositionToLastLocal()V
    .locals 1

    .line 43
    iget v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->lastLocalPosition:I

    iput v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->currPosition:I

    .line 44
    iget v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->lastLocalPosition:I

    iput v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->lastVisitedPosition:I

    return-void
.end method

.method public final updateCurrentPositionToMrpr()V
    .locals 1

    .line 35
    iget v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->mrprPosition:I

    iput v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->currPosition:I

    .line 36
    iget v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->mrprPosition:I

    iput v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->lastVisitedPosition:I

    return-void
.end method

.method public final updateMrprPosition(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->mrprPosition:I

    return-void
.end method
