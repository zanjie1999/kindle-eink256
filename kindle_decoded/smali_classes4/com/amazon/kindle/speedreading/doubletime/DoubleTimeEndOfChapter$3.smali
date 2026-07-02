.class Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$3;
.super Ljava/lang/Object;
.source "DoubleTimeEndOfChapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->setButtonListeners(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$3;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 180
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$3;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->access$300(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;)Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->reportShareButtonPressed()V

    .line 181
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$3;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->access$400(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$3;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->access$500(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$3;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;

    invoke-static {v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->access$600(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/ShareUtils;->shareWpm(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/content/Context;I)V

    .line 182
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$3;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->access$100(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;)V

    return-void
.end method
