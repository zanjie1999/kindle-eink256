.class public Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView$WaypointExtendedAdapter;
.super Lcom/amazon/kindle/annotation/WaypointAdapter;
.source "WaypointMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WaypointExtendedAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;Landroid/content/Context;I)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView$WaypointExtendedAdapter;->this$0:Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;

    .line 233
    invoke-direct {p0, p2, p3}, Lcom/amazon/kindle/annotation/WaypointAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private setWaypointText(Lcom/amazon/kindle/annotation/WaypointAdapter$ViewHolder;I)V
    .locals 7

    .line 270
    iget-object v0, p0, Lcom/amazon/kindle/annotation/WaypointAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_0

    return-void

    .line 276
    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 277
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsPageLabels()Z

    move-result v2

    .line 281
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, " "

    if-eqz v2, :cond_4

    .line 283
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3, v1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPageIndex(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    invoke-interface {v3, v1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPageIndex(I)Ljava/lang/String;

    move-result-object v0

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView$WaypointExtendedAdapter;->this$0:Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$string;->waypoint_view_row_page:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 286
    :cond_1
    invoke-interface {v3, v1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 287
    invoke-interface {v3, v1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object v0

    .line 288
    iget-object v1, p0, Lcom/amazon/kindle/annotation/WaypointAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v1}, Lcom/amazon/android/util/BookTypeUtil;->isLavaMagazine(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView$WaypointExtendedAdapter;->this$0:Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$string;->reader_search_article:I

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView$WaypointExtendedAdapter;->this$0:Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;

    .line 289
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$string;->waypoint_view_row_page:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, ""

    goto :goto_1

    .line 293
    :cond_4
    :try_start_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 299
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView$WaypointExtendedAdapter;->this$0:Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$string;->waypoint_view_row_loc:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    :goto_1
    iget-object v1, p1, Lcom/amazon/kindle/annotation/WaypointAdapter$ViewHolder;->waypointTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView$WaypointExtendedAdapter;->this$0:Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/amazon/kindle/krl/R$string;->waypoint_view_row_number:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p2, v4

    .line 303
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 302
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object p1, p1, Lcom/amazon/kindle/annotation/WaypointAdapter$ViewHolder;->locationTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 241
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 242
    sget v1, Lcom/amazon/kindle/krl/R$layout;->waypoint_view_row:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 243
    new-instance p3, Lcom/amazon/kindle/annotation/WaypointAdapter$ViewHolder;

    invoke-direct {p3}, Lcom/amazon/kindle/annotation/WaypointAdapter$ViewHolder;-><init>()V

    .line 244
    sget v1, Lcom/amazon/kindle/krl/R$id;->waypoint_view_row_waypoint_text:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/amazon/kindle/annotation/WaypointAdapter$ViewHolder;->waypointTextView:Landroid/widget/TextView;

    .line 245
    sget v1, Lcom/amazon/kindle/krl/R$id;->waypoint_view_row_location:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/amazon/kindle/annotation/WaypointAdapter$ViewHolder;->locationTextView:Landroid/widget/TextView;

    .line 246
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/kindle/annotation/WaypointAdapter$ViewHolder;

    .line 251
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 252
    invoke-direct {p0, p3, p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView$WaypointExtendedAdapter;->setWaypointText(Lcom/amazon/kindle/annotation/WaypointAdapter$ViewHolder;I)V

    .line 254
    iget-object p1, p0, Lcom/amazon/kindle/annotation/WaypointAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_1

    .line 257
    iget-object p1, p3, Lcom/amazon/kindle/annotation/WaypointAdapter$ViewHolder;->waypointTextView:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView$WaypointExtendedAdapter;->this$0:Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget-object v0, p0, Lcom/amazon/kindle/annotation/WaypointAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorModeFromAppTheme()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getUiTextColorId()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-object p2
.end method
