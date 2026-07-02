.class Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable$2;
.super Ljava/lang/Object;
.source "HeaderController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable$2;->this$1:Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable$2;->this$1:Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable;

    iget-object v0, v0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable;->this$0:Lcom/amazon/kindle/speedreading/amplifier/HeaderController;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->access$400(Lcom/amazon/kindle/speedreading/amplifier/HeaderController;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
