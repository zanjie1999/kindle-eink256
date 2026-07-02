.class Lcom/amazon/kcp/reader/ReaderActivity$7;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderActivity;->setupTOC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderActivity;

.field final synthetic val$closeTOCDelegate:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 912
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$7;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ReaderActivity$7;->val$closeTOCDelegate:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry;)V
    .locals 0

    .line 915
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$7;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {p2}, Lcom/amazon/android/tableofcontents/data/TOCEntry;->getPosition()I

    move-result p2

    invoke-static {p1, p2}, Lcom/amazon/kcp/reader/ReaderActivity;->access$600(Lcom/amazon/kcp/reader/ReaderActivity;I)V

    .line 916
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$7;->val$closeTOCDelegate:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
