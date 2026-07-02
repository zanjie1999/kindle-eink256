.class Lcom/amazon/kcp/reader/ReaderActivity$8;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 0

    .line 940
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$8;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 943
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 944
    sget v1, Lcom/amazon/kindle/krl/R$id;->toc_header_authors:I

    if-ne v0, v1, :cond_0

    .line 946
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "Authors clicked"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 947
    :cond_0
    sget p1, Lcom/amazon/kindle/krl/R$id;->toc_header_close:I

    if-ne v0, p1, :cond_1

    .line 948
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$8;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->hideTOCFragment()V

    :cond_1
    :goto_0
    return-void
.end method
