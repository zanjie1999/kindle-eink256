.class final Lcom/amazon/readingactions/ui/widget/ComicsRatingAndReviewingControllerKt$sam$OnCheckedChangeListener$3cf8554c;
.super Ljava/lang/Object;
.source "ComicsRatingAndReviewingController.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final synthetic function:Lkotlin/jvm/functions/Function2;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/ComicsRatingAndReviewingControllerKt$sam$OnCheckedChangeListener$3cf8554c;->function:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final synthetic onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/ComicsRatingAndReviewingControllerKt$sam$OnCheckedChangeListener$3cf8554c;->function:Lkotlin/jvm/functions/Function2;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "invoke(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
