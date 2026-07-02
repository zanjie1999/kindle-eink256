.class public Lcom/amazon/notebook/module/exporting/NotebookExportCounter;
.super Ljava/lang/Object;
.source "NotebookExportCounter.java"


# instance fields
.field public exportable:I

.field public original:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportCounter;->original:I

    .line 12
    iput v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportCounter;->exportable:I

    return-void
.end method
