.class public Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter$DataURIImg;
.super Ljava/lang/Object;
.source "NotebookHTMLGraphicsExporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataURIImg"
.end annotation


# instance fields
.field public dataURI:Ljava/lang/String;

.field public height:I

.field public width:I


# direct methods
.method public constructor <init>(Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter;IILjava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p2, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter$DataURIImg;->width:I

    .line 59
    iput p3, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter$DataURIImg;->height:I

    .line 60
    iput-object p4, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter$DataURIImg;->dataURI:Ljava/lang/String;

    return-void
.end method
