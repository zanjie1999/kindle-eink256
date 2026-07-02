.class final Lcom/amazon/android/util/UIUtils$1;
.super Ljava/lang/Object;
.source "UIUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/util/UIUtils;->forceLayoutAndInvalidateUpTree(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$badView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1285
    iput-object p1, p0, Lcom/amazon/android/util/UIUtils$1;->val$badView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1288
    iget-object v0, p0, Lcom/amazon/android/util/UIUtils$1;->val$badView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1289
    iget-object v0, p0, Lcom/amazon/android/util/UIUtils$1;->val$badView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 1290
    iget-object v0, p0, Lcom/amazon/android/util/UIUtils$1;->val$badView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
