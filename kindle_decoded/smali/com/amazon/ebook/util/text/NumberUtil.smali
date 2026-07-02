.class public Lcom/amazon/ebook/util/text/NumberUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ebook/util/text/NumberUtil$RangeCalculator;
    }
.end annotation


# static fields
.field private static final PAGE_NUMBER_FORMATTERS:Ljava/util/HashMap;

.field private static numberUtilResources:Ljava/util/ResourceBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/ebook/util/text/NumberUtil;->PAGE_NUMBER_FORMATTERS:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/amazon/ebook/util/text/NumberUtil;->initPageNumberFormat(Ljava/util/Locale;)Ljava/text/NumberFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized initPageNumberFormat(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .locals 3

    const-class v0, Lcom/amazon/ebook/util/text/NumberUtil;

    monitor-enter v0

    if-nez p0, :cond_0

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    :cond_0
    sget-object v1, Lcom/amazon/ebook/util/text/NumberUtil;->PAGE_NUMBER_FORMATTERS:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/NumberFormat;

    if-nez v1, :cond_1

    invoke-static {p0}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    sget-object v2, Lcom/amazon/ebook/util/text/NumberUtil;->PAGE_NUMBER_FORMATTERS:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
