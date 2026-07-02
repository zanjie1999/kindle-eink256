.class Lcom/amazon/kcp/reader/ReaderActivity$27;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderActivity;->onLocalBookItemEvent(Lcom/amazon/kindle/krx/events/LocalBookItemEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 0

    .line 3942
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$27;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3945
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$27;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/redding/ReddingActivity;->showDialogSafely(I)V

    return-void
.end method
