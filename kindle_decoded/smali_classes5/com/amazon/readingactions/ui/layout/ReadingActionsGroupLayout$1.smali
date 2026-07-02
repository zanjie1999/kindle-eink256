.class Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout$1;
.super Ljava/lang/Object;
.source "ReadingActionsGroupLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout;->setScrollListener(Landroidx/core/widget/NestedScrollView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$widgetScroller:Landroidx/core/widget/NestedScrollView;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout;Landroidx/core/widget/NestedScrollView;)V
    .locals 0

    .line 271
    iput-object p2, p0, Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout$1;->val$widgetScroller:Landroidx/core/widget/NestedScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 3

    .line 274
    iget-object v0, p0, Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout$1;->val$widgetScroller:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "AnyActionsGroupLayout"

    const-string v2, "Scroll"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout$1;->val$widgetScroller:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_0
    return-void
.end method
