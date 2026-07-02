.class Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$2;
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

    .line 167
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$2;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 170
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$2;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 171
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$2;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->access$200(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;)Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->resumeLooper()V

    return-void
.end method
