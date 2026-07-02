.class Lcom/amazon/kcp/search/StoreResultsLayout$2$1;
.super Ljava/lang/Object;
.source "StoreResultsLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/StoreResultsLayout$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/search/StoreResultsLayout$2;

.field final synthetic val$updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/StoreResultsLayout$2;Lcom/amazon/kcp/cover/UpdatableCover;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/amazon/kcp/search/StoreResultsLayout$2$1;->this$1:Lcom/amazon/kcp/search/StoreResultsLayout$2;

    iput-object p2, p0, Lcom/amazon/kcp/search/StoreResultsLayout$2$1;->val$updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/amazon/kcp/search/StoreResultsLayout$2$1;->val$updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

    new-instance v1, Lcom/amazon/kcp/search/StoreResultsLayout$2$1$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/search/StoreResultsLayout$2$1$1;-><init>(Lcom/amazon/kcp/search/StoreResultsLayout$2$1;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/cover/UpdatableCover;->setOnUpdateListener(Lcom/amazon/kcp/cover/OnImageUpdateListener;)V

    return-void
.end method
