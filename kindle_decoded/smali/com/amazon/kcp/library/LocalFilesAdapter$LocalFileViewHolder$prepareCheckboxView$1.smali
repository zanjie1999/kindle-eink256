.class final Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;
.super Ljava/lang/Object;
.source "LocalFilesAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->prepareCheckboxView$MoreModule_release(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $filename:Ljava/lang/String;

.field final synthetic $filepath:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;

    iput-object p2, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;->$filepath:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;->$filename:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 79
    invoke-static {}, Lcom/amazon/kcp/debug/ScopedStorageUtilsManager;->getInstance()Lcom/amazon/kcp/debug/ScopedStorageUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;

    iget-object v0, v0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/library/LocalFilesAdapter;->access$getActivity$p(Lcom/amazon/kcp/library/LocalFilesAdapter;)Lcom/amazon/kcp/library/LocalFilesActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;->$filepath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->isDirectoryPermissionGranted(Lcom/amazon/kcp/redding/ReddingActivity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;

    iget-object v0, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;->$filename:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;->$filepath:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->access$requestPermission(Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;

    invoke-static {p1}, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->access$getCheckboxView$p(Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;

    invoke-static {v0}, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->access$getThreadPoolManager$p(Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;)Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v2, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1$1;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1$1;-><init>(Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 85
    iget-object v0, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;

    iget-object v0, v0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/library/LocalFilesAdapter;->access$getScanLocalContentUtils$p(Lcom/amazon/kcp/library/LocalFilesAdapter;)Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;->$filepath:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->addLocalContentPath(Ljava/lang/String;Z)V

    .line 86
    iget-object v0, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;

    iget-object v0, v0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/library/LocalFilesAdapter;->access$getRecordDirectoryPermissionMetrics$p(Lcom/amazon/kcp/library/LocalFilesAdapter;)Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$EntryPoint;->SETTING:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$EntryPoint;

    iget-object v2, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;->$filename:Ljava/lang/String;

    sget-object v3, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;->DENY:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;

    sget-object v4, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;->ALLOW:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics;->emitDirectoryPermissionMetric(Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$EntryPoint;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;)V

    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;

    iget-object v1, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;->$filepath:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->access$toggleCheckbox(Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;Ljava/lang/String;Z)V

    goto :goto_0

    .line 90
    :cond_1
    new-instance v2, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1$onDisabled$1;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1$onDisabled$1;-><init>(Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;Z)V

    .line 97
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;

    iget-object v3, v3, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter;

    invoke-static {v3}, Lcom/amazon/kcp/library/LocalFilesAdapter;->access$getActivity$p(Lcom/amazon/kcp/library/LocalFilesAdapter;)Lcom/amazon/kcp/library/LocalFilesActivity;

    move-result-object v3

    invoke-direct {p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 98
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object v3, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;

    iget-object v3, v3, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter;

    invoke-static {v3}, Lcom/amazon/kcp/library/LocalFilesAdapter;->access$getActivity$p(Lcom/amazon/kcp/library/LocalFilesAdapter;)Lcom/amazon/kcp/library/LocalFilesActivity;

    move-result-object v3

    sget v4, Lcom/amazon/kcp/more/R$string;->disable_folder_dialog_title:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "activity.getString(R.str\u2026able_folder_dialog_title)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;->$filename:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 99
    sget v0, Lcom/amazon/kcp/more/R$string;->disable_folder_dialog_text:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 100
    sget v0, Lcom/amazon/kcp/more/R$string;->disable:I

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 101
    sget v0, Lcom/amazon/kcp/more/R$string;->cancel:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 102
    iget-object v0, p0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder$prepareCheckboxView$1;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;

    iget-object v0, v0, Lcom/amazon/kcp/library/LocalFilesAdapter$LocalFileViewHolder;->this$0:Lcom/amazon/kcp/library/LocalFilesAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/library/LocalFilesAdapter;->access$getActivity$p(Lcom/amazon/kcp/library/LocalFilesAdapter;)Lcom/amazon/kcp/library/LocalFilesActivity;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const-string v1, "builder.create()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/amazon/kindle/dialog/DialogManager;->showDialogSafely(Landroid/content/Context;Landroid/app/Dialog;)Z

    :goto_0
    return-void
.end method
