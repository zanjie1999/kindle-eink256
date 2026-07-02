.class Lcom/amazon/kcp/reader/MopReaderActivity$1;
.super Ljava/lang/Object;
.source "MopReaderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/MopReaderActivity;->onAnnotationsLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/MopReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/MopReaderActivity;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/amazon/kcp/reader/MopReaderActivity$1;->this$0:Lcom/amazon/kcp/reader/MopReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/amazon/kcp/reader/MopReaderActivity$1;->this$0:Lcom/amazon/kcp/reader/MopReaderActivity;

    invoke-static {v0}, Lcom/amazon/kcp/reader/MopReaderActivity;->access$400(Lcom/amazon/kcp/reader/MopReaderActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/MopReaderActivity$1;->this$0:Lcom/amazon/kcp/reader/MopReaderActivity;

    .line 171
    invoke-static {v0}, Lcom/amazon/kcp/reader/MopReaderActivity;->access$400(Lcom/amazon/kcp/reader/MopReaderActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$id;->pdf_render_spinner_cover:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 173
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
