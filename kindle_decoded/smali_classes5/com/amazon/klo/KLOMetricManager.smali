.class public Lcom/amazon/klo/KLOMetricManager;
.super Ljava/lang/Object;
.source "KLOMetricManager.java"


# static fields
.field private static termListFilteredCause:Ljava/lang/String;

.field private static termListScreenOpenCause:Ljava/lang/String;


# direct methods
.method public static markBackFromDetailPressed()V
    .locals 1

    const-string v0, "backFromDetail"

    .line 28
    sput-object v0, Lcom/amazon/klo/KLOMetricManager;->termListScreenOpenCause:Ljava/lang/String;

    return-void
.end method

.method public static markFilterSelectionChanged()V
    .locals 1

    const-string v0, "filterItemSelected"

    .line 36
    sput-object v0, Lcom/amazon/klo/KLOMetricManager;->termListFilteredCause:Ljava/lang/String;

    return-void
.end method

.method public static markFilterSelectionInitialized()V
    .locals 1

    .line 44
    sget-object v0, Lcom/amazon/klo/KLOMetricManager;->termListScreenOpenCause:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "initialSelection"

    .line 46
    sput-object v0, Lcom/amazon/klo/KLOMetricManager;->termListFilteredCause:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static markXrayReaderMenuButtonPressed()V
    .locals 1

    const-string/jumbo v0, "readerMenuButton"

    .line 20
    sput-object v0, Lcom/amazon/klo/KLOMetricManager;->termListScreenOpenCause:Ljava/lang/String;

    return-void
.end method

.method public static reportDetailPageLoaded(Ljava/lang/String;ZZI)V
    .locals 2

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "term"

    .line 92
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "wikipedia-enabled"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "youtube-enabled"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "number-page-thumbnails"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "XRayForTextbooks"

    const-string p1, "OpenToTerm"

    .line 96
    invoke-static {p0, p1, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static reportFeedbackNegativeClicked(Ljava/lang/String;ZIZ)V
    .locals 2

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "term"

    .line 205
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "cancelled"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "feedback-types"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "has-detail"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "XRayForTextbooks"

    const-string p1, "FeedbackNegativeClicked"

    .line 209
    invoke-static {p0, p1, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static reportFeedbackPositiveClicked(Ljava/lang/String;)V
    .locals 2

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "term"

    .line 190
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "XRayForTextbooks"

    const-string v1, "FeedbackPositiveClicked"

    .line 191
    invoke-static {p0, v1, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static reportInfocardDisplayedForTerm(Ljava/lang/String;)V
    .locals 2

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "term"

    .line 159
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "XRayForTextbooks"

    const-string v1, "InfocardDisplayedForTerm"

    .line 160
    invoke-static {p0, v1, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static reportInfocardXrayButtonPressed(Ljava/lang/String;)V
    .locals 2

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "term"

    .line 146
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "XRayForTextbooks"

    const-string v1, "InfocardGoToXRayForTerm"

    .line 147
    invoke-static {p0, v1, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static reportPageClickedFromTerm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "term"

    .line 107
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "page"

    .line 108
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "XRayForTextbooks"

    const-string p1, "PageClickedForTerm"

    .line 109
    invoke-static {p0, p1, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static reportTermClicked(Ljava/lang/String;)V
    .locals 2

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "term"

    .line 77
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "XRayForTextbooks"

    const-string v1, "TermClicked"

    .line 78
    invoke-static {p0, v1, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static reportTermListFiltered(Ljava/lang/String;I)V
    .locals 2

    .line 172
    sget-object v0, Lcom/amazon/klo/KLOMetricManager;->termListFilteredCause:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "filterOptionLabel"

    .line 175
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object p0, Lcom/amazon/klo/KLOMetricManager;->termListFilteredCause:Ljava/lang/String;

    const-string v1, "cause"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "count"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "XRayForTextbooks"

    const-string p1, "TermListFiltered"

    .line 178
    invoke-static {p0, p1, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p0, 0x0

    .line 179
    sput-object p0, Lcom/amazon/klo/KLOMetricManager;->termListFilteredCause:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static reportWikipediaClickedForTerm(Ljava/lang/String;Z)V
    .locals 2

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "term"

    .line 120
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "wikipedia-enabled"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "XRayForTextbooks"

    const-string p1, "WikipediaClickedForTerm"

    .line 122
    invoke-static {p0, p1, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static reportXrayTermsLoaded(Ljava/lang/String;I)V
    .locals 2

    .line 58
    sget-object v0, Lcom/amazon/klo/KLOMetricManager;->termListScreenOpenCause:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "filterOptionLabel"

    .line 61
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object p0, Lcom/amazon/klo/KLOMetricManager;->termListScreenOpenCause:Ljava/lang/String;

    const-string v1, "cause"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "count"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "XRayForTextbooks"

    const-string p1, "TermListOpened"

    .line 64
    invoke-static {p0, p1, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p0, 0x0

    .line 65
    sput-object p0, Lcom/amazon/klo/KLOMetricManager;->termListScreenOpenCause:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static reportYoutubeClickedForTerm(Ljava/lang/String;Z)V
    .locals 2

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "term"

    .line 133
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "youtube-enabled"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "XRayForTextbooks"

    const-string p1, "YoutubeClickedForTerm"

    .line 135
    invoke-static {p0, p1, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
