.class Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$2;
.super Ljava/lang/Object;
.source "PageFlipFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->onReaderModeChangedEvent(Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;

.field final synthetic val$mode:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$2;->this$0:Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;

    iput-object p2, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$2;->val$mode:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$2;->this$0:Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;

    iget-object v1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$2;->val$mode:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->showViewsForReaderMode(Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;)V

    return-void
.end method
