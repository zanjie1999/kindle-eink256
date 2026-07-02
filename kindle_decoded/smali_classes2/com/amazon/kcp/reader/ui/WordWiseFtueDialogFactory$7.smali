.class Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$7;
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


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;Ljava/lang/String;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$7;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$7;->val$enabledString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 541
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$7;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->access$102(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;Ljava/lang/String;)Ljava/lang/String;

    .line 542
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 543
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "KeptDefaultHintLanguageFromJit"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$7;->val$enabledString:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportWordWiseAction(Ljava/lang/String;)V

    .line 545
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
