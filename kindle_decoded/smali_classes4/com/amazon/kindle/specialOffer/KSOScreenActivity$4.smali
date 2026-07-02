.class Lcom/amazon/kindle/specialOffer/KSOScreenActivity$4;
.super Ljava/lang/Object;
.source "KSOScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->extendSkipButtonTouchArea()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/specialOffer/KSOScreenActivity;

.field final synthetic val$container:Landroid/view/View;

.field final synthetic val$extensionInPixel:I


# direct methods
.method constructor <init>(Lcom/amazon/kindle/specialOffer/KSOScreenActivity;ILandroid/view/View;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$4;->this$0:Lcom/amazon/kindle/specialOffer/KSOScreenActivity;

    iput p2, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$4;->val$extensionInPixel:I

    iput-object p3, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$4;->val$container:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 183
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 184
    iget-object v1, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$4;->this$0:Lcom/amazon/kindle/specialOffer/KSOScreenActivity;

    invoke-static {v1}, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->access$500(Lcom/amazon/kindle/specialOffer/KSOScreenActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->getHitRect(Landroid/graphics/Rect;)V

    .line 185
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$4;->val$extensionInPixel:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 186
    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 187
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 188
    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 189
    iget-object v1, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$4;->val$container:Landroid/view/View;

    new-instance v2, Landroid/view/TouchDelegate;

    iget-object v3, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$4;->this$0:Lcom/amazon/kindle/specialOffer/KSOScreenActivity;

    invoke-static {v3}, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->access$500(Lcom/amazon/kindle/specialOffer/KSOScreenActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method
