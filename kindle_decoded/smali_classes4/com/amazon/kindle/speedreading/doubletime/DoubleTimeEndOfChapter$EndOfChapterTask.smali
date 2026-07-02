.class Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$EndOfChapterTask;
.super Landroid/os/AsyncTask;
.source "DoubleTimeEndOfChapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndOfChapterTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/view/View;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private layout:Landroid/view/View;

.field final synthetic this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$EndOfChapterTask;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$1;)V
    .locals 0

    .line 240
    invoke-direct {p0, p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$EndOfChapterTask;-><init>(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/view/View;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    .line 247
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$EndOfChapterTask;->layout:Landroid/view/View;

    const-wide/16 v0, 0x3e8

    .line 255
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :catch_0
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$EndOfChapterTask;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->access$900(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;)Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$EndOfChapterTask;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->access$700(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$EndOfChapterTask;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;

    invoke-static {v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->access$800(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;->getApproximateWordCount(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result p1

    .line 263
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 240
    check-cast p1, [Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$EndOfChapterTask;->doInBackground([Landroid/view/View;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 13

    .line 269
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$EndOfChapterTask;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 271
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$EndOfChapterTask;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->access$200(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;)Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->getCurrentWordsPerMin()I

    move-result v0

    .line 274
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x40855555

    div-float/2addr v1, v2

    const/high16 v2, 0x45610000    # 3600.0f

    div-float v3, v1, v2

    float-to-int v3, v3

    const/high16 v4, 0x42700000    # 60.0f

    div-float/2addr v1, v4

    float-to-int v1, v1

    .line 278
    iget-object v5, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$EndOfChapterTask;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;

    invoke-static {v5}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->access$500(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/amazon/kindle/speedreading/R$string;->dt_eoc_average_message:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 279
    iget-object v6, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$EndOfChapterTask;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;

    invoke-static {v6}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->access$500(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/amazon/kindle/speedreading/R$plurals;->dt_eoc_minutes:I

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v6, v7, v1, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    if-nez v1, :cond_0

    move-object v6, v7

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$EndOfChapterTask;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;

    invoke-static {v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->access$500(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v9, Lcom/amazon/kindle/speedreading/R$plurals;->dt_eoc_hours:I

    new-array v10, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v1, v9, v3, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-nez v3, :cond_1

    move-object v1, v7

    :cond_1
    const/4 v3, 0x3

    new-array v9, v3, [Ljava/lang/Object;

    const/16 v10, 0xfa

    .line 291
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    aput-object v1, v9, v8

    const/4 v1, 0x2

    aput-object v6, v9, v1

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 293
    iget-object v6, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$EndOfChapterTask;->layout:Landroid/view/View;

    sget v9, Lcom/amazon/kindle/speedreading/R$id;->dt_eoc_next_avg_speed:I

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 294
    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    int-to-float v5, v0

    div-float/2addr v5, v4

    div-float/2addr p1, v5

    div-float v2, p1, v2

    float-to-int v2, v2

    div-float/2addr p1, v4

    float-to-int p1, p1

    .line 301
    iget-object v4, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$EndOfChapterTask;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;

    invoke-static {v4}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->access$500(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/amazon/kindle/speedreading/R$string;->dt_eoc_dt_message:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 303
    iget-object v5, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$EndOfChapterTask;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;

    invoke-static {v5}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->access$500(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/amazon/kindle/speedreading/R$plurals;->dt_eoc_minutes:I

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v5, v6, p1, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-nez p1, :cond_2

    move-object v5, v7

    .line 309
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$EndOfChapterTask;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->access$500(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v6, Lcom/amazon/kindle/speedreading/R$plurals;->dt_eoc_hours:I

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {p1, v6, v2, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move-object v7, p1

    :goto_0
    new-array p1, v3, [Ljava/lang/Object;

    .line 315
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v11

    aput-object v7, p1, v8

    aput-object v5, p1, v1

    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 317
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$EndOfChapterTask;->layout:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/speedreading/R$id;->dt_eoc_next_dt_speed:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 318
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$EndOfChapterTask;->layout:Landroid/view/View;

    sget v0, Lcom/amazon/kindle/speedreading/R$id;->dt_eoc_progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    .line 321
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 240
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$EndOfChapterTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
