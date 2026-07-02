.class Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$ReleaseResourceSetClickListener$1;
.super Ljava/lang/Object;
.source "ResourceSetDetailsListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$ReleaseResourceSetClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$ReleaseResourceSetClickListener;


# direct methods
.method constructor <init>(Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$ReleaseResourceSetClickListener;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$ReleaseResourceSetClickListener$1;->this$1:Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$ReleaseResourceSetClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 295
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->getInstance()Lcom/amazon/appexpan/client/AppExpanClient;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$ReleaseResourceSetClickListener$1;->this$1:Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$ReleaseResourceSetClickListener;

    invoke-static {v1}, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$ReleaseResourceSetClickListener;->access$400(Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$ReleaseResourceSetClickListener;)Lcom/amazon/appexpan/client/model/ResourceSetModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/appexpan/client/AppExpanClient;->releaseResourceSet(Ljava/lang/String;)V

    return-void
.end method
