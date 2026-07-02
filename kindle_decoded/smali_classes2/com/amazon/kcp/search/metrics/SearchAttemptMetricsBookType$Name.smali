.class public final Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType$Name;
.super Ljava/lang/Object;
.source "SearchAttemptMetricsBookType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Name"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType$Name;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBookTypeForLogging(Lcom/amazon/kcp/library/models/BookType;)Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;
    .locals 1

    const-string v0, "bookType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType$Name$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 40
    sget-object p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;->INVALID:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    goto :goto_0

    .line 39
    :pswitch_0
    sget-object p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;->PERIODICAL_GROUP:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    goto :goto_0

    .line 38
    :pswitch_1
    sget-object p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;->SERIES:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    goto :goto_0

    .line 37
    :pswitch_2
    sget-object p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;->CLOUD_DOC:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    goto :goto_0

    .line 36
    :pswitch_3
    sget-object p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;->OFFICE_DOC:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    goto :goto_0

    .line 35
    :pswitch_4
    sget-object p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;->AUDIBLE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    goto :goto_0

    .line 34
    :pswitch_5
    sget-object p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;->MAGAZINE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    goto :goto_0

    .line 33
    :pswitch_6
    sget-object p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;->NEWSPAPER:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    goto :goto_0

    .line 32
    :pswitch_7
    sget-object p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;->PERSONAL_DOC:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    goto :goto_0

    .line 31
    :pswitch_8
    sget-object p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;->PERSONALIZED_DOC:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    goto :goto_0

    .line 30
    :pswitch_9
    sget-object p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;->EBOOK_SAMPLE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    goto :goto_0

    .line 29
    :pswitch_a
    sget-object p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;->EBOOK:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    goto :goto_0

    .line 28
    :pswitch_b
    sget-object p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;->UNKNOWN:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
