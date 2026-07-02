.class Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$45;
.super Ljava/lang/Object;
.source "LibraryRepositoryWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->setIntegrator(Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

.field final synthetic val$integrator:Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;)V
    .locals 0

    .line 525
    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$45;->this$0:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

    iput-object p2, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$45;->val$integrator:Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 528
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$45;->this$0:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

    invoke-static {v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->access$200(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;)Lcom/amazon/kindle/observablemodel/LibraryRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$45;->val$integrator:Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->setIntegrator(Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;)V

    return-void
.end method
