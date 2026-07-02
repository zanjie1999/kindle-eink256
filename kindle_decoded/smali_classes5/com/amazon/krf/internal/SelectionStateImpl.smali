.class public Lcom/amazon/krf/internal/SelectionStateImpl;
.super Ljava/lang/Object;
.source "SelectionStateImpl.java"

# interfaces
.implements Lcom/amazon/krf/platform/SelectionState;


# instance fields
.field private mNativeSelectionState:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Lcom/amazon/krf/internal/SelectionStateImpl;->mNativeSelectionState:J

    return-void
.end method

.method public static createSelectionAdjustmentDirectionFromInt(I)Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;
    .locals 1

    .line 27
    invoke-static {}, Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;->values()[Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static createSelectionModeFromInt(I)Lcom/amazon/krf/platform/SelectionState$SelectionMode;
    .locals 1

    .line 23
    invoke-static {}, Lcom/amazon/krf/platform/SelectionState$SelectionMode;->values()[Lcom/amazon/krf/platform/SelectionState$SelectionMode;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static createSelectionToolTypeFromInt(I)Lcom/amazon/krf/platform/SelectionState$SelectionToolType;
    .locals 1

    .line 31
    invoke-static {}, Lcom/amazon/krf/platform/SelectionState$SelectionToolType;->values()[Lcom/amazon/krf/platform/SelectionState$SelectionToolType;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static createSelectionTypeFromInt(I)Lcom/amazon/krf/platform/SelectionState$SelectionType;
    .locals 1

    .line 19
    invoke-static {}, Lcom/amazon/krf/platform/SelectionState$SelectionType;->values()[Lcom/amazon/krf/platform/SelectionState$SelectionType;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method


# virtual methods
.method public native getSelectionAdjustmentDirection()Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;
.end method

.method public native getSelectionMode()Lcom/amazon/krf/platform/SelectionState$SelectionMode;
.end method

.method public native getSelectionRange()Lcom/amazon/krf/platform/PositionRange;
.end method

.method public native getSelectionRects()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end method

.method public native getSelectionText()Ljava/lang/String;
.end method

.method public native getSelectionToolType()Lcom/amazon/krf/platform/SelectionState$SelectionToolType;
.end method

.method public native getSelectionTypes()Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/krf/platform/SelectionState$SelectionType;",
            ">;"
        }
    .end annotation
.end method

.method public native isNewSelection()Z
.end method

.method public native isSelectionCleared()Z
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n===================Selection State===================\nSelection Text:                  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p0}, Lcom/amazon/krf/internal/SelectionStateImpl;->getSelectionText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nSelection Mode:                  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p0}, Lcom/amazon/krf/internal/SelectionStateImpl;->getSelectionMode()Lcom/amazon/krf/platform/SelectionState$SelectionMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nSelection Adjustment Direction:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p0}, Lcom/amazon/krf/internal/SelectionStateImpl;->getSelectionAdjustmentDirection()Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nisNewSelection:                  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p0}, Lcom/amazon/krf/internal/SelectionStateImpl;->isNewSelection()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nisSelectionCleared:              "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p0}, Lcom/amazon/krf/internal/SelectionStateImpl;->isSelectionCleared()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\ngetSelectionToolType:            "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p0}, Lcom/amazon/krf/internal/SelectionStateImpl;->getSelectionToolType()Lcom/amazon/krf/platform/SelectionState$SelectionToolType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n=======================================================\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
