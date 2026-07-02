.class final Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;
.super Ljava/lang/Object;
.source "RemoteLicenseReleaseActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->onResponse(Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $latency:J

.field final synthetic $response:Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;

.field final synthetic this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;J)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iput-object p2, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->$response:Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;

    iput-wide p3, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->$latency:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 303
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->$progressBar:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    iget-object v1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->$response:Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;->getListDevicesMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 304
    :goto_0
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->fetchSupportedDevices$LibraryModule_release(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$setDeviceList$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;Ljava/util/List;)V

    .line 306
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$getDeviceList$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "List Devices success response with "

    const/4 v3, 0x2

    const-string v4, "listDateSubtitle"

    const-string v5, "listDeviceName"

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    .line 307
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->$activity:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    new-instance v14, Lcom/amazon/kcp/library/releaselicense/RLRListViewAdapter;

    iget-object v7, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iget-object v8, v7, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->$activity:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    .line 308
    iget-object v7, v7, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {v7}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$getDeviceList$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->getListDevicesName$LibraryModule_release(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-static {v7}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    iget-object v7, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iget v10, v7, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->$itemLayout:I

    .line 309
    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v11

    new-array v12, v3, [I

    sget v7, Lcom/amazon/kindle/librarymodule/R$id;->rlr_list_device_name:I

    aput v7, v12, v6

    sget v7, Lcom/amazon/kindle/librarymodule/R$id;->rlr_list_date_subtitle:I

    aput v7, v12, v1

    const/4 v13, 0x1

    move-object v7, v14

    .line 307
    invoke-direct/range {v7 .. v13}, Lcom/amazon/kcp/library/releaselicense/RLRListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[IZ)V

    invoke-static {v0, v14}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$setListAdapter$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;Lcom/amazon/kcp/library/releaselicense/RLRListViewAdapter;)V

    .line 310
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->getList$LibraryModule_release()Lcom/amazon/kcp/library/releaselicense/NonScrollListView;

    move-result-object v0

    iget-object v7, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iget-object v7, v7, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->$activity:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {v7}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$getListAdapter$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Lcom/amazon/kcp/library/releaselicense/RLRListViewAdapter;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 311
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->getList$LibraryModule_release()Lcom/amazon/kcp/library/releaselicense/NonScrollListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    sget v7, Lcom/amazon/kindle/librarymodule/R$id;->rlr_error_subtitle:I

    invoke-virtual {v0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v7, "findViewById<TextView>(R.id.rlr_error_subtitle)"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    sget v7, Lcom/amazon/kindle/librarymodule/R$id;->rlr_remove_and_read_now_button:I

    invoke-virtual {v0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v7, "findViewById<Button>(R.i\u2026move_and_read_now_button)"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$getTAG$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iget-object v8, v8, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {v8}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$getDeviceList$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " eligible devices for book "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iget-object v8, v8, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->$bookId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 308
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.MutableList<kotlin.collections.HashMap<kotlin.String, kotlin.String> /* = java.util.HashMap<kotlin.String, kotlin.String> */>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    sget v7, Lcom/amazon/kindle/librarymodule/R$id;->rlr_ok_button:I

    invoke-virtual {v0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 317
    iget-object v7, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iget-object v8, v7, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    iget-object v7, v7, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->$bookId:Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$getCancelListener(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v7, "okButton"

    .line 318
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$getTAG$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "List Devices success response with all ineligible devices for book "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iget-object v8, v8, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->$bookId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseOperationType;->LIST_CONSUMPTIONS:Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseOperationType;

    iget-object v7, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iget-object v7, v7, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {v7}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$getAsin$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iget-object v8, v8, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {v8}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$getContentType$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v8

    .line 320
    invoke-static {v0, v1, v7, v8}, Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics;->reportServiceAllIneligibleDevicesSuccessResponseMetrics(Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseOperationType;ZLjava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;)V

    .line 323
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    iget-object v7, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->$response:Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;

    invoke-virtual {v7}, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;->getListDevicesMap()Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_3

    goto :goto_2

    .line 324
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 323
    :goto_2
    invoke-virtual {v0, v7}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->fetchUnSupportedDevices$LibraryModule_release(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$setIneligibleDeviceList$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;Ljava/util/List;)V

    .line 325
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$getIneligibleDeviceList$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 326
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->$activity:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    new-instance v14, Lcom/amazon/kcp/library/releaselicense/RLRListViewAdapter;

    iget-object v7, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iget-object v8, v7, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->$activity:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    .line 327
    iget-object v7, v7, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {v7}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$getIneligibleDeviceList$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->getListDevicesName$LibraryModule_release(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-static {v7}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    iget-object v7, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iget v10, v7, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->$ineligibleItemLayout:I

    .line 328
    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v11

    new-array v12, v3, [I

    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->rlr_ineligible_list_device_name:I

    aput v3, v12, v6

    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->rlr_ineligible_list_date_subtitle:I

    aput v3, v12, v1

    const/4 v13, 0x0

    move-object v7, v14

    .line 326
    invoke-direct/range {v7 .. v13}, Lcom/amazon/kcp/library/releaselicense/RLRListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[IZ)V

    invoke-static {v0, v14}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$setIneligibleListAdapter$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;Lcom/amazon/kcp/library/releaselicense/RLRListViewAdapter;)V

    .line 329
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->getIneligibleList$LibraryModule_release()Lcom/amazon/kcp/library/releaselicense/NonScrollListView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iget-object v1, v1, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->$activity:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {v1}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$getIneligibleListAdapter$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Lcom/amazon/kcp/library/releaselicense/RLRListViewAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 330
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->getIneligibleList$LibraryModule_release()Lcom/amazon/kcp/library/releaselicense/NonScrollListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 331
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->rlr_ineligible_device_layout:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById<LinearLayou\u2026ineligible_device_layout)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$getTAG$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iget-object v2, v2, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {v2}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$getIneligibleDeviceList$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ineligible devices for book "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iget-object v2, v2, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->$bookId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 327
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.MutableList<java.util.HashMap<kotlin.String, kotlin.String>>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->rlr_remove_and_read_now_button_layout:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById<LinearLayou\u2026d_read_now_button_layout)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 335
    sget-object v7, Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseOperationType;->LIST_CONSUMPTIONS:Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseOperationType;

    const/4 v8, 0x1

    const/4 v9, -0x1

    .line 336
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$getAsin$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$getContentType$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v11

    iget-wide v12, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;->$latency:J

    .line 335
    invoke-static/range {v7 .. v13}, Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics;->reportServiceResponseMetrics(Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseOperationType;ZILjava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;J)V

    return-void
.end method
