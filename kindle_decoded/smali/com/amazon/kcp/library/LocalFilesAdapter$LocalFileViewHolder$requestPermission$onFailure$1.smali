.class final Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$requestPermission$onFailure$1;
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
.field final synthetic $filename:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$requestPermission$onFailure$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;

    iput-object p2, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$requestPermission$onFailure$1;->$filename:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 127
    iget-object v0, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$requestPermission$onFailure$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;

    iget-object v0, v0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/library/LocalFilesAdapter;->access$getActivity$p(Lcom/amazon/kcp/library/LocalFilesAdapter;)Lcom/amazon/kcp/library/LocalFilesActivity;

    move-result-object v0

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object v1, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$requestPermission$onFailure$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;

    iget-object v1, v1, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter;

    invoke-static {v1}, Lcom/amazon/kcp/library/LocalFilesAdapter;->access$getActivity$p(Lcom/amazon/kcp/library/LocalFilesAdapter;)Lcom/amazon/kcp/library/LocalFilesActivity;

    move-result-object v1

    sget v2, Lcom/amazon/kcp/more/R$string;->enable_folder_error_toast:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "activity.getString(R.str\u2026nable_folder_error_toast)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$requestPermission$onFailure$1;->$filename:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "java.lang.String.format(format, *args)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
