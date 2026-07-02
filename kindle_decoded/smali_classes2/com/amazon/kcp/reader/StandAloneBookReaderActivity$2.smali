.class Lcom/amazon/kcp/reader/StandAloneBookReaderActivity$2;
.super Ljava/lang/Object;
.source "StandAloneBookReaderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->onReaderModeChangedEvent(Lcom/amazon/kindle/krx/reader/ReaderModeEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity$2;->this$0:Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 352
    iget-object v0, p0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity$2;->this$0:Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;

    sget-object v1, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/ReaderActivity;->showNLNContentFragment(Lcom/amazon/kindle/nln/NonLinearNavigationMode;Z)V

    .line 353
    iget-object v0, p0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity$2;->this$0:Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->hideOverlays()V

    return-void
.end method
