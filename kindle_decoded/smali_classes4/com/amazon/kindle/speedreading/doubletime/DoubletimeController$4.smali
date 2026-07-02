.class Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$4;
.super Ljava/lang/Object;
.source "DoubletimeController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->initializeDoubletime()V
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

    .line 214
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$4;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 217
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$4;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->stopDoubletimeMode()V

    return-void
.end method
