.class public final Lcom/amazon/readingactions/ui/widget/ttr/TimeToReadViewConfigurator;
.super Ljava/lang/Object;
.source "TimeToReadViewConfigurator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/ui/widget/ttr/TimeToReadViewConfigurator$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/readingactions/ui/widget/ttr/TimeToReadViewConfigurator$Companion;

.field private static final ONE_HOUR:I = 0x1

.field private static final THIRTY_MINUTES:I = 0x1e


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/readingactions/ui/widget/ttr/TimeToReadViewConfigurator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/readingactions/ui/widget/ttr/TimeToReadViewConfigurator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/readingactions/ui/widget/ttr/TimeToReadViewConfigurator;->Companion:Lcom/amazon/readingactions/ui/widget/ttr/TimeToReadViewConfigurator$Companion;

    return-void
.end method

.method public static final configure(Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;Landroid/view/ViewGroup;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/content/res/Resources;)V
    .locals 6

    sget-object v0, Lcom/amazon/readingactions/ui/widget/ttr/TimeToReadViewConfigurator;->Companion:Lcom/amazon/readingactions/ui/widget/ttr/TimeToReadViewConfigurator$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/readingactions/ui/widget/ttr/TimeToReadViewConfigurator$Companion;->configure(Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;Landroid/view/ViewGroup;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/content/res/Resources;)V

    return-void
.end method
