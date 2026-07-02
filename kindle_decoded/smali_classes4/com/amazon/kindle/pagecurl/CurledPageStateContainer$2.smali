.class Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$2;
.super Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;
.source "CurledPageStateContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->getCurledPageIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;)V
    .locals 1

    .line 356
    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$2;->this$0:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;-><init>(Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$1;)V

    return-void
.end method


# virtual methods
.method getNextIndex(I)I
    .locals 1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 360
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$2;->this$0:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->access$200(Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$2;->this$0:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->access$200(Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/pagecurl/CurledPageState;

    iget-boolean v0, v0, Lcom/amazon/kindle/pagecurl/CurledPageState;->selfAnimated:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method
