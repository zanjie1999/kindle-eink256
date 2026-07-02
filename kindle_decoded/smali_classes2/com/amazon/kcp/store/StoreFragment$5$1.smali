.class Lcom/amazon/kcp/store/StoreFragment$5$1;
.super Ljava/util/TimerTask;
.source "StoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/store/StoreFragment$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/store/StoreFragment$5;

.field final synthetic val$storeUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/StoreFragment$5;Ljava/lang/String;)V
    .locals 0

    .line 1463
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$5$1;->this$1:Lcom/amazon/kcp/store/StoreFragment$5;

    iput-object p2, p0, Lcom/amazon/kcp/store/StoreFragment$5$1;->val$storeUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1466
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$5$1;->this$1:Lcom/amazon/kcp/store/StoreFragment$5;

    iget-object v0, v0, Lcom/amazon/kcp/store/StoreFragment$5;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    iget-object v1, p0, Lcom/amazon/kcp/store/StoreFragment$5$1;->val$storeUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/kcp/store/StoreFragment;->access$1200(Lcom/amazon/kcp/store/StoreFragment;Ljava/lang/String;)V

    return-void
.end method
