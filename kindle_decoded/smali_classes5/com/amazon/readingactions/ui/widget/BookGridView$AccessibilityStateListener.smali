.class Lcom/amazon/readingactions/ui/widget/BookGridView$AccessibilityStateListener;
.super Ljava/lang/Object;
.source "BookGridView.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/BookGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/BookGridView;


# direct methods
.method private constructor <init>(Lcom/amazon/readingactions/ui/widget/BookGridView;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView$AccessibilityStateListener;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/readingactions/ui/widget/BookGridView;Lcom/amazon/readingactions/ui/widget/BookGridView$1;)V
    .locals 0

    .line 604
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/BookGridView$AccessibilityStateListener;-><init>(Lcom/amazon/readingactions/ui/widget/BookGridView;)V

    return-void
.end method


# virtual methods
.method public onAccessibilityStateChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 608
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView$AccessibilityStateListener;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/amazon/readingactions/ui/widget/BookGridView;->setSelectedCover(I)V

    :cond_0
    return-void
.end method
