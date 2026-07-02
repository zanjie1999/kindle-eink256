.class Lcom/amazon/nwstd/toc/LeftPanelProviderImpl$2;
.super Ljava/lang/Object;
.source "LeftPanelProviderImpl.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;->createView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl$2;->this$0:Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl$2;->this$0:Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;

    invoke-static {v0}, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;->access$200(Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-static {}, Lcom/amazon/nwstd/utils/LibraryUtils;->getLibrarySwitchServiceIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 110
    iget-object v0, p0, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl$2;->this$0:Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;

    invoke-static {v0}, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;->access$300(Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->gracefullyKillActivity()V

    return-void
.end method
