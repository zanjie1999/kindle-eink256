.class Lcom/amazon/kindle/krx/ui/ReaderUIManager$4;
.super Ljava/lang/Object;
.source "ReaderUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/ui/ReaderUIManager;->changeDecorationProviderState(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/ui/ReaderUIManager;

.field final synthetic val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field final synthetic val$provider:Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/ui/ReaderUIManager;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;Z)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager$4;->this$0:Lcom/amazon/kindle/krx/ui/ReaderUIManager;

    iput-object p2, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager$4;->val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iput-object p3, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager$4;->val$provider:Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;

    iput-boolean p4, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager$4;->val$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 481
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager$4;->val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager$4;->val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager$4;->val$provider:Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;

    iget-boolean v2, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager$4;->val$value:Z

    invoke-virtual {v0, v1, v2}, Lcom/amazon/android/docviewer/KindleDocView;->changeDecorationProviderState(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;Z)V

    :cond_0
    return-void
.end method
