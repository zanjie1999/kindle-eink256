.class Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$9;
.super Ljava/lang/Object;
.source "DoubletimeController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->inflateDoubleTimeView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$9;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 461
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$9;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method
