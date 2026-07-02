.class public Lcom/amazon/kcp/reader/LargeFontAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LargeFontAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontsListener;,
        Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final LAYOUT_RESOURCE_ID:I


# instance fields
.field private context:Landroid/content/Context;

.field private fontList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mobipocket/android/drawing/FontFamily;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    sget v0, Lcom/amazon/kcp/more/R$layout;->large_font_item:I

    sput v0, Lcom/amazon/kcp/reader/LargeFontAdapter;->LAYOUT_RESOURCE_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/mobipocket/android/drawing/FontFamily;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/amazon/kcp/reader/LargeFontAdapter;->fontList:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/amazon/kcp/reader/LargeFontAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/LargeFontAdapter;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/kcp/reader/LargeFontAdapter;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getIndexOfItem(Lcom/mobipocket/android/drawing/FontFamily;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 88
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/LargeFontAdapter;->fontList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 89
    iget-object v2, p0, Lcom/amazon/kcp/reader/LargeFontAdapter;->fontList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/kcp/reader/LargeFontAdapter;->fontList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 51
    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;

    .line 52
    iget-object v1, p0, Lcom/amazon/kcp/reader/LargeFontAdapter;->fontList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mobipocket/android/drawing/FontFamily;

    .line 53
    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getInstance()Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getFontInfo(Lcom/mobipocket/android/drawing/FontFamily;)Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 55
    iget-object v1, p0, Lcom/amazon/kcp/reader/LargeFontAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->initializeFontImage(Landroid/content/Context;Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V

    .line 57
    invoke-static {v0}, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->access$000(Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->getResourceSizeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v0, p2}, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->setUpOperations(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V

    .line 61
    invoke-virtual {p2}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->isDownloaded()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 62
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/amazon/kcp/reader/LargeFontAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/amazon/kcp/more/R$string;->accessibility_setting_large_fonts_downloaded:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->getFontFamily()Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mobipocket/android/drawing/FontFamily;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/amazon/kcp/reader/LargeFontAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/amazon/kcp/more/R$string;->accessibility_font_not_downloaded:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->getFontFamily()Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mobipocket/android/drawing/FontFamily;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 44
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 45
    sget v0, Lcom/amazon/kcp/reader/LargeFontAdapter;->LAYOUT_RESOURCE_ID:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 46
    new-instance p2, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;-><init>(Lcom/amazon/kcp/reader/LargeFontAdapter;Landroid/view/View;)V

    return-object p2
.end method
