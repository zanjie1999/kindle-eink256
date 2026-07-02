.class Lcom/amazon/kindle/krx/ui/ReaderUIManager$3;
.super Ljava/lang/Object;
.source "ReaderUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/ui/ReaderUIManager;->refreshViewOrDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/ui/ReaderUIManager;

.field final synthetic val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field final synthetic val$provider:Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/ui/ReaderUIManager;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager$3;->this$0:Lcom/amazon/kindle/krx/ui/ReaderUIManager;

    iput-object p2, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager$3;->val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iput-object p3, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager$3;->val$provider:Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager$3;->val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    instance-of v1, v0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    .line 462
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isPageTurnAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_2

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager$3;->val$provider:Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;

    if-eqz v0, :cond_1

    .line 464
    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager$3;->val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1, v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->refreshDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V

    goto :goto_0

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager$3;->val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->refreshDocViewAsync()V

    :cond_2
    :goto_0
    return-void
.end method
