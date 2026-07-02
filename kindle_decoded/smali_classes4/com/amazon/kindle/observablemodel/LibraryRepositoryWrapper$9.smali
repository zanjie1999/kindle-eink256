.class Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$9;
.super Ljava/lang/Object;
.source "LibraryRepositoryWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->resetSortTypeString(ILjava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

.field final synthetic val$accountId:Ljava/lang/String;

.field final synthetic val$itemToString:Ljava/util/Map;

.field final synthetic val$sortingType:I


# direct methods
.method constructor <init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;ILjava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$9;->this$0:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

    iput p2, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$9;->val$sortingType:I

    iput-object p3, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$9;->val$itemToString:Ljava/util/Map;

    iput-object p4, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$9;->val$accountId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$9;->this$0:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

    invoke-static {v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->access$200(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;)Lcom/amazon/kindle/observablemodel/LibraryRepository;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$9;->val$sortingType:I

    iget-object v2, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$9;->val$itemToString:Ljava/util/Map;

    iget-object v3, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$9;->val$accountId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->resetSortTypeString(ILjava/util/Map;Ljava/lang/String;)V

    return-void
.end method
