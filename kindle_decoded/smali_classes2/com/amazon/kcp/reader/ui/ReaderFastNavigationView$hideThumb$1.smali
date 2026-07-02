.class final Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$hideThumb$1;
.super Ljava/lang/Object;
.source "ReaderFastNavigationView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->hideThumb(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$hideThumb$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 358
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$hideThumb$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$setShouldMakeThumbVisible$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;Z)V

    .line 359
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$hideThumb$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$getTAG$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isThumbVisible: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$hideThumb$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {v2}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$isThumbVisible$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$hideThumb$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$isThumbVisible$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$hideThumb$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$startThumbAnimation(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;Z)V

    :cond_0
    return-void
.end method
