.class Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$49;
.super Ljava/lang/Object;
.source "LibraryRepositoryWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->registerContainerCountListener(Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

.field final synthetic val$accountId:Ljava/lang/String;

.field final synthetic val$containerCountListener:Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;

.field final synthetic val$modelContent:Lcom/amazon/kindle/observablemodel/ModelContent;

.field final synthetic val$modelFilter:Lcom/amazon/kindle/observablemodel/ModelFilter;

.field final synthetic val$modelSorting:Lcom/amazon/kindle/observablemodel/ModelSorting;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V
    .locals 0

    .line 575
    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$49;->this$0:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

    iput-object p2, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$49;->val$containerCountListener:Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;

    iput-object p3, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$49;->val$accountId:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$49;->val$modelContent:Lcom/amazon/kindle/observablemodel/ModelContent;

    iput-object p5, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$49;->val$modelFilter:Lcom/amazon/kindle/observablemodel/ModelFilter;

    iput-object p6, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$49;->val$modelSorting:Lcom/amazon/kindle/observablemodel/ModelSorting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 578
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$49;->this$0:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

    invoke-static {v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->access$200(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;)Lcom/amazon/kindle/observablemodel/LibraryRepository;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$49;->val$containerCountListener:Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;

    iget-object v3, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$49;->val$accountId:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$49;->val$modelContent:Lcom/amazon/kindle/observablemodel/ModelContent;

    iget-object v5, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$49;->val$modelFilter:Lcom/amazon/kindle/observablemodel/ModelFilter;

    iget-object v6, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$49;->val$modelSorting:Lcom/amazon/kindle/observablemodel/ModelSorting;

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->registerContainerCountListener(Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V

    return-void
.end method
