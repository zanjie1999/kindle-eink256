.class Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$8;
.super Ljava/lang/Object;
.source "WordWiseFtueDialogFactory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->setFtueDialogContentForVersion2(Landroidx/appcompat/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

.field final synthetic val$enabledString:Ljava/lang/String;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$8;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$8;->val$prefs:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$8;->val$enabledString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 552
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$8;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    invoke-static {p2}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->access$100(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 553
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$8;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_LANGUAGE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$8;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->access$100(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 554
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SetHintLanguageFromJit"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$8;->val$enabledString:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$8;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->access$100(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportWordWiseAction(Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x1

    .line 556
    invoke-static {p2}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->setWordWiseEnabled(Z)V

    .line 557
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
