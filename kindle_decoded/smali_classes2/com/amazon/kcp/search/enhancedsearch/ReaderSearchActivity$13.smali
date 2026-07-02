.class Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$13;
.super Ljava/lang/Object;
.source "ReaderSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->setupAutoComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

.field final synthetic val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field final synthetic val$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 1229
    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$13;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    iput-object p2, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$13;->val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iput-object p3, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$13;->val$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1232
    invoke-static {}, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;->getInstance()Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1234
    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$13;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    iget-object v2, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$13;->val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iget-object v3, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$13;->val$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-virtual {v0, v2, v3}, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;->readCache(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/android/autocomplete/AutoCompleteDataManager;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$2402(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;Lcom/amazon/android/autocomplete/AutoCompleteDataManager;)Lcom/amazon/android/autocomplete/AutoCompleteDataManager;

    .line 1235
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$13;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$1500(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1236
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$13;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$1500(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$13;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$2400(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/android/autocomplete/AutoCompleteDataManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;->setAutoCompleteDataManager(Lcom/amazon/android/autocomplete/AutoCompleteDataManager;)V

    .line 1237
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$13;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$1900(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$13;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$1900(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$13;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    .line 1238
    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$2100(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/ReaderSearchAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$13;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$1500(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1239
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$13;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$1500(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$13;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$1900(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;->performAutoComplete(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
