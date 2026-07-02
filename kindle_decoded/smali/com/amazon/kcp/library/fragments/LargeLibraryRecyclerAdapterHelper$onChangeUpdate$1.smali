.class final Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$onChangeUpdate$1;
.super Ljava/lang/Object;
.source "LargeLibraryRecyclerAdapterHelper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->onChangeUpdate(Lcom/amazon/kindle/observablemodel/ModelChangeUpdate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $update:Lcom/amazon/kindle/observablemodel/ModelChangeUpdate;

.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;Lcom/amazon/kindle/observablemodel/ModelChangeUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$onChangeUpdate$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$onChangeUpdate$1;->$update:Lcom/amazon/kindle/observablemodel/ModelChangeUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$onChangeUpdate$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->getAdapterUpdater()Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$onChangeUpdate$1;->$update:Lcom/amazon/kindle/observablemodel/ModelChangeUpdate;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->onChangeUpdate(Lcom/amazon/kindle/observablemodel/ModelChangeUpdate;)[I

    return-void
.end method
