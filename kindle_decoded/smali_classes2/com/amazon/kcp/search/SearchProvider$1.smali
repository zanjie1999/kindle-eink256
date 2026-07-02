.class Lcom/amazon/kcp/search/SearchProvider$1;
.super Ljava/lang/Object;
.source "SearchProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/SearchProvider;->onContentUpdate(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/SearchProvider;

.field final synthetic val$event:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/SearchProvider;Ljava/util/Collection;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchProvider$1;->this$0:Lcom/amazon/kcp/search/SearchProvider;

    iput-object p2, p0, Lcom/amazon/kcp/search/SearchProvider$1;->val$event:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 566
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchProvider$1;->this$0:Lcom/amazon/kcp/search/SearchProvider;

    iget-object v1, p0, Lcom/amazon/kcp/search/SearchProvider$1;->val$event:Ljava/util/Collection;

    invoke-static {v0, v1}, Lcom/amazon/kcp/search/SearchProvider;->access$000(Lcom/amazon/kcp/search/SearchProvider;Ljava/util/Collection;)V

    return-void
.end method
