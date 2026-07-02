.class Lcom/amazon/kcp/library/PausableListener$2;
.super Ljava/lang/Object;
.source "PausableListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/PausableListener;->refreshItem(Lcom/amazon/kindle/content/ContentMetadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/PausableListener;

.field final synthetic val$item:Lcom/amazon/kindle/content/ContentMetadata;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/PausableListener;Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/amazon/kcp/library/PausableListener$2;->this$0:Lcom/amazon/kcp/library/PausableListener;

    iput-object p2, p0, Lcom/amazon/kcp/library/PausableListener$2;->val$item:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/amazon/kcp/library/PausableListener$2;->this$0:Lcom/amazon/kcp/library/PausableListener;

    iget-object v1, p0, Lcom/amazon/kcp/library/PausableListener$2;->val$item:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/PausableListener;->refreshItem(Lcom/amazon/kindle/content/ContentMetadata;)V

    return-void
.end method
