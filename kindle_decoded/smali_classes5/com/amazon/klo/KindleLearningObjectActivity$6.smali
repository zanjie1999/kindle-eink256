.class Lcom/amazon/klo/KindleLearningObjectActivity$6;
.super Ljava/lang/Object;
.source "KindleLearningObjectActivity.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IBookBackStack$PostBackAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/klo/KindleLearningObjectActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/klo/KindleLearningObjectActivity;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/amazon/klo/KindleLearningObjectActivity;Landroid/content/Intent;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/amazon/klo/KindleLearningObjectActivity$6;->this$0:Lcom/amazon/klo/KindleLearningObjectActivity;

    iput-object p2, p0, Lcom/amazon/klo/KindleLearningObjectActivity$6;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldRenderAfterGoingBack()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public takeAction()V
    .locals 2

    .line 443
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/klo/KindleLearningObjectActivity$6;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
