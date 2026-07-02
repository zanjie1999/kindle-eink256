.class Lcom/amazon/notebook/module/NotebookActivity$2$1;
.super Ljava/lang/Object;
.source "NotebookActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/notebook/module/NotebookActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/notebook/module/NotebookActivity$2;


# direct methods
.method constructor <init>(Lcom/amazon/notebook/module/NotebookActivity$2;)V
    .locals 0

    .line 552
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookActivity$2$1;->this$1:Lcom/amazon/notebook/module/NotebookActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookActivity$2$1;->this$1:Lcom/amazon/notebook/module/NotebookActivity$2;

    iget-object v0, v0, Lcom/amazon/notebook/module/NotebookActivity$2;->this$0:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-static {v0}, Lcom/amazon/notebook/module/NotebookActivity;->access$400(Lcom/amazon/notebook/module/NotebookActivity;)V

    return-void
.end method
