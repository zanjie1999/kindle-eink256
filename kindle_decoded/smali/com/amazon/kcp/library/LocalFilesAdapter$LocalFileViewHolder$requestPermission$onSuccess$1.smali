.class final Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$requestPermission$onSuccess$1;
.super Ljava/lang/Object;
.source "LocalFilesAdapter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->requestPermission(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $filepath:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$requestPermission$onSuccess$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;

    iput-object p2, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$requestPermission$onSuccess$1;->$filepath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$requestPermission$onSuccess$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;

    iget-object v1, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$requestPermission$onSuccess$1;->$filepath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->access$toggleCheckbox(Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;Ljava/lang/String;Z)V

    return-void
.end method
