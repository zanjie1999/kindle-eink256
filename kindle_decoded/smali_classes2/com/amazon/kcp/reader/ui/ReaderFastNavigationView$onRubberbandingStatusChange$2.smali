.class final Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$onRubberbandingStatusChange$2;
.super Ljava/lang/Object;
.source "ReaderFastNavigationView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->onRubberbandingStatusChange(Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent;)V
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

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$onRubberbandingStatusChange$2;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 457
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$onRubberbandingStatusChange$2;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$getTAG$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Ljava/lang/String;

    .line 458
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$onRubberbandingStatusChange$2;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$getNORMAL_HIDE_DELAY$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->hideThumb(J)V

    return-void
.end method
