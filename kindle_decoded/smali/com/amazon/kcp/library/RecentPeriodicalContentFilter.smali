.class public final Lcom/amazon/kcp/library/RecentPeriodicalContentFilter;
.super Lcom/amazon/kcp/library/PeriodicalContentFilter;
.source "PeriodicalContentFilter.kt"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "parentAsin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 67
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amazon/kcp/library/PeriodicalContentFilter;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook$ReadState;ZI)V

    .line 69
    invoke-super {p0}, Lcom/amazon/kcp/library/PeriodicalContentFilter;->getWhereStringBuilder()Ljava/lang/StringBuilder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->IS_MOST_RECENT_ISSUE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
