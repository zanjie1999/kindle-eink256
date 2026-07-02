.class public Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;
.super Landroid/os/AsyncTask;
.source "SeriesDetailHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/SeriesDetailHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecondaryTopBarAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/amazon/kindle/content/GroupMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field private final libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;Landroid/view/View;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    .line 158
    iput-object p2, p0, Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;->view:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;)Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    return-object p0
.end method

.method private updateOwnershipCount(Lcom/amazon/kindle/content/GroupMetadata;I)V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;->view:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->series_ownership_count_field:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/amazon/kcp/library/SeriesDetailHelper;->getOwnershipCountText(Landroid/content/res/Resources;Lcom/amazon/kindle/content/GroupMetadata;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 192
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private updateSeeInStore(Lcom/amazon/kindle/content/GroupMetadata;)V
    .locals 3

    .line 196
    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getAsin()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;->view:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->series_see_all_items_in_store:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 199
    invoke-static {}, Lcom/amazon/kcp/util/FalkorUtils;->isFalkorEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/utils/GroupContentHelper;->isFalkorGroup(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 200
    sget p1, Lcom/amazon/kindle/librarymodule/R$string;->falkor_story_see_all_in_store:I

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 201
    new-instance p1, Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask$1;

    invoke-direct {p1, p0, v0}, Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask$1;-><init>(Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 213
    :cond_0
    sget p1, Lcom/amazon/kindle/librarymodule/R$string;->series_see_all_in_store:I

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 214
    new-instance p1, Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask$2;

    invoke-direct {p1, p0, v0}, Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask$2;-><init>(Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const/4 p1, 0x0

    .line 225
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadata;
    .locals 2

    const/4 v0, 0x0

    .line 163
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 164
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getGroupService()Lcom/amazon/kindle/content/IGroupService;

    move-result-object v1

    .line 165
    aget-object p1, p1, v0

    invoke-interface {v1, p1}, Lcom/amazon/kindle/content/IGroupService;->getGroupMetadataWithItems(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadata;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 150
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;->doInBackground([Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadata;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/amazon/kindle/content/GroupMetadata;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 174
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 175
    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getGroupContents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/GroupItemMetadata;

    .line 176
    invoke-virtual {v2}, Lcom/amazon/kindle/content/GroupItemMetadata;->getGroupPosition()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;->updateOwnershipCount(Lcom/amazon/kindle/content/GroupMetadata;I)V

    .line 179
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;->updateSeeInStore(Lcom/amazon/kindle/content/GroupMetadata;)V

    goto :goto_1

    .line 181
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;->view:Landroid/view/View;

    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->series_ownership_count_field:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 182
    iget-object p1, p0, Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;->view:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->series_see_all_items_in_store:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 150
    check-cast p1, Lcom/amazon/kindle/content/GroupMetadata;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;->onPostExecute(Lcom/amazon/kindle/content/GroupMetadata;)V

    return-void
.end method
