.class public Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ResourceSetDetailsListAdapter.java"


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$ReleaseResourceSetClickListener;,
        Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$GetResourceSetClickListener;,
        Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$DeleteResourceSetClickListener;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

.field private final downloadManager:Lcom/amazon/appexpan/client/download/ResourceDownloadManager;

.field private final executor:Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;

.field private final resourceSetName:Ljava/lang/String;

.field resourceSets:[Lcom/amazon/appexpan/client/model/ResourceSetModel;


# direct methods
.method public constructor <init>(Lcom/amazon/appexpan/client/download/ResourceDownloadManager;Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/amazon/appexpan/client/download/ResourceDownloadManager;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p2    # Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p3    # Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param

    .line 50
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;->downloadManager:Lcom/amazon/appexpan/client/download/ResourceDownloadManager;

    .line 52
    iput-object p2, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;->executor:Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;

    .line 53
    iput-object p3, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    .line 55
    iput-object p4, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;->context:Landroid/content/Context;

    .line 56
    iput-object p5, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;->resourceSetName:Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;->populateResourceSetsArray()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;)Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;->dataSetChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;)Lcom/amazon/appexpan/client/download/ResourceDownloadManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;->downloadManager:Lcom/amazon/appexpan/client/download/ResourceDownloadManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;)Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;->executor:Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;

    return-object p0
.end method

.method private dataSetChanged()V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;->populateResourceSetsArray()V

    .line 196
    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private getDetailTextForResourceSet(Lcom/amazon/appexpan/client/model/ResourceSetModel;)Ljava/lang/String;
    .locals 3

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<b>Download state</b>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getState()Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-interface {v1, p1}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->getResourcesForResourceSet(Lcom/amazon/appexpan/client/model/ResourceSetModel;)Ljava/util/List;

    move-result-object p1

    .line 168
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<br><Br>Contains the following resources: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/appexpan/client/model/ResourceModel;

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<br> "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getLocation()Lcom/amazon/appexpan/client/model/ResourceModel$Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getGroupHeaderText(Lcom/amazon/appexpan/client/model/ResourceSetModel;)Ljava/lang/String;
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "v "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private populateResourceSetsArray()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    iget-object v1, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;->resourceSetName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->getResourceSetsByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 203
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/amazon/appexpan/client/model/ResourceSetModel;

    iput-object v1, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;->resourceSets:[Lcom/amazon/appexpan/client/model/ResourceSetModel;

    .line 204
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;->resourceSets:[Lcom/amazon/appexpan/client/model/ResourceSetModel;

    new-instance v1, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$1;

    invoke-direct {v1, p0}, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$1;-><init>(Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 0

    .line 82
    iget-object p2, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;->resourceSets:[Lcom/amazon/appexpan/client/model/ResourceSetModel;

    aget-object p1, p2, p1

    return-object p1
.end method

.method public getChildId(II)J
    .locals 0

    int-to-long p1, p1

    return-wide p1
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    if-nez p4, :cond_0

    .line 127
    iget-object p2, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 129
    sget p3, Lcom/amazon/appexpan/client/R$layout;->debug_resource_set_detail:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 132
    :cond_0
    iget-object p2, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;->resourceSets:[Lcom/amazon/appexpan/client/model/ResourceSetModel;

    aget-object p2, p2, p1

    invoke-direct {p0, p2}, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;->getDetailTextForResourceSet(Lcom/amazon/appexpan/client/model/ResourceSetModel;)Ljava/lang/String;

    move-result-object p2

    .line 133
    sget p3, Lcom/amazon/appexpan/client/R$id;->debug_setting_resource_set_detail_text:I

    invoke-virtual {p4, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 136
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    sget p2, Lcom/amazon/appexpan/client/R$id;->debug_download_resource_set_again:I

    invoke-virtual {p4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 139
    new-instance p3, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$DeleteResourceSetClickListener;

    iget-object p5, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;->resourceSets:[Lcom/amazon/appexpan/client/model/ResourceSetModel;

    aget-object p5, p5, p1

    invoke-direct {p3, p0, p5}, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$DeleteResourceSetClickListener;-><init>(Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;Lcom/amazon/appexpan/client/model/ResourceSetModel;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    sget p2, Lcom/amazon/appexpan/client/R$id;->debug_download_get_resource_set:I

    invoke-virtual {p4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 142
    new-instance p3, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$GetResourceSetClickListener;

    iget-object p5, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;->resourceSets:[Lcom/amazon/appexpan/client/model/ResourceSetModel;

    aget-object p5, p5, p1

    invoke-direct {p3, p0, p5}, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$GetResourceSetClickListener;-><init>(Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;Lcom/amazon/appexpan/client/model/ResourceSetModel;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    sget p2, Lcom/amazon/appexpan/client/R$id;->debug_release_resource_set:I

    invoke-virtual {p4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 145
    new-instance p3, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$ReleaseResourceSetClickListener;

    iget-object p5, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;->resourceSets:[Lcom/amazon/appexpan/client/model/ResourceSetModel;

    aget-object p1, p5, p1

    invoke-direct {p3, p0, p1}, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$ReleaseResourceSetClickListener;-><init>(Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;Lcom/amazon/appexpan/client/model/ResourceSetModel;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p4
.end method

.method public getChildrenCount(I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;->resourceSets:[Lcom/amazon/appexpan/client/model/ResourceSetModel;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getGroupCount()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;->resourceSets:[Lcom/amazon/appexpan/client/model/ResourceSetModel;

    array-length v0, v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    if-nez p3, :cond_0

    .line 108
    iget-object p2, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 110
    sget p3, Lcom/amazon/appexpan/client/R$layout;->debug_resource_set_detail_header:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 113
    :cond_0
    sget p2, Lcom/amazon/appexpan/client/R$id;->debug_resource_set_detail_header_text:I

    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 116
    iget-object p4, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;->resourceSets:[Lcom/amazon/appexpan/client/model/ResourceSetModel;

    aget-object p1, p4, p1

    invoke-direct {p0, p1}, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;->getGroupHeaderText(Lcom/amazon/appexpan/client/model/ResourceSetModel;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
