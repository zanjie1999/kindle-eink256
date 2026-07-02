.class Lcom/amazon/kindle/krx/reader/BookNavigator$7;
.super Ljava/lang/Object;
.source "BookNavigator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/reader/BookNavigator;->goToNextPage(Ljava/util/EnumSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/reader/BookNavigator;

.field final synthetic val$options:Ljava/util/EnumSet;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/reader/BookNavigator;Ljava/util/EnumSet;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$7;->this$0:Lcom/amazon/kindle/krx/reader/BookNavigator;

    iput-object p2, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$7;->val$options:Ljava/util/EnumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 573
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$7;->this$0:Lcom/amazon/kindle/krx/reader/BookNavigator;

    invoke-static {v0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->access$100(Lcom/amazon/kindle/krx/reader/BookNavigator;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 575
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 577
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 579
    iget-object v2, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$7;->val$options:Ljava/util/EnumSet;

    sget-object v3, Lcom/amazon/kindle/krx/reader/IBookNavigator$PageTurnOption;->PreserveOverlays:Lcom/amazon/kindle/krx/reader/IBookNavigator$PageTurnOption;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setPreserveOverlays(Z)V

    .line 584
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$7;->this$0:Lcom/amazon/kindle/krx/reader/BookNavigator;

    invoke-static {v1}, Lcom/amazon/kindle/krx/reader/BookNavigator;->access$200(Lcom/amazon/kindle/krx/reader/BookNavigator;)V

    const/4 v1, 0x0

    .line 585
    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->navigateToNextPage(Lcom/amazon/foundation/internal/IBooleanCallback;)V

    :cond_1
    return-void
.end method
