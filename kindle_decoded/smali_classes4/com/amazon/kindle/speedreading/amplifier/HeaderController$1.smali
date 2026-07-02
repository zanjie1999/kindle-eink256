.class Lcom/amazon/kindle/speedreading/amplifier/HeaderController$1;
.super Ljava/lang/Object;
.source "HeaderController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->updateChapterTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/speedreading/amplifier/HeaderController;

.field final synthetic val$chapterText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/amplifier/HeaderController;Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController$1;->this$0:Lcom/amazon/kindle/speedreading/amplifier/HeaderController;

    iput-object p2, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController$1;->val$chapterText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController$1;->this$0:Lcom/amazon/kindle/speedreading/amplifier/HeaderController;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->access$000(Lcom/amazon/kindle/speedreading/amplifier/HeaderController;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController$1;->val$chapterText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
