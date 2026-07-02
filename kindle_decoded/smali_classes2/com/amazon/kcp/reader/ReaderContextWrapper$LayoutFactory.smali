.class Lcom/amazon/kcp/reader/ReaderContextWrapper$LayoutFactory;
.super Ljava/lang/Object;
.source "ReaderContextWrapper.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ReaderContextWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/reader/ReaderContextWrapper$1;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderContextWrapper$LayoutFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const-string v0, "TextView"

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance p1, Lcom/amazon/android/ui/UiFontTextView;

    invoke-direct {p1, p2, p3}, Lcom/amazon/android/ui/UiFontTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p1

    :cond_0
    const-string v0, "Button"

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 47
    new-instance p1, Lcom/amazon/android/ui/UiFontButton;

    invoke-direct {p1, p2, p3}, Lcom/amazon/android/ui/UiFontButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
