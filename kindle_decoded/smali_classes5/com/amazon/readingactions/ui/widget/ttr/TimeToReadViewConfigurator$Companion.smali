.class public final Lcom/amazon/readingactions/ui/widget/ttr/TimeToReadViewConfigurator$Companion;
.super Ljava/lang/Object;
.source "TimeToReadViewConfigurator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/ttr/TimeToReadViewConfigurator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimeToReadViewConfigurator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimeToReadViewConfigurator.kt\ncom/amazon/readingactions/ui/widget/ttr/TimeToReadViewConfigurator$Companion\n*L\n1#1,105:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/ttr/TimeToReadViewConfigurator$Companion;-><init>()V

    return-void
.end method

.method private final configureAccessibility(Landroid/view/ViewGroup;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 98
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 99
    sget-object p2, Lcom/amazon/readingactions/ui/widget/ttr/TimeToReadViewConfigurator$Companion$configureAccessibility$1;->INSTANCE:Lcom/amazon/readingactions/ui/widget/ttr/TimeToReadViewConfigurator$Companion$configureAccessibility$1;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final configureReadingPages(Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;Landroid/widget/TextView;Landroid/content/res/Resources;)V
    .locals 4

    .line 85
    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;->readingPagesData:Lcom/amazon/ea/sidecar/def/data/ReadingPagesData;

    if-eqz p1, :cond_0

    .line 86
    sget v0, Lcom/amazon/kindle/ea/R$plurals;->startactions_widget_time_to_read_pages:I

    .line 87
    iget p1, p1, Lcom/amazon/ea/sidecar/def/data/ReadingPagesData;->pages:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 86
    invoke-virtual {p3, v0, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    sget p1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {p1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private final configureReadingTime(Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;Landroid/widget/TextView;Landroid/content/res/Resources;)V
    .locals 7

    .line 44
    iget-object v0, p1, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;->readingTimeData:Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;->formattedTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;->readingTimeData:Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;->formattedTime:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    sget p1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {p1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 51
    :cond_0
    sget v0, Lcom/amazon/kindle/ea/R$plurals;->startactions_widget_time_to_read_hours:I

    .line 52
    iget-object v1, p1, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;->readingTimeData:Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;

    iget v1, v1, Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;->hours:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 51
    invoke-virtual {p3, v0, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 53
    sget v1, Lcom/amazon/kindle/ea/R$plurals;->startactions_widget_time_to_read_minutes:I

    .line 54
    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;->readingTimeData:Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;

    iget v3, v3, Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;->minutes:I

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 53
    invoke-virtual {p3, v1, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 57
    sget v3, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v3}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;->readingTimeData:Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;

    iget v3, p1, Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;->hours:I

    const-string v4, "java.lang.String.format(format, *args)"

    if-lt v3, v2, :cond_1

    .line 59
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget p1, Lcom/amazon/kindle/ea/R$string;->startactions_widget_time_to_read_time_format:I

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p3, "resources.getString(R.st\u2026time_to_read_time_format)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x2

    new-array v3, p3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    aput-object v1, v3, v2

    invoke-static {v3, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 64
    :cond_1
    iget p1, p1, Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;->minutes:I

    const-string/jumbo v0, "resources.getString(R.st\u2026t_time_to_read_less_than)"

    const/16 v1, 0x1e

    if-ge p1, v1, :cond_2

    .line 65
    sget p1, Lcom/amazon/kindle/ea/R$plurals;->startactions_widget_time_to_read_minutes:I

    new-array v3, v2, [Ljava/lang/Object;

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    .line 65
    invoke-virtual {p3, p1, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 67
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget v1, Lcom/amazon/kindle/ea/R$string;->startactions_widget_time_to_read_less_than:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v5

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_2
    sget p1, Lcom/amazon/kindle/ea/R$plurals;->startactions_widget_time_to_read_hours:I

    new-array v1, v2, [Ljava/lang/Object;

    .line 71
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    .line 70
    invoke-virtual {p3, p1, v2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 72
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget v1, Lcom/amazon/kindle/ea/R$string;->startactions_widget_time_to_read_less_than:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v5

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final configure(Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;Landroid/view/ViewGroup;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/content/res/Resources;)V
    .locals 2

    const-string v0, "def"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "timeToReadContainer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "readingTimeTextView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "readingPagesTextView"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resources"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    sget v1, Lcom/amazon/kindle/ea/R$string;->readingactions_bottomsheet_title_widget_typical_time_to_read:I

    invoke-virtual {p5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {p0, p1, p3, p5}, Lcom/amazon/readingactions/ui/widget/ttr/TimeToReadViewConfigurator$Companion;->configureReadingTime(Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;Landroid/widget/TextView;Landroid/content/res/Resources;)V

    .line 28
    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {p0, p1, p4, p5}, Lcom/amazon/readingactions/ui/widget/ttr/TimeToReadViewConfigurator$Companion;->configureReadingPages(Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;Landroid/widget/TextView;Landroid/content/res/Resources;)V

    .line 30
    invoke-virtual {p4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {p0, p2, v0}, Lcom/amazon/readingactions/ui/widget/ttr/TimeToReadViewConfigurator$Companion;->configureAccessibility(Landroid/view/ViewGroup;Ljava/lang/StringBuilder;)V

    return-void
.end method
