.class abstract Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$BaseOnClickListener;
.super Ljava/lang/Object;
.source "ExpandingTextWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseOnClickListener"
.end annotation


# instance fields
.field protected final expandingTextView:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

.field protected final seeLessButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;Landroid/widget/Button;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p2, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$BaseOnClickListener;->expandingTextView:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    .line 179
    iput-object p3, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$BaseOnClickListener;->seeLessButton:Landroid/widget/Button;

    return-void
.end method
