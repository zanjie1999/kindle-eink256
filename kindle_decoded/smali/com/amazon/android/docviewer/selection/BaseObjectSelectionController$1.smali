.class synthetic Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController$1;
.super Ljava/lang/Object;
.source "BaseObjectSelectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$android$docviewer$ObjectSelectionModelEvent$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 560
    invoke-static {}, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->values()[Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController$1;->$SwitchMap$com$amazon$android$docviewer$ObjectSelectionModelEvent$Type:[I

    :try_start_0
    sget-object v1, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->STATE_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController$1;->$SwitchMap$com$amazon$android$docviewer$ObjectSelectionModelEvent$Type:[I

    sget-object v1, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->SELECTION_DISPLAY_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController$1;->$SwitchMap$com$amazon$android$docviewer$ObjectSelectionModelEvent$Type:[I

    sget-object v1, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->AREA_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
