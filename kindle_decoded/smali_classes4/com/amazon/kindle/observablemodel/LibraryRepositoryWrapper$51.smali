.class Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$51;
.super Ljava/lang/Object;
.source "LibraryRepositoryWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->setStringFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/OnChangesProcessedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

.field final synthetic val$accountId:Ljava/lang/String;

.field final synthetic val$filterValue:Ljava/lang/String;

.field final synthetic val$onChangesProcessedListener:Lcom/amazon/kindle/observablemodel/OnChangesProcessedListener;

.field final synthetic val$stringFilterLeafDictionaryName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/OnChangesProcessedListener;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$51;->this$0:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

    iput-object p2, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$51;->val$accountId:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$51;->val$stringFilterLeafDictionaryName:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$51;->val$filterValue:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$51;->val$onChangesProcessedListener:Lcom/amazon/kindle/observablemodel/OnChangesProcessedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 605
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$51;->this$0:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

    invoke-static {v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->access$200(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;)Lcom/amazon/kindle/observablemodel/LibraryRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$51;->val$accountId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$51;->val$stringFilterLeafDictionaryName:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$51;->val$filterValue:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$51;->val$onChangesProcessedListener:Lcom/amazon/kindle/observablemodel/OnChangesProcessedListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->setStringFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/OnChangesProcessedListener;)V

    return-void
.end method
