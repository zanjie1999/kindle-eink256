.class public final Lcom/amazon/readingactions/helpers/EllipsizedTextResizer;
.super Ljava/lang/Object;
.source "EllipsizedTextResizer.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final size:F

.field private final textView:Lcom/amazon/readingactions/ui/EllipsizableTextView;


# direct methods
.method public constructor <init>(Lcom/amazon/readingactions/ui/EllipsizableTextView;F)V
    .locals 1

    const-string/jumbo v0, "textView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/readingactions/helpers/EllipsizedTextResizer;->textView:Lcom/amazon/readingactions/ui/EllipsizableTextView;

    iput p2, p0, Lcom/amazon/readingactions/helpers/EllipsizedTextResizer;->size:F

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/EllipsizedTextResizer;->textView:Lcom/amazon/readingactions/ui/EllipsizableTextView;

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/EllipsizableTextView;->isEllipsized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/EllipsizedTextResizer;->textView:Lcom/amazon/readingactions/ui/EllipsizableTextView;

    const/4 v1, 0x2

    iget v2, p0, Lcom/amazon/readingactions/helpers/EllipsizedTextResizer;->size:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method
