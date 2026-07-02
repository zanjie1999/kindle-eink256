.class Lcom/amazon/ea/ui/helper/DarkenOnTouchListener$2;
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
.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;Landroid/widget/ImageView;)V
    .locals 0

    .line 56
    iput-object p2, p0, Lcom/amazon/ea/ui/helper/DarkenOnTouchListener$2;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/DarkenOnTouchListener$2;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    return-void
.end method
