.class Lcom/amazon/startactions/plugin/StartActionsController$2;
.super Landroid/os/AsyncTask;
.source "StartActionsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/plugin/StartActionsController;->onSidecarDownload(Lcom/amazon/kindle/krx/content/IBook;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$book:Lcom/amazon/kindle/krx/content/IBook;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/plugin/StartActionsController;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 461
    iput-object p2, p0, Lcom/amazon/startactions/plugin/StartActionsController$2;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 461
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/startactions/plugin/StartActionsController$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 464
    iget-object p1, p0, Lcom/amazon/startactions/plugin/StartActionsController$2;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    sget-object v0, Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;->START_ACTIONS:Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;

    invoke-static {p1, v0}, Lcom/amazon/ea/util/SidecarFileUtil;->getSidecarFileSize(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;)I

    move-result p1

    .line 465
    new-instance v0, Lcom/amazon/startactions/metrics/Metric;

    const-string v1, "StartActionsSidecarDownload"

    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/amazon/startactions/metrics/Metric;-><init>(Ljava/lang/String;)V

    const-string v1, "SidecarSizeInBytes"

    .line 466
    invoke-virtual {v0, v1, p1}, Lcom/amazon/startactions/metrics/Metric;->setCount(Ljava/lang/String;I)V

    .line 467
    invoke-virtual {v0}, Lcom/amazon/startactions/metrics/Metric;->close()V

    const/4 p1, 0x0

    return-object p1
.end method
