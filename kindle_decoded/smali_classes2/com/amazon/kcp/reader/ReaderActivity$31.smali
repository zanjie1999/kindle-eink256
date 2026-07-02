.class Lcom/amazon/kcp/reader/ReaderActivity$31;
.super Landroid/content/BroadcastReceiver;
.source "ReaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderActivity;->getTimeUpdateReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 0

    .line 4826
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$31;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 4829
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$31;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->access$2700(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$31;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->access$2800(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4830
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$31;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->access$2900(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->refreshHeader()V

    :cond_0
    return-void
.end method
