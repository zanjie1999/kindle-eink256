.class Lcom/amazon/android/widget/PagingButtonWidget$4;
.super Ljava/lang/Object;
.source "PagingButtonWidget.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/widget/PagingButtonWidget;->toggleActiveRow(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/widget/PagingButtonWidget;

.field final synthetic val$rectToUse:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/amazon/android/widget/PagingButtonWidget;Landroid/graphics/RectF;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget$4;->this$0:Lcom/amazon/android/widget/PagingButtonWidget;

    iput-object p2, p0, Lcom/amazon/android/widget/PagingButtonWidget$4;->val$rectToUse:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 501
    check-cast p2, Landroid/graphics/RectF;

    .line 502
    check-cast p3, Landroid/graphics/RectF;

    .line 503
    iget-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget$4;->val$rectToUse:Landroid/graphics/RectF;

    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v1

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/RectF;->top:F

    iget v3, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v2

    mul-float v3, v3, p1

    add-float/2addr v2, v3

    iget v3, p2, Landroid/graphics/RectF;->right:F

    iget v4, p3, Landroid/graphics/RectF;->right:F

    sub-float v4, v3, v4

    mul-float v4, v4, p1

    sub-float/2addr v3, v4

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    sub-float p3, p2, p3

    mul-float p3, p3, p1

    sub-float/2addr p2, p3

    invoke-virtual {v0, v1, v2, v3, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 507
    iget-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget$4;->val$rectToUse:Landroid/graphics/RectF;

    return-object p1
.end method
