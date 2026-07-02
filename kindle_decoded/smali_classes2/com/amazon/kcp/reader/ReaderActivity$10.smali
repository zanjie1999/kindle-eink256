.class Lcom/amazon/kcp/reader/ReaderActivity$10;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderActivity;->setupContainerSafeInsets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 0

    .line 978
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$10;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 986
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$10;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {p1}, Lcom/amazon/android/util/UIUtils;->isActivityInMultiWindowedMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$10;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    .line 987
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 988
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeDisplayCutout()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method
