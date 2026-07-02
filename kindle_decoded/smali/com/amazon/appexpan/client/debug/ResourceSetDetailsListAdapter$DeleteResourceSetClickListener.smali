.class Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$DeleteResourceSetClickListener;
.super Ljava/lang/Object;
.source "ResourceSetDetailsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeleteResourceSetClickListener"
.end annotation


# instance fields
.field private final resourceSet:Lcom/amazon/appexpan/client/model/ResourceSetModel;

.field final synthetic this$0:Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;Lcom/amazon/appexpan/client/model/ResourceSetModel;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$DeleteResourceSetClickListener;->this$0:Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p2, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$DeleteResourceSetClickListener;->resourceSet:Lcom/amazon/appexpan/client/model/ResourceSetModel;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 229
    iget-object p1, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$DeleteResourceSetClickListener;->this$0:Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;

    invoke-static {p1}, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;->access$000(Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;)Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$DeleteResourceSetClickListener;->resourceSet:Lcom/amazon/appexpan/client/model/ResourceSetModel;

    invoke-interface {p1, v0}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->markResourceSetAndItsResourcesAsRemote(Lcom/amazon/appexpan/client/model/ResourceSetModel;)V

    .line 231
    iget-object p1, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$DeleteResourceSetClickListener;->this$0:Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;

    invoke-static {p1}, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;->access$100(Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;)V

    .line 233
    iget-object p1, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$DeleteResourceSetClickListener;->this$0:Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;

    invoke-static {p1}, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;->access$300(Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;)Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;

    move-result-object p1

    new-instance v0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$DeleteResourceSetClickListener$1;

    invoke-direct {v0, p0}, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$DeleteResourceSetClickListener$1;-><init>(Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$DeleteResourceSetClickListener;)V

    invoke-virtual {p1, v0}, Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;->executeAsync(Ljava/lang/Runnable;)V

    return-void
.end method
