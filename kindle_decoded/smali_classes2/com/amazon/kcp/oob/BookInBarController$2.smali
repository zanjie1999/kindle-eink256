.class Lcom/amazon/kcp/oob/BookInBarController$2;
.super Ljava/lang/Object;
.source "BookInBarController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/oob/BookInBarController;->createBibOnClickListener(Landroid/widget/ImageView;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/oob/BookInBarController;

.field final synthetic val$bibView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/oob/BookInBarController;Landroid/widget/ImageView;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/amazon/kcp/oob/BookInBarController$2;->this$0:Lcom/amazon/kcp/oob/BookInBarController;

    iput-object p2, p0, Lcom/amazon/kcp/oob/BookInBarController$2;->val$bibView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 148
    iget-object p1, p0, Lcom/amazon/kcp/oob/BookInBarController$2;->this$0:Lcom/amazon/kcp/oob/BookInBarController;

    invoke-static {p1}, Lcom/amazon/kcp/oob/BookInBarController;->access$000(Lcom/amazon/kcp/oob/BookInBarController;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-nez p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/amazon/kcp/oob/BookInBarController$2;->this$0:Lcom/amazon/kcp/oob/BookInBarController;

    invoke-static {p1}, Lcom/amazon/kcp/oob/BookInBarController;->access$100(Lcom/amazon/kcp/oob/BookInBarController;)Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getLastReadBook()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kcp/oob/BookInBarController;->access$002(Lcom/amazon/kcp/oob/BookInBarController;Lcom/amazon/kindle/content/ContentMetadata;)Lcom/amazon/kindle/content/ContentMetadata;

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/oob/BookInBarController$2;->this$0:Lcom/amazon/kcp/oob/BookInBarController;

    invoke-static {p1}, Lcom/amazon/kcp/oob/BookInBarController;->access$000(Lcom/amazon/kcp/oob/BookInBarController;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/amazon/kcp/oob/BookInBarController$2;->this$0:Lcom/amazon/kcp/oob/BookInBarController;

    invoke-static {p1}, Lcom/amazon/kcp/oob/BookInBarController;->access$000(Lcom/amazon/kcp/oob/BookInBarController;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 153
    iget-object p1, p0, Lcom/amazon/kcp/oob/BookInBarController$2;->this$0:Lcom/amazon/kcp/oob/BookInBarController;

    invoke-static {p1}, Lcom/amazon/kcp/oob/BookInBarController;->access$000(Lcom/amazon/kcp/oob/BookInBarController;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    .line 154
    invoke-static {}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenBiBBEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->ONE_TAP_CX:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPEN:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    .line 157
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object v1

    .line 158
    iget-object v2, p0, Lcom/amazon/kcp/oob/BookInBarController$2;->this$0:Lcom/amazon/kcp/oob/BookInBarController;

    invoke-static {v2}, Lcom/amazon/kcp/oob/BookInBarController;->access$000(Lcom/amazon/kcp/oob/BookInBarController;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/oob/BookInBarController$2;->this$0:Lcom/amazon/kcp/oob/BookInBarController;

    invoke-static {v3}, Lcom/amazon/kcp/oob/BookInBarController;->access$000(Lcom/amazon/kcp/oob/BookInBarController;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->isSample()Z

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const-string v0, "bottomBar"

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->startExperiences(Lcom/amazon/kindle/model/content/IBookID;ZLjava/lang/String;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 160
    invoke-static {}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenBiBBEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    const-class v1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;

    invoke-static {v1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;

    .line 162
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    .line 163
    iget-object v3, p0, Lcom/amazon/kcp/oob/BookInBarController$2;->this$0:Lcom/amazon/kcp/oob/BookInBarController;

    invoke-static {v3}, Lcom/amazon/kcp/oob/BookInBarController;->access$000(Lcom/amazon/kcp/oob/BookInBarController;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    .line 165
    iget-object v4, p0, Lcom/amazon/kcp/oob/BookInBarController$2;->val$bibView:Landroid/widget/ImageView;

    invoke-interface {v1, v3, v2, v4, v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;->open(Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_1

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/oob/BookInBarController$2;->this$0:Lcom/amazon/kcp/oob/BookInBarController;

    invoke-static {v0}, Lcom/amazon/kcp/oob/BookInBarController;->access$200(Lcom/amazon/kcp/oob/BookInBarController;)Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/oob/BookInBarController$2;->val$bibView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/librarymodule/R$anim;->activity_fade_out:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->openBookFromView(Lcom/amazon/kindle/model/content/ILocalBookItem;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 171
    :cond_3
    :goto_1
    invoke-static {}, Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;->reportBookOpenedFromBookInBar()V

    .line 173
    iget-object v0, p0, Lcom/amazon/kcp/oob/BookInBarController$2;->this$0:Lcom/amazon/kcp/oob/BookInBarController;

    invoke-static {v0, p1}, Lcom/amazon/kcp/oob/BookInBarController;->access$300(Lcom/amazon/kcp/oob/BookInBarController;Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    :cond_4
    return-void
.end method
