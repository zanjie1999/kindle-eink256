.class final Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;
.super Ljava/lang/Object;
.source "AuthorSubscriptionsController.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AffinityClickListener"
.end annotation


# instance fields
.field private final asin:Ljava/lang/String;

.field private final authorIndex:I

.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;


# direct methods
.method public constructor <init>(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const-string v0, "asin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;->asin:Ljava/lang/String;

    iput p3, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;->authorIndex:I

    return-void
.end method

.method public static final synthetic access$getAsin$p(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;)Ljava/lang/String;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;->asin:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    invoke-static {}, Lcom/amazon/ea/util/WirelessHelper;->isConnected()Z

    move-result p1

    if-nez p1, :cond_0

    .line 367
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v0, "EndActionsPlugin.sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/application/KRXDialogType;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/application/KRXDialogType;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->showDialog(Lcom/amazon/kindle/krx/application/KRXDialogType;Ljava/lang/String;)Z

    return-void

    .line 371
    :cond_0
    new-instance p1, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener$onClick$asyncTask$1;

    invoke-direct {p1, p0}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener$onClick$asyncTask$1;-><init>(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 441
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
