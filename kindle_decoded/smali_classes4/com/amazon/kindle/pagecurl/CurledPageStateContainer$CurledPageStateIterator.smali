.class abstract Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;
.super Ljava/lang/Object;
.source "CurledPageStateContainer.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CurledPageStateIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/amazon/kindle/pagecurl/CurledPageState;",
        ">;"
    }
.end annotation


# instance fields
.field private cursor:I

.field private expectedModCount:I

.field private next:I

.field private previous:I

.field final synthetic this$0:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->this$0:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 19
    iput p1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->cursor:I

    .line 20
    iput p1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->previous:I

    .line 21
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->getNextIndex(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->next:I

    .line 22
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->this$0:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->access$000(Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->expectedModCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$1;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;-><init>(Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;)V

    return-void
.end method

.method private checkForComodification()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->this$0:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->access$000(Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;)I

    move-result v0

    iget v1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->expectedModCount:I

    if-ne v0, v1, :cond_0

    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method private getPageCount()I
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->this$0:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->access$300(Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;)I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->this$0:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->access$400(Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method abstract getNextIndex(I)I
.end method

.method public hasNext()Z
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->this$0:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->access$100(Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;)Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThread()V

    .line 26
    iget v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->next:I

    if-ltz v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lcom/amazon/kindle/pagecurl/CurledPageState;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->this$0:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->access$100(Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;)Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThread()V

    .line 31
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->checkForComodification()V

    .line 33
    iget v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->cursor:I

    iput v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->previous:I

    .line 34
    iget v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->next:I

    iput v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->cursor:I

    .line 35
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->getNextIndex(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->next:I

    .line 36
    iget v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->cursor:I

    if-ltz v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->this$0:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->access$200(Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;)Ljava/util/Vector;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->cursor:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/pagecurl/CurledPageState;

    return-object v0

    .line 37
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->next()Lcom/amazon/kindle/pagecurl/CurledPageState;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->this$0:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->access$100(Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;)Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThread()V

    .line 44
    iget v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->cursor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->checkForComodification()V

    .line 48
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->this$0:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->access$200(Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;)Ljava/util/Vector;

    move-result-object v2

    iget v3, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->cursor:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/pagecurl/CurledPageState;

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->recycle(Lcom/amazon/kindle/pagecurl/CurledPageState;)V

    .line 49
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->this$0:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->access$000(Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->expectedModCount:I

    .line 50
    iget v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->cursor:I

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->getNextIndex(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->next:I

    .line 51
    iget v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->previous:I

    iput v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->cursor:I

    .line 52
    iput v1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;->previous:I

    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
