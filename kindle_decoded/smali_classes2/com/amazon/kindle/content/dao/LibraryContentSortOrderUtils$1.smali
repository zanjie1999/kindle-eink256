.class Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$1;
.super Ljava/lang/Object;
.source "LibraryContentSortOrderUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->init(Lcom/amazon/kindle/content/db/KindleContentDB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$1;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 215
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$1;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->setupComparators()V

    .line 217
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/LocaleUtils;->isTCNLocale(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/debug/TCNSortingUtils;->shouldReorderForTCNSorting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$1;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    invoke-static {v0, v1}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$000(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;Z)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$1;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    invoke-static {v0}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$100(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)Z

    move-result v0

    .line 223
    iget-object v2, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$1;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    invoke-static {v2}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$200(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 226
    :goto_0
    iget-object v4, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$1;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    if-nez v0, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    invoke-static {v4, v3, v1}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$300(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;ZZ)V

    if-eqz v2, :cond_4

    .line 229
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$1;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    invoke-static {v0}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$400(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;)V

    .line 231
    :cond_4
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils$1;->this$0:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    invoke-static {v0, v1}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->access$502(Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;Z)Z

    return-void
.end method
