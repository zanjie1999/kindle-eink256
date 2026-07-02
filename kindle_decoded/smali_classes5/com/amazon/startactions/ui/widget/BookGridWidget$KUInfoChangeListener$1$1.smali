.class Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener$1$1;
.super Ljava/lang/Object;
.source "BookGridWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener$1;->onCompletion(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener$1;

.field final synthetic val$coverIndex:I


# direct methods
.method constructor <init>(Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener$1;I)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener$1$1;->this$1:Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener$1;

    iput p2, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener$1$1;->val$coverIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener$1$1;->this$1:Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener$1;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener$1;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener;

    invoke-static {v0}, Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener;->access$200(Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener;)Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener$1$1;->this$1:Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener$1;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener$1;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener;

    invoke-static {v0}, Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener;->access$200(Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener;)Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    move-result-object v0

    iget v1, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener$1$1;->val$coverIndex:I

    invoke-virtual {v0, v1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;->reloadCover(I)V

    :cond_0
    return-void
.end method
