.class Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$3;
.super Ljava/lang/Object;
.source "ReviewBookActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->bindElements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$3;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 436
    iget-object p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$3;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    const-string v0, "input_method"

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 437
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 p1, 0x1

    return p1
.end method
