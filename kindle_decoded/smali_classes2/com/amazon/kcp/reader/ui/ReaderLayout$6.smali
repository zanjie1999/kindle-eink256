.class Lcom/amazon/kcp/reader/ui/ReaderLayout$6;
.super Ljava/lang/Object;
.source "ReaderLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderLayout;->setDocViewer(Lcom/amazon/android/docviewer/KindleDocViewer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 0

    .line 897
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 901
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccessibilitySpeaker()Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->speak_overlays_hidden:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->speakViaTalkback(Ljava/lang/CharSequence;Landroid/view/View;)V

    .line 902
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 904
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->hideAllViewOptionOverlays()Z

    .line 905
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->access$100(Lcom/amazon/kcp/reader/ui/ReaderLayout;Z)V

    goto :goto_0

    .line 907
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 909
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->startContinuousReading()V

    return-void
.end method
