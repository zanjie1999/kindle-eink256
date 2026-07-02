.class Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$SpoilerButtonOnClickListener;
.super Ljava/lang/Object;
.source "ExcerptCardListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpoilerButtonOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;)V
    .locals 0

    .line 863
    iput-object p1, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$SpoilerButtonOnClickListener;->this$0:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$1;)V
    .locals 0

    .line 863
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$SpoilerButtonOnClickListener;-><init>(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 866
    iget-object p1, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$SpoilerButtonOnClickListener;->this$0:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    invoke-static {p1}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->access$1000(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;)Lcom/amazon/xray/ui/activity/XrayActivity;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v1, "xray.preference.showingspoilers"

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 867
    invoke-static {}, Lcom/amazon/xray/plugin/util/BookUtil;->getAsin()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 870
    iget-object p1, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$SpoilerButtonOnClickListener;->this$0:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    invoke-static {p1}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->access$1000(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;)Lcom/amazon/xray/ui/activity/XrayActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/xray/ui/activity/XrayActivity;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    const-string v1, "XrayReadingSession"

    invoke-static {p1, v1}, Lcom/amazon/xray/metrics/SessionManager;->getSessionMetric(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;

    move-result-object p1

    const-string v1, "DisabledSpoilerGuard"

    .line 871
    invoke-virtual {p1, v1, v2}, Lcom/amazon/xray/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    const-string v1, "UITaps"

    .line 872
    invoke-virtual {p1, v1}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    .line 875
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    .line 876
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string v1, "Xray"

    const-string v3, "SpoilerGuard"

    .line 877
    invoke-interface {p1, v1, v3, v0, v2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordSetting(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method
