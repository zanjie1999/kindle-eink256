.class Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$ReleaseResourceSetClickListener;
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
    name = "ReleaseResourceSetClickListener"
.end annotation


# instance fields
.field private final resourceSet:Lcom/amazon/appexpan/client/model/ResourceSetModel;

.field final synthetic this$0:Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;Lcom/amazon/appexpan/client/model/ResourceSetModel;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$ReleaseResourceSetClickListener;->this$0:Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput-object p2, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$ReleaseResourceSetClickListener;->resourceSet:Lcom/amazon/appexpan/client/model/ResourceSetModel;

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$ReleaseResourceSetClickListener;)Lcom/amazon/appexpan/client/model/ResourceSetModel;
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$ReleaseResourceSetClickListener;->resourceSet:Lcom/amazon/appexpan/client/model/ResourceSetModel;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 292
    iget-object p1, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$ReleaseResourceSetClickListener;->this$0:Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;

    invoke-static {p1}, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;->access$300(Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;)Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;

    move-result-object p1

    new-instance v0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$ReleaseResourceSetClickListener$1;

    invoke-direct {v0, p0}, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$ReleaseResourceSetClickListener$1;-><init>(Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$ReleaseResourceSetClickListener;)V

    invoke-virtual {p1, v0}, Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;->executeAsync(Ljava/lang/Runnable;)V

    return-void
.end method
