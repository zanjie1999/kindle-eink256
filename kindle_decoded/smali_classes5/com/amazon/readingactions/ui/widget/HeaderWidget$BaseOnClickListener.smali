.class abstract Lcom/amazon/readingactions/ui/widget/HeaderWidget$BaseOnClickListener;
.super Ljava/lang/Object;
.source "HeaderWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/HeaderWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseOnClickListener"
.end annotation


# instance fields
.field protected final expandingTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

.field protected final parentView:Landroid/view/View;

.field protected final seeLessButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/amazon/readingactions/ui/widget/HeaderWidget;Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$BaseOnClickListener;->expandingTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    .line 238
    iput-object p3, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$BaseOnClickListener;->seeLessButton:Landroid/widget/Button;

    .line 239
    iput-object p4, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$BaseOnClickListener;->parentView:Landroid/view/View;

    return-void
.end method
