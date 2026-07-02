.class Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$6;
.super Ljava/lang/Object;
.source "WordWiseFtueDialogFactory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->setFtueDialogContentForNewUser(Landroidx/appcompat/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$6;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 498
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$6;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    invoke-static {p2}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->access$100(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 499
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 501
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_LANGUAGE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$6;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->access$100(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 503
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SetHintLanguageFromFtuxDisabled_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$6;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->access$100(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportWordWiseAction(Ljava/lang/String;)V

    :cond_1
    const/4 p2, 0x1

    .line 505
    invoke-static {p2}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->setWordWiseEnabled(Z)V

    .line 507
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$6;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    invoke-static {v0, p2}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->access$402(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;Z)Z

    const-string p2, "EnabledFromFtux"

    .line 508
    invoke-static {p2}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportWordWiseAction(Ljava/lang/String;)V

    .line 509
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
