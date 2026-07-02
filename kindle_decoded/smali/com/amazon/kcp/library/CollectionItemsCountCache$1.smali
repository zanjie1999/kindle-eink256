.class Lcom/amazon/kcp/library/CollectionItemsCountCache$1;
.super Ljava/lang/Object;
.source "CollectionItemsCountCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/CollectionItemsCountCache;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/CollectionItemsCountCache;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/CollectionItemsCountCache;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/amazon/kcp/library/CollectionItemsCountCache$1;->this$0:Lcom/amazon/kcp/library/CollectionItemsCountCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/amazon/kcp/library/CollectionItemsCountCache$1;->this$0:Lcom/amazon/kcp/library/CollectionItemsCountCache;

    invoke-static {v0}, Lcom/amazon/kcp/library/CollectionItemsCountCache;->access$100(Lcom/amazon/kcp/library/CollectionItemsCountCache;)V

    return-void
.end method
