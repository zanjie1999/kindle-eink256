.class Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument$8;
.super Ljava/lang/Object;
.source "SendToKindleService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->onSendToKindleSuccess(Lcom/amazon/kindle/s2k/webservice/SendToKindleResponseModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument$8;->this$1:Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 471
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument$8;->this$1:Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;

    iget-object v0, v0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-virtual {v0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/s2k/R$string;->singleDocSendSuccess:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
