.class public final Lcom/amazon/kcp/more/readingstreaks/ReadingInsightsMoreHelper$createReadingInsightsItem$1;
.super Ljava/lang/Object;
.source "ReadingInsightsMoreHelper.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/template/OnClickHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/more/readingstreaks/ReadingInsightsMoreHelper;->createReadingInsightsItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reading_insights"

    .line 45
    invoke-static {v0}, Lcom/amazon/kcp/util/fastmetrics/MoreSettingsPageFastMetrics;->reportClickNonTogglableItem(Ljava/lang/String;)V

    .line 50
    sget v0, Lcom/amazon/kcp/more/R$string;->more_item_reading_streaks_store_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Lcom/amazon/kcp/more/readingstreaks/ReadingInsightsUrlBuilder;->getReadingInsightsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {p1, v0}, Lcom/amazon/kindle/utils/StoreOpeners;->createUrlOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    const-string v0, "kri_vi_mm_ri_na_and"

    .line 53
    invoke-interface {p1, v0}, Lcom/amazon/kindle/store/StoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 54
    invoke-interface {p1}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    return-void
.end method
