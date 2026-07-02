.class public final Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;
.super Ljava/lang/Object;
.source "ReadingProgressOption.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;
    }
.end annotation


# instance fields
.field private available:Z

.field private selected:Z

.field private type:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;)V
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;->type:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;

    return-void
.end method


# virtual methods
.method public final getAvailable()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;->available:Z

    return v0
.end method

.method public final getSelected()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;->selected:Z

    return v0
.end method

.method public final getType()Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;->type:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;

    return-object v0
.end method

.method public final setAvailable(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;->available:Z

    return-void
.end method

.method public final setSelected(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;->selected:Z

    return-void
.end method

.method public final title(Landroid/content/Context;ZZ)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;->type:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;->getTitle(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object p2

    .line 71
    iget-boolean p3, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;->available:Z

    if-nez p3, :cond_0

    .line 72
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget p2, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_reading_progress_unavailable_suffix:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method
