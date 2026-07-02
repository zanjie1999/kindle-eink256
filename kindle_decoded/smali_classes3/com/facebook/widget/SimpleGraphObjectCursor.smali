.class Lcom/facebook/widget/SimpleGraphObjectCursor;
.super Ljava/lang/Object;
.source "SimpleGraphObjectCursor.java"

# interfaces
.implements Lcom/facebook/widget/GraphObjectCursor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/model/GraphObject;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/widget/GraphObjectCursor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private closed:Z

.field private fromCache:Z

.field private graphObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private moreObjectsAvailable:Z

.field private pos:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->closed:Z

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    .line 29
    iput-boolean v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->moreObjectsAvailable:Z

    .line 30
    iput-boolean v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->fromCache:Z

    return-void
.end method

.method constructor <init>(Lcom/facebook/widget/SimpleGraphObjectCursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/SimpleGraphObjectCursor<",
            "TT;>;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->closed:Z

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    .line 29
    iput-boolean v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->moreObjectsAvailable:Z

    .line 30
    iput-boolean v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->fromCache:Z

    .line 36
    iget v0, p1, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    iput v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    .line 37
    iget-boolean v0, p1, Lcom/facebook/widget/SimpleGraphObjectCursor;->closed:Z

    iput-boolean v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->closed:Z

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    .line 39
    iget-object v1, p1, Lcom/facebook/widget/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 40
    iget-boolean p1, p1, Lcom/facebook/widget/SimpleGraphObjectCursor;->fromCache:Z

    iput-boolean p1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->fromCache:Z

    return-void
.end method


# virtual methods
.method public addGraphObjects(Ljava/util/Collection;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 48
    iget-boolean p1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->fromCache:Z

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->fromCache:Z

    return-void
.end method

.method public areMoreObjectsAvailable()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->moreObjectsAvailable:Z

    return v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->closed:Z

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGraphObject()Lcom/facebook/model/GraphObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 143
    iget v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    if-ltz v0, :cond_1

    .line 146
    iget-object v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    iget v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/model/GraphObject;

    return-object v0

    .line 147
    :cond_0
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "After last object."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_1
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "Before first object."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isClosed()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->closed:Z

    return v0
.end method

.method public isFromCache()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->fromCache:Z

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0, v0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .line 111
    iget v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 2

    .line 84
    invoke-virtual {p0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    .line 86
    iput v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    return v1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, -0x1

    .line 91
    iput p1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    return v1

    .line 95
    :cond_1
    iput p1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    const/4 p1, 0x1

    return p1
.end method

.method public setFromCache(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->fromCache:Z

    return-void
.end method

.method public setMoreObjectsAvailable(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->moreObjectsAvailable:Z

    return-void
.end method
