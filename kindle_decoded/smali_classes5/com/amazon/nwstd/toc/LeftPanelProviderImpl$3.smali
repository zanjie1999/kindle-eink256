.class Lcom/amazon/nwstd/toc/LeftPanelProviderImpl$3;
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

    .line 114
    iput-object p1, p0, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl$3;->this$0:Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl$3;->this$0:Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;

    invoke-static {v0}, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;->access$100(Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;)Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->onSearchRequested()Z

    return-void
.end method
