.class Lcom/amazon/kcp/cover/BitmapCoverCache$3;
.super Ljava/lang/Object;
.source "BitmapCoverCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/cover/BitmapCoverCache;->unloadAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/cover/BitmapCoverCache;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/cover/BitmapCoverCache;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$3;->this$0:Lcom/amazon/kcp/cover/BitmapCoverCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$3;->this$0:Lcom/amazon/kcp/cover/BitmapCoverCache;

    invoke-static {v0}, Lcom/amazon/kcp/cover/BitmapCoverCache;->access$000(Lcom/amazon/kcp/cover/BitmapCoverCache;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 153
    iget-object v0, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$3;->this$0:Lcom/amazon/kcp/cover/BitmapCoverCache;

    invoke-static {v0}, Lcom/amazon/kcp/cover/BitmapCoverCache;->access$200(Lcom/amazon/kcp/cover/BitmapCoverCache;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method
