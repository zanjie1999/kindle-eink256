.class synthetic Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity$3;
.super Ljava/lang/Object;
.source "NotebookExportSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$notebook$module$exporting$NotebookClippingLimitManager$ClippingStatusData$ClippingStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 204
    invoke-static {}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;->values()[Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity$3;->$SwitchMap$com$amazon$notebook$module$exporting$NotebookClippingLimitManager$ClippingStatusData$ClippingStatus:[I

    :try_start_0
    sget-object v1, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;->MAXIMUM_FAIL:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity$3;->$SwitchMap$com$amazon$notebook$module$exporting$NotebookClippingLimitManager$ClippingStatusData$ClippingStatus:[I

    sget-object v1, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;->EXPORT_EXCEEDS:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity$3;->$SwitchMap$com$amazon$notebook$module$exporting$NotebookClippingLimitManager$ClippingStatusData$ClippingStatus:[I

    sget-object v1, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;->EXPORT_WARN:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity$3;->$SwitchMap$com$amazon$notebook$module$exporting$NotebookClippingLimitManager$ClippingStatusData$ClippingStatus:[I

    sget-object v1, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;->OK:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
