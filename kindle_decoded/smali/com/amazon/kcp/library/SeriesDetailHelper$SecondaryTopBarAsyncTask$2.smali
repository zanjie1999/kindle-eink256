.class Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask$2;
.super Ljava/lang/Object;
.source "SeriesDetailHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;->updateSeeInStore(Lcom/amazon/kindle/content/GroupMetadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;

.field final synthetic val$seriesAsin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;Ljava/lang/String;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask$2;->this$0:Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;

    iput-object p2, p0, Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask$2;->val$seriesAsin:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask$2;->val$seriesAsin:Ljava/lang/String;

    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->UNKNOWN:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-static {p1, v0, v1}, Lcom/amazon/kindle/utils/StoreOpeners;->createSeriesDetailsOpener(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask$2;->this$0:Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;

    .line 218
    invoke-static {v0}, Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;->access$000(Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;)Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;->getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/store/StoreOpener;->setScreenletContext(Lcom/amazon/kindle/krx/ui/ScreenletContext;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    const-string v0, "kin_red_lib_iv_0"

    .line 219
    invoke-interface {p1, v0}, Lcom/amazon/kindle/store/StoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 220
    invoke-interface {p1}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    .line 221
    invoke-static {}, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;->recordSeeSeriesButtonPressed()V

    return-void
.end method
