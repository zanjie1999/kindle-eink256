.class Lcom/amazon/kcp/reader/BookTOCActivity$TOCDataSourcePollRunnable;
.super Ljava/lang/Object;
.source "BookTOCActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/BookTOCActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TOCDataSourcePollRunnable"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kcp/reader/BookTOCActivity;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/reader/BookTOCActivity;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/amazon/kcp/reader/BookTOCActivity$TOCDataSourcePollRunnable;->this$0:Lcom/amazon/kcp/reader/BookTOCActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    const-class p1, Lcom/amazon/kcp/reader/BookTOCActivity$TOCDataSourcePollRunnable;

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/BookTOCActivity$TOCDataSourcePollRunnable;->TAG:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/reader/BookTOCActivity;Lcom/amazon/kcp/reader/BookTOCActivity$1;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/BookTOCActivity$TOCDataSourcePollRunnable;-><init>(Lcom/amazon/kcp/reader/BookTOCActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 183
    iget-object v0, p0, Lcom/amazon/kcp/reader/BookTOCActivity$TOCDataSourcePollRunnable;->this$0:Lcom/amazon/kcp/reader/BookTOCActivity;

    invoke-static {v0}, Lcom/amazon/kcp/reader/BookTOCActivity;->access$400(Lcom/amazon/kcp/reader/BookTOCActivity;)Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/IBookHierarchicalTOC;

    if-eqz v0, :cond_1

    .line 184
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IKindleTOC;->getTopLevelTOCItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/BookTOCActivity$TOCDataSourcePollRunnable;->this$0:Lcom/amazon/kcp/reader/BookTOCActivity;

    invoke-static {v1}, Lcom/amazon/kcp/reader/BookTOCActivity;->access$100(Lcom/amazon/kcp/reader/BookTOCActivity;)Lcom/amazon/kcp/reader/BookTOCActivity$TOCArrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 191
    iget-object v1, p0, Lcom/amazon/kcp/reader/BookTOCActivity$TOCDataSourcePollRunnable;->this$0:Lcom/amazon/kcp/reader/BookTOCActivity;

    invoke-static {v1}, Lcom/amazon/kcp/reader/BookTOCActivity;->access$100(Lcom/amazon/kcp/reader/BookTOCActivity;)Lcom/amazon/kcp/reader/BookTOCActivity$TOCArrayAdapter;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/android/docviewer/IKindleTOC;->getTopLevelTOCItems()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Lcom/amazon/kcp/reader/BookTOCActivity;->access$600(Lcom/amazon/kcp/reader/BookTOCActivity;Lcom/amazon/kcp/reader/BookTOCActivity$TOCArrayAdapter;Lcom/amazon/android/docviewer/IBookHierarchicalTOC;Ljava/util/List;I)V

    .line 192
    iget-object v1, p0, Lcom/amazon/kcp/reader/BookTOCActivity$TOCDataSourcePollRunnable;->this$0:Lcom/amazon/kcp/reader/BookTOCActivity;

    invoke-static {v1, v0}, Lcom/amazon/kcp/reader/BookTOCActivity;->access$700(Lcom/amazon/kcp/reader/BookTOCActivity;Lcom/amazon/android/docviewer/IBookHierarchicalTOC;)V

    return-void

    .line 186
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/BookTOCActivity$TOCDataSourcePollRunnable;->this$0:Lcom/amazon/kcp/reader/BookTOCActivity;

    invoke-static {v0}, Lcom/amazon/kcp/reader/BookTOCActivity;->access$500(Lcom/amazon/kcp/reader/BookTOCActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/reader/BookTOCActivity$TOCDataSourcePollRunnable;

    iget-object v2, p0, Lcom/amazon/kcp/reader/BookTOCActivity$TOCDataSourcePollRunnable;->this$0:Lcom/amazon/kcp/reader/BookTOCActivity;

    invoke-direct {v1, v2}, Lcom/amazon/kcp/reader/BookTOCActivity$TOCDataSourcePollRunnable;-><init>(Lcom/amazon/kcp/reader/BookTOCActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
