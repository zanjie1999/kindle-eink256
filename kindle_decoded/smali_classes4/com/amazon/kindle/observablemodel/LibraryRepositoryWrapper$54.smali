.class Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$54;
.super Ljava/lang/Object;
.source "LibraryRepositoryWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->removeContainerCountListener(Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

.field final synthetic val$accountId:Ljava/lang/String;

.field final synthetic val$listener:Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;)V
    .locals 0

    .line 629
    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$54;->this$0:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

    iput-object p2, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$54;->val$listener:Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;

    iput-object p3, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$54;->val$accountId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 632
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$54;->this$0:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

    invoke-static {v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->access$200(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;)Lcom/amazon/kindle/observablemodel/LibraryRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$54;->val$listener:Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;

    iget-object v2, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$54;->val$accountId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->removeContainerCountListener(Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;)V

    return-void
.end method
