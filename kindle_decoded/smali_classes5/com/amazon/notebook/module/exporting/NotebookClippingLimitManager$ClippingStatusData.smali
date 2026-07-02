.class public Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;
.super Ljava/lang/Object;
.source "NotebookClippingLimitManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClippingStatusData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;
    }
.end annotation


# instance fields
.field public currentlyExported:F

.field public noteCount:I

.field public previouslyExported:F

.field public status:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;


# direct methods
.method public constructor <init>(Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;FFI)V
    .locals 0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p1, p0, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;->status:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;

    .line 242
    iput p2, p0, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;->currentlyExported:F

    .line 243
    iput p3, p0, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;->previouslyExported:F

    .line 244
    iput p4, p0, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;->noteCount:I

    return-void
.end method
