.class Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$50;
.super Ljava/lang/Object;
.source "LibraryRepositoryWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->registerGroupListener(Lcom/amazon/kindle/observablemodel/LibraryGroupListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

.field final synthetic val$accountId:Ljava/lang/String;

.field final synthetic val$group:Lcom/amazon/kindle/observablemodel/ItemID;

.field final synthetic val$groupListener:Lcom/amazon/kindle/observablemodel/LibraryGroupListener;

.field final synthetic val$modelContent:Lcom/amazon/kindle/observablemodel/ModelContent;

.field final synthetic val$modelFilter:Lcom/amazon/kindle/observablemodel/ModelFilter;

.field final synthetic val$modelSorting:Lcom/amazon/kindle/observablemodel/ModelSorting;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Lcom/amazon/kindle/observablemodel/LibraryGroupListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V
    .locals 0

    .line 589
    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$50;->this$0:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

    iput-object p2, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$50;->val$groupListener:Lcom/amazon/kindle/observablemodel/LibraryGroupListener;

    iput-object p3, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$50;->val$accountId:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$50;->val$group:Lcom/amazon/kindle/observablemodel/ItemID;

    iput-object p5, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$50;->val$modelContent:Lcom/amazon/kindle/observablemodel/ModelContent;

    iput-object p6, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$50;->val$modelFilter:Lcom/amazon/kindle/observablemodel/ModelFilter;

    iput-object p7, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$50;->val$modelSorting:Lcom/amazon/kindle/observablemodel/ModelSorting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 592
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$50;->this$0:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

    invoke-static {v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->access$200(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;)Lcom/amazon/kindle/observablemodel/LibraryRepository;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$50;->val$groupListener:Lcom/amazon/kindle/observablemodel/LibraryGroupListener;

    iget-object v3, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$50;->val$accountId:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$50;->val$group:Lcom/amazon/kindle/observablemodel/ItemID;

    iget-object v5, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$50;->val$modelContent:Lcom/amazon/kindle/observablemodel/ModelContent;

    iget-object v6, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$50;->val$modelFilter:Lcom/amazon/kindle/observablemodel/ModelFilter;

    iget-object v7, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$50;->val$modelSorting:Lcom/amazon/kindle/observablemodel/ModelSorting;

    invoke-virtual/range {v1 .. v7}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->registerGroupListener(Lcom/amazon/kindle/observablemodel/LibraryGroupListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V

    return-void
.end method
