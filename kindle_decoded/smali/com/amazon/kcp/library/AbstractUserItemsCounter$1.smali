.class Lcom/amazon/kcp/library/AbstractUserItemsCounter$1;
.super Ljava/lang/Object;
.source "AbstractUserItemsCounter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/AbstractUserItemsCounter;->updateFromDB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/AbstractUserItemsCounter;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/AbstractUserItemsCounter;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/amazon/kcp/library/AbstractUserItemsCounter$1;->this$0:Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/amazon/kcp/library/AbstractUserItemsCounter$1;->this$0:Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->updateFromDbSynchronous()V

    return-void
.end method
