.class Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$3;
.super Ljava/lang/Object;
.source "WordWiseFtueDialogFactory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->showFtueDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;

.field final synthetic val$prevLanguage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$3;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$3;->val$prevLanguage:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$3;->val$prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 349
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$3;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->access$100(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$3;->val$prevLanguage:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$3;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->access$100(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 350
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$3;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_LANGUAGE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$3;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->access$100(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 351
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->resyncDictionary()V

    .line 354
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$3;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->access$202(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;Z)Z

    .line 356
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$3;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->access$300(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;)Lcom/amazon/kcp/info/TutorialLock;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/info/TutorialLock;->unlockTutorials()V

    .line 357
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$3;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->access$400(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 358
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$3;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->access$402(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;Z)Z

    .line 359
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$3;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->access$000(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;)V

    :cond_1
    return-void
.end method
