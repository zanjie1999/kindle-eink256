.class Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$9;
.super Ljava/lang/Object;
.source "WordWiseFtueDialogFactory.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->createFooterTutorialView(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

.field final synthetic val$readerSurface:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;Landroid/view/ViewGroup;)V
    .locals 0

    .line 633
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$9;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$9;->val$readerSurface:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 636
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 638
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "WordWiseDifficultySliderShown"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 639
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$9;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->access$502(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;Z)Z

    .line 640
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->updateFooter()V

    .line 641
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$9;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->access$600(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$9;->val$readerSurface:Landroid/view/ViewGroup;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->removeSurfaceOverReader(Landroid/view/ViewGroup;)V

    .line 643
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$9;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->access$300(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;)Lcom/amazon/kcp/info/TutorialLock;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/info/TutorialLock;->unlockTutorials()V

    :cond_0
    return-void
.end method
