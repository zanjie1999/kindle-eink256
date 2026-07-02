.class public final Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator;
.super Ljava/lang/Object;
.source "CircularImageGenerator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator;->Companion:Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator$Companion;

    return-void
.end method

.method public static final applyImages(Lcom/amazon/startactions/storage/ImageBatchDownloader;[Landroid/widget/ImageView;Landroid/content/res/Resources;)V
    .locals 1

    sget-object v0, Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator;->Companion:Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator$Companion;->applyImages(Lcom/amazon/startactions/storage/ImageBatchDownloader;[Landroid/widget/ImageView;Landroid/content/res/Resources;)V

    return-void
.end method
