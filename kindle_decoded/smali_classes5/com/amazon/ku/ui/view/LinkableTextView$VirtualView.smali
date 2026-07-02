.class Lcom/amazon/ku/ui/view/LinkableTextView$VirtualView;
.super Ljava/lang/Object;
.source "LinkableTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ku/ui/view/LinkableTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VirtualView"
.end annotation


# instance fields
.field final bounds:Landroid/graphics/Rect;

.field final text:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/Rect;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/amazon/ku/ui/view/LinkableTextView$VirtualView;->text:Ljava/lang/CharSequence;

    .line 151
    iput-object p2, p0, Lcom/amazon/ku/ui/view/LinkableTextView$VirtualView;->bounds:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/Rect;Lcom/amazon/ku/ui/view/LinkableTextView$1;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/amazon/ku/ui/view/LinkableTextView$VirtualView;-><init>(Ljava/lang/CharSequence;Landroid/graphics/Rect;)V

    return-void
.end method
