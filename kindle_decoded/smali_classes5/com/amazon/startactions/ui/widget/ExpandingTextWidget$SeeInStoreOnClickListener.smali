.class Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$SeeInStoreOnClickListener;
.super Ljava/lang/Object;
.source "ExpandingTextWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeeInStoreOnClickListener"
.end annotation


# instance fields
.field private final query:Ljava/lang/String;

.field private final refTag:Lcom/amazon/ea/reftag/RefTag;

.field final synthetic this$0:Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;

.field private type:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;


# direct methods
.method public constructor <init>(Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ea/reftag/RefTag;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$SeeInStoreOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p3, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$SeeInStoreOnClickListener;->query:Ljava/lang/String;

    .line 152
    iput-object p4, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$SeeInStoreOnClickListener;->refTag:Lcom/amazon/ea/reftag/RefTag;

    .line 153
    invoke-static {p1, p2}, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;->access$000(Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;Ljava/lang/String;)Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$SeeInStoreOnClickListener;->type:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 158
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$SeeInStoreOnClickListener;->query:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$SeeInStoreOnClickListener;->type:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$SeeInStoreOnClickListener;->refTag:Lcom/amazon/ea/reftag/RefTag;

    const-string v2, "AnyActionsExpandingTextWidget"

    invoke-static {p1, v0, v1, v2}, Lcom/amazon/ea/util/StoreManager;->loadStorePage(Ljava/lang/String;Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;Lcom/amazon/ea/reftag/RefTag;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$SeeInStoreOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;

    invoke-virtual {p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p1

    .line 160
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "SeeInStore"

    invoke-interface {v0, v2, v1, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
