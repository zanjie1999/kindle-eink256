.class final Lcom/amazon/kcp/util/fastmetrics/RecordDeleteFromLibraryMetrics$reportUserDialogActionMetrics$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RecordDeleteFromLibraryMetrics.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/util/fastmetrics/RecordDeleteFromLibraryMetrics;->reportUserDialogActionMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
        "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $action:Ljava/lang/String;

.field final synthetic $booksInfo:Ljava/lang/String;

.field final synthetic $deletionType:Ljava/lang/String;

.field final synthetic $dialogId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/util/fastmetrics/RecordDeleteFromLibraryMetrics$reportUserDialogActionMetrics$1;->$action:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kcp/util/fastmetrics/RecordDeleteFromLibraryMetrics$reportUserDialogActionMetrics$1;->$deletionType:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/util/fastmetrics/RecordDeleteFromLibraryMetrics$reportUserDialogActionMetrics$1;->$booksInfo:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kcp/util/fastmetrics/RecordDeleteFromLibraryMetrics$reportUserDialogActionMetrics$1;->$dialogId:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;
    .locals 2

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/RecordDeleteFromLibraryMetrics$reportUserDialogActionMetrics$1;->$action:Ljava/lang/String;

    const-string v1, "confirmation_dialog_action"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/RecordDeleteFromLibraryMetrics$reportUserDialogActionMetrics$1;->$deletionType:Ljava/lang/String;

    const-string v1, "deletion_type"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 49
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/RecordDeleteFromLibraryMetrics$reportUserDialogActionMetrics$1;->$booksInfo:Ljava/lang/String;

    const-string v1, "books_info"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 50
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/RecordDeleteFromLibraryMetrics$reportUserDialogActionMetrics$1;->$dialogId:Ljava/lang/String;

    const-string v1, "dialog_identifier"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    const-string v0, "addString(DIALOG_IDENTIFIER_KEY, dialogId)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/util/fastmetrics/RecordDeleteFromLibraryMetrics$reportUserDialogActionMetrics$1;->invoke(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    return-object p1
.end method
