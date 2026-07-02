.class Lcom/amazon/ea/ui/helper/DarkenOnTouchListener$1;
.super Ljava/lang/Object;
.source "DarkenOnTouchListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;Landroid/widget/ImageView;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/amazon/ea/ui/helper/DarkenOnTouchListener$1;->this$0:Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;

    iput-object p2, p0, Lcom/amazon/ea/ui/helper/DarkenOnTouchListener$1;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/DarkenOnTouchListener$1;->val$imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amazon/ea/ui/helper/DarkenOnTouchListener$1;->this$0:Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;

    invoke-static {v1}, Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;->access$000(Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
