.class Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeTutorial$1;
.super Ljava/lang/Object;
.source "DoubleTimeTutorial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeTutorial;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/ui/ColorMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeTutorial;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeTutorial;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeTutorial$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeTutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 41
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeTutorial$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeTutorial;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
