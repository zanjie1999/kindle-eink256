.class Lcom/amazon/kindle/FTUELoadingActivity$2;
.super Ljava/lang/Object;
.source "FTUELoadingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/FTUELoadingActivity;->tryToShowStore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/FTUELoadingActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/FTUELoadingActivity;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/amazon/kindle/FTUELoadingActivity$2;->this$0:Lcom/amazon/kindle/FTUELoadingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/amazon/kindle/FTUELoadingActivity$2;->this$0:Lcom/amazon/kindle/FTUELoadingActivity;

    iget-object v0, v0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->statusText:Landroid/widget/TextView;

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->going_to_store:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
