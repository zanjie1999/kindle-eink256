.class final Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type$TIME_LEFT;
.super Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;
.source "ReadingProgressOption.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TIME_LEFT"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    sget v4, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_reading_progress_type_time_left_in_book:I

    const/4 v3, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;-><init>(Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public getTitle(Landroid/content/Context;ZZ)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 45
    sget p2, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_reading_progress_type_time_left_in_sample:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.stri\u2026type_time_left_in_sample)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    .line 47
    sget p2, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_reading_progress_type_time_left_in_episode:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 49
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;->getTitle(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p2, "if (isFalkorEpisode) {\n \u2026pisode)\n                }"

    .line 46
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method
