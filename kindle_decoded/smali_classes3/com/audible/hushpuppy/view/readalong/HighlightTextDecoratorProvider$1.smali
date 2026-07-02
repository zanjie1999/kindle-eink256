.class Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider$1;
.super Ljava/lang/Object;
.source "HighlightTextDecoratorProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider$1;->this$0:Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider$1;->this$0:Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->access$000(Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;)Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider$1;->this$0:Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V

    return-void
.end method
