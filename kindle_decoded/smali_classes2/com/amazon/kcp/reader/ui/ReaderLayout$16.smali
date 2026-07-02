.class Lcom/amazon/kcp/reader/ui/ReaderLayout$16;
.super Ljava/lang/Object;
.source "ReaderLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderLayout;->initializeAccessibility()V
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

    .line 3337
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$16;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 3340
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$16;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/ReaderLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->removeWordFromEndOfSelection()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3343
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$16;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->remove_word_from_selection:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3344
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$16;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccessibilitySpeaker()Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$16;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 3345
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 3344
    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->speakViaTalkback(Ljava/lang/CharSequence;Landroid/view/View;)V

    .line 3346
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$16;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->layoutAccessibleSelectionButtons()V

    .line 3349
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$16;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getObjectSelectionLayout()Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3350
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$16;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-eqz v0, :cond_1

    .line 3351
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->refreshSelectionButtons(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V

    :cond_1
    return-void
.end method
