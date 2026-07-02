.class Lcom/amazon/android/widget/CommandActionView$WidgetOnLongClickListener;
.super Ljava/lang/Object;
.source "CommandActionView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/widget/CommandActionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WidgetOnLongClickListener"
.end annotation


# instance fields
.field private final item:Lcom/amazon/android/widget/AbstractActionWidgetItem;


# direct methods
.method private constructor <init>(Lcom/amazon/android/widget/AbstractActionWidgetItem;)V
    .locals 0

    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 666
    iput-object p1, p0, Lcom/amazon/android/widget/CommandActionView$WidgetOnLongClickListener;->item:Lcom/amazon/android/widget/AbstractActionWidgetItem;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/android/widget/AbstractActionWidgetItem;Lcom/amazon/android/widget/CommandActionView$1;)V
    .locals 0

    .line 662
    invoke-direct {p0, p1}, Lcom/amazon/android/widget/CommandActionView$WidgetOnLongClickListener;-><init>(Lcom/amazon/android/widget/AbstractActionWidgetItem;)V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 671
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/widget/CommandActionView$WidgetOnLongClickListener;->item:Lcom/amazon/android/widget/AbstractActionWidgetItem;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/android/widget/AbstractInternalWidgetItem;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x1

    return p1
.end method
