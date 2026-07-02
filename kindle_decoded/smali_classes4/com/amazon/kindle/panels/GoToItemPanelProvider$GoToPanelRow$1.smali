.class Lcom/amazon/kindle/panels/GoToItemPanelProvider$GoToPanelRow$1;
.super Ljava/lang/Object;
.source "GoToItemPanelProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/panels/GoToItemPanelProvider$GoToPanelRow;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/panels/GoToItemPanelProvider$GoToPanelRow;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 0

    .line 72
    iput-object p2, p0, Lcom/amazon/kindle/panels/GoToItemPanelProvider$GoToPanelRow$1;->val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 75
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 77
    iget-object v1, p0, Lcom/amazon/kindle/panels/GoToItemPanelProvider$GoToPanelRow$1;->val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 78
    iget-object v1, p0, Lcom/amazon/kindle/panels/GoToItemPanelProvider$GoToPanelRow$1;->val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amazon/kindle/panels/GoToItemPanelProvider$GoToPanelRow$1;->val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->suppressLocations()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/panels/GoToItemPanelProvider$GoToPanelRow$1;->val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsPageLabels()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    .line 81
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/redding/ReddingActivity;->showDialogSafely(I)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/redding/ReddingActivity;->showDialogSafely(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x2

    .line 79
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/redding/ReddingActivity;->showDialogSafely(I)V

    :cond_3
    :goto_1
    return-void
.end method
