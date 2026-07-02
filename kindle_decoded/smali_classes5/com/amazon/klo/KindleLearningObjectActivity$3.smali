.class Lcom/amazon/klo/KindleLearningObjectActivity$3;
.super Ljava/lang/Object;
.source "KindleLearningObjectActivity.java"

# interfaces
.implements Lcom/amazon/klo/IKLOHeaderBar$IKLOOnHeaderActionBarClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/klo/KindleLearningObjectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/klo/KindleLearningObjectActivity;


# direct methods
.method constructor <init>(Lcom/amazon/klo/KindleLearningObjectActivity;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/amazon/klo/KindleLearningObjectActivity$3;->this$0:Lcom/amazon/klo/KindleLearningObjectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateFlashcards()V
    .locals 7

    .line 136
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity$3;->this$0:Lcom/amazon/klo/KindleLearningObjectActivity;

    invoke-static {v0}, Lcom/amazon/klo/KindleLearningObjectActivity;->access$300(Lcom/amazon/klo/KindleLearningObjectActivity;)Lcom/amazon/klo/list/TermListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/klo/list/TermListView;->getAdapter()Lcom/amazon/klo/list/TermListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 146
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 151
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/klo/list/TermListItem;

    .line 152
    invoke-virtual {v5}, Lcom/amazon/klo/list/TermListItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {v5}, Lcom/amazon/klo/list/TermListItem;->getDetailDefinition()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 156
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/klo/KindleLearningObjectActivity$3;->this$0:Lcom/amazon/klo/KindleLearningObjectActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v4, Lcom/amazon/kedu/flashcards/FlashcardsActivity;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 158
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 162
    invoke-interface {v4}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v5

    const-string v6, "flashcardBookAsin"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-interface {v4}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v4

    const-string v5, "flashcardBookGuid"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v4, p0, Lcom/amazon/klo/KindleLearningObjectActivity$3;->this$0:Lcom/amazon/klo/KindleLearningObjectActivity;

    invoke-static {v4}, Lcom/amazon/klo/KindleLearningObjectActivity;->access$200(Lcom/amazon/klo/KindleLearningObjectActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "flashcardDeckTitle"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "flashcardPrompts"

    .line 165
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v2, "flashcardResponses"

    .line 166
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 168
    invoke-static {v1}, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->setFlashcardCreationData(Landroid/os/Bundle;)V

    .line 169
    iget-object v1, p0, Lcom/amazon/klo/KindleLearningObjectActivity$3;->this$0:Lcom/amazon/klo/KindleLearningObjectActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method
