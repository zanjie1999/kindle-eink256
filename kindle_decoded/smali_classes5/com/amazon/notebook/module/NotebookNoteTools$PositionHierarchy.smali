.class public Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;
.super Ljava/lang/Object;
.source "NotebookNoteTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/notebook/module/NotebookNoteTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PositionHierarchy"
.end annotation


# instance fields
.field public pagePosition:Ljava/lang/String;

.field public subTocPosition:Ljava/lang/String;

.field public tocPosition:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/notebook/module/NotebookNoteTools;)V
    .locals 0

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 365
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->tocPosition:Ljava/lang/String;

    .line 366
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->subTocPosition:Ljava/lang/String;

    .line 367
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->pagePosition:Ljava/lang/String;

    return-void
.end method
