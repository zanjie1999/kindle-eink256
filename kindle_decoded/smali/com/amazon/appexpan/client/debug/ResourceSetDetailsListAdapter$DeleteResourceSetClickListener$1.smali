.class Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$DeleteResourceSetClickListener$1;
.super Ljava/lang/Object;
.source "ResourceSetDetailsListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$DeleteResourceSetClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$DeleteResourceSetClickListener;


# direct methods
.method constructor <init>(Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$DeleteResourceSetClickListener;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$DeleteResourceSetClickListener$1;->this$1:Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$DeleteResourceSetClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$DeleteResourceSetClickListener$1;->this$1:Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$DeleteResourceSetClickListener;

    iget-object v0, v0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$DeleteResourceSetClickListener;->this$0:Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;

    invoke-static {v0}, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;->access$200(Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;)Lcom/amazon/appexpan/client/download/ResourceDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->downloadResources()V

    return-void
.end method
