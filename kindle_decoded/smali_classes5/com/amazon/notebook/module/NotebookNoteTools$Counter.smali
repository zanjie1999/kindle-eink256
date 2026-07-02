.class Lcom/amazon/notebook/module/NotebookNoteTools$Counter;
.super Ljava/lang/Object;
.source "NotebookNoteTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/notebook/module/NotebookNoteTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Counter"
.end annotation


# instance fields
.field private count:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 451
    iput v0, p0, Lcom/amazon/notebook/module/NotebookNoteTools$Counter;->count:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/notebook/module/NotebookNoteTools$1;)V
    .locals 0

    .line 450
    invoke-direct {p0}, Lcom/amazon/notebook/module/NotebookNoteTools$Counter;-><init>()V

    return-void
.end method


# virtual methods
.method decrement()V
    .locals 1

    .line 458
    iget v0, p0, Lcom/amazon/notebook/module/NotebookNoteTools$Counter;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amazon/notebook/module/NotebookNoteTools$Counter;->count:I

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 462
    iget v0, p0, Lcom/amazon/notebook/module/NotebookNoteTools$Counter;->count:I

    return v0
.end method

.method increment()V
    .locals 1

    .line 454
    iget v0, p0, Lcom/amazon/notebook/module/NotebookNoteTools$Counter;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/notebook/module/NotebookNoteTools$Counter;->count:I

    return-void
.end method
