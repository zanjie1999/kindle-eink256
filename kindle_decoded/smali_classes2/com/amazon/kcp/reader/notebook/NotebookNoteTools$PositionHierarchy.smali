.class public Lcom/amazon/kcp/reader/notebook/NotebookNoteTools$PositionHierarchy;
.super Ljava/lang/Object;
.source "NotebookNoteTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PositionHierarchy"
.end annotation


# instance fields
.field public tocPosition:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;)V
    .locals 0

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 351
    iput-object p1, p0, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools$PositionHierarchy;->tocPosition:Ljava/lang/String;

    return-void
.end method
