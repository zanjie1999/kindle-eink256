.class public final Lcom/amazon/kcp/home/widget/HomeBadgeableCover;
.super Lcom/amazon/kcp/cover/BadgeableCover;
.source "ShovelerWidgetAdapter.kt"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/cover/BadgeableCover;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/amazon/kcp/cover/BadgeableCover;->skipContentDescriptionTask:Z

    return-void
.end method
