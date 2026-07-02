.class Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask$1;
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
.field final synthetic val$seriesAsin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;Ljava/lang/String;)V
    .locals 0

    .line 201
    iput-object p2, p0, Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask$1;->val$seriesAsin:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask$1;->val$seriesAsin:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/kindle/utils/StoreOpeners;->createFalkorProductPageOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "kin_red_lib_0"

    .line 206
    invoke-interface {p1, v0}, Lcom/amazon/kindle/store/StoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 207
    invoke-interface {p1}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    .line 209
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;->recordSeeSeriesButtonPressed()V

    return-void
.end method
