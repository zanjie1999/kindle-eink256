.class Lcom/amazon/kcp/reader/ui/ActionBarDecoration$3;
.super Ljava/lang/Object;
.source "ActionBarDecoration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->updateActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ActionBarDecoration;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$3;->this$0:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 324
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 325
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$3;->this$0:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->hasDecoration()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 326
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    .line 327
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$3;->this$0:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->access$000(Lcom/amazon/kcp/reader/ui/ActionBarDecoration;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$3;->this$0:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->access$000(Lcom/amazon/kcp/reader/ui/ActionBarDecoration;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 328
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$3;->this$0:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->access$000(Lcom/amazon/kcp/reader/ui/ActionBarDecoration;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 329
    invoke-static {}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->access$300()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 330
    invoke-static {}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->access$300()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderModeHandler()Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler;->getReaderMode(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 334
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 335
    :goto_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$3;->this$0:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 339
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$3;->this$0:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->access$400(Lcom/amazon/kcp/reader/ui/ActionBarDecoration;)V

    return-void
.end method
