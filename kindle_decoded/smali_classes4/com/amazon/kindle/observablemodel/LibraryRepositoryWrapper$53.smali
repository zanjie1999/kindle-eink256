.class Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$53;
.super Ljava/lang/Object;
.source "LibraryRepositoryWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->unregisterItemDetailListener(Lcom/amazon/kindle/observablemodel/LibraryItemDetailListener;Lcom/amazon/kindle/observablemodel/ItemID;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

.field final synthetic val$itemID:Lcom/amazon/kindle/observablemodel/ItemID;

.field final synthetic val$listener:Lcom/amazon/kindle/observablemodel/LibraryItemDetailListener;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Lcom/amazon/kindle/observablemodel/LibraryItemDetailListener;Lcom/amazon/kindle/observablemodel/ItemID;)V
    .locals 0

    .line 620
    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$53;->this$0:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

    iput-object p2, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$53;->val$listener:Lcom/amazon/kindle/observablemodel/LibraryItemDetailListener;

    iput-object p3, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$53;->val$itemID:Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 623
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$53;->this$0:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

    invoke-static {v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->access$200(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;)Lcom/amazon/kindle/observablemodel/LibraryRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$53;->val$listener:Lcom/amazon/kindle/observablemodel/LibraryItemDetailListener;

    iget-object v2, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$53;->val$itemID:Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->unregisterItemDetailListener(Lcom/amazon/kindle/observablemodel/LibraryItemDetailListener;Lcom/amazon/kindle/observablemodel/ItemID;)V

    return-void
.end method
