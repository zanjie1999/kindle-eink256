.class Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$3;
.super Ljava/lang/Object;
.source "DefinitionViewController.java"

# interfaces
.implements Lcom/amazon/android/widget/ScrollListenerScrollView$onScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->setupScrollViewMetric()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$shouldEmitScrollMetric:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 351
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$3;->val$shouldEmitScrollMetric:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(Lcom/amazon/android/widget/ScrollListenerScrollView;)V
    .locals 1

    .line 355
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$3;->val$shouldEmitScrollMetric:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 356
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$3;->val$shouldEmitScrollMetric:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p1, "Scroll"

    .line 357
    invoke-static {p1}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->emitMetric(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
