.class public final Lcom/amazon/kcp/home/widget/AuthorFollowWidget;
.super Lcom/amazon/kindle/home/card/AbstractHomeCard;
.source "AuthorFollowWidget.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthorFollowWidget.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthorFollowWidget.kt\ncom/amazon/kcp/home/widget/AuthorFollowWidget\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,248:1\n1#2:249\n*E\n"
.end annotation


# instance fields
.field private authorDescTextView:Landroid/widget/TextView;

.field private authorNameTextView:Landroid/widget/TextView;

.field private avatarImageView:Landroid/widget/ImageView;

.field private final card:Lcom/amazon/kindle/home/model/CardData;

.field private final fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

.field private followButton:Lcom/amazon/kcp/home/ui/TwoStateButton;

.field private followButtonIcon:Landroid/widget/ImageView;

.field private followButtonText:Landroid/widget/TextView;

.field private imageDownloaded:Ljava/lang/Boolean;

.field private isFollowingAuthor:Ljava/lang/Boolean;

.field private final priority:I

.field private progressBar:Landroid/widget/ProgressBar;

.field private readMoreButton:Landroid/widget/Button;

.field private readMoreString:Ljava/lang/String;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private subTitleTextView:Landroid/widget/TextView;

.field private titleTextView:Landroid/widget/TextView;

.field private final viewLayoutId:I


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;)V
    .locals 1

    const-string v0, "fm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "card"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Lcom/amazon/kindle/home/card/AbstractHomeCard;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iput-object p3, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    .line 54
    sget p1, Lcom/amazon/kindle/librarymodule/R$layout;->author_follow_card_view:I

    iput p1, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->viewLayoutId:I

    .line 55
    invoke-virtual {p3}, Lcom/amazon/kindle/home/model/CardData;->getIndex()I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->priority:I

    return-void
.end method

.method public static final synthetic access$postActionFollowButton(Lcom/amazon/kcp/home/widget/AuthorFollowWidget;Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->postActionFollowButton(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V

    return-void
.end method

.method public static final synthetic access$preActionFollowButton(Lcom/amazon/kcp/home/widget/AuthorFollowWidget;Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->preActionFollowButton(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V

    return-void
.end method

.method public static final synthetic access$reportAction(Lcom/amazon/kcp/home/widget/AuthorFollowWidget;Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->reportAction(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V

    return-void
.end method

.method private final postActionFollowButton(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V
    .locals 16

    move-object/from16 v0, p0

    .line 198
    iget-object v1, v0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->followButton:Lcom/amazon/kcp/home/ui/TwoStateButton;

    const-string v2, "followButton"

    const/4 v3, 0x0

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/amazon/kcp/home/ui/TwoStateButton;->getCurrentState()Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    move-result-object v1

    sget-object v4, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;->stateOne:Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    if-ne v1, v4, :cond_0

    const-string v1, "-follow"

    goto :goto_0

    :cond_0
    const-string v1, "-unfollow"

    .line 199
    :goto_0
    iget-object v4, v0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v7, 0x5

    new-array v7, v7, [Lkotlin/Pair;

    .line 200
    iget-object v8, v0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v8}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "refTag"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    aput-object v8, v7, v5

    .line 201
    iget-object v8, v0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v8}, Lcom/amazon/kindle/home/model/CardData;->getIndex()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string/jumbo v9, "widgetPosition"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    aput-object v8, v7, v6

    const/4 v8, 0x2

    .line 202
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/home/model/HomeAction;->getEvent()Ljava/lang/String;

    move-result-object v9

    const-string v10, "action"

    invoke-static {v10, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    .line 203
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/home/model/HomeAction;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "actionType"

    invoke-static {v10, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    .line 204
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "actionSource"

    invoke-static {v10, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v7, v8

    .line 199
    invoke-static {v7}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v7

    const-string v8, "HomeSKWidget"

    const-string v9, "Click"

    invoke-interface {v4, v8, v9, v7}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 207
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v7, v4, Ljava/lang/String;

    if-nez v7, :cond_2

    move-object v4, v3

    :cond_2
    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 209
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    goto :goto_1

    :cond_3
    move-object v10, v3

    .line 211
    :goto_1
    iget-object v7, v0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iget-object v8, v0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x38

    const/4 v15, 0x0

    move-object/from16 v9, p2

    invoke-static/range {v7 .. v15}, Lcom/amazon/kcp/home/metrics/HomeFastMetricsKt;->recordAction$default(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kindle/home/model/HomeAction;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V

    if-nez p3, :cond_4

    goto :goto_2

    .line 215
    :cond_4
    sget-object v1, Lcom/amazon/kcp/home/widget/AuthorFollowWidget$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v1, v1, v4

    if-eq v1, v6, :cond_7

    .line 222
    :goto_2
    iget-object v1, v0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->followButton:Lcom/amazon/kcp/home/ui/TwoStateButton;

    if-eqz v1, :cond_6

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/amazon/kcp/home/ui/TwoStateButton;->getCurrentState()Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/home/ui/TwoStateButton;->show(Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;)V

    goto :goto_4

    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 217
    :cond_7
    iget-object v1, v0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->followButton:Lcom/amazon/kcp/home/ui/TwoStateButton;

    if-eqz v1, :cond_b

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/amazon/kcp/home/ui/TwoStateButton;->getNextState()Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazon/kcp/home/ui/TwoStateButton;->show(Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;)V

    .line 219
    iget-object v1, v0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->followButton:Lcom/amazon/kcp/home/ui/TwoStateButton;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/amazon/kcp/home/ui/TwoStateButton;->getCurrentState()Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;->stateOne:Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    if-ne v1, v2, :cond_8

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_3

    :cond_8
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_3
    iput-object v1, v0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->isFollowingAuthor:Ljava/lang/Boolean;

    :goto_4
    return-void

    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 217
    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 198
    :cond_c
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method private final preActionFollowButton(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V
    .locals 0

    .line 192
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->reportAction(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V

    .line 194
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->followButton:Lcom/amazon/kcp/home/ui/TwoStateButton;

    if-eqz p1, :cond_0

    sget-object p2, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;->progressBar:Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/home/ui/TwoStateButton;->show(Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;)V

    return-void

    :cond_0
    const-string p1, "followButton"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method private final reportAction(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V
    .locals 9

    .line 179
    iget-object p3, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p3

    if-eqz p3, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/Pair;

    const/4 v1, 0x0

    .line 180
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "refTag"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 181
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/CardData;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "widgetPosition"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 182
    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/HomeAction;->getEvent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "action"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 183
    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/HomeAction;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "actionType"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "actionSource"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    .line 179
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "HomeSKWidget"

    const-string v2, "Click"

    invoke-interface {p3, v1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 187
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p3, p1, Ljava/lang/String;

    if-nez p3, :cond_1

    const/4 p1, 0x0

    :cond_1
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x38

    const/4 v8, 0x0

    move-object v2, p2

    invoke-static/range {v0 .. v8}, Lcom/amazon/kcp/home/metrics/HomeFastMetricsKt;->recordAction$default(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kindle/home/model/HomeAction;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final setDataForAuthorDesc(Ljava/lang/String;)V
    .locals 8

    .line 228
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 229
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->authorDescTextView:Landroid/widget/TextView;

    const-string v1, "authorDescTextView"

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/amazon/kindle/librarymodule/R$integer;->author_follow_desc_count_limit:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 230
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    const-string v4, "Utils.getFactory()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v4, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v3, v4}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    :goto_0
    const-string v4, "Utils.getFactory().kindl\u2026T_OF_BOOK) ?: Theme.LIGHT"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    sget-object v4, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne v3, v4, :cond_1

    sget v3, Lcom/amazon/kindle/librarymodule/R$color;->accent_3_dark:I

    goto :goto_1

    :cond_1
    sget v3, Lcom/amazon/kindle/librarymodule/R$color;->accent_3_light:I

    .line 232
    :goto_1
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget-object v5, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->authorDescTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v4, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 236
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const-string/jumbo v5, "readMoreString"

    const/16 v6, 0x12

    if-lt v3, v0, :cond_5

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v7, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "... "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 238
    new-instance v3, Landroid/text/SpannableStringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->readMoreString:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x1

    .line 239
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    invoke-virtual {v3, v4, v0, p1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 240
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->authorDescTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 238
    :cond_3
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 237
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 242
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 243
    new-instance v0, Landroid/text/SpannableStringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->readMoreString:Ljava/lang/String;

    if-eqz v7, :cond_7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 244
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v4, p1, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 245
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->authorDescTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 243
    :cond_7
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 232
    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 229
    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lcom/amazon/kindle/home/action/HomeActionManager;)V
    .locals 10
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "am"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    instance-of v0, p1, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;

    if-nez v0, :cond_0

    const-string p1, "com.amazon.kcp.home.widget.AuthorFollowWidget"

    const-string p2, "Non-AuthorFollowView received, ignoring and returning w/o binding a model to view"

    .line 86
    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 91
    :cond_0
    check-cast p1, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->titleTextView:Landroid/widget/TextView;

    .line 92
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->getSubTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->subTitleTextView:Landroid/widget/TextView;

    .line 93
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->getAvatarImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->avatarImageView:Landroid/widget/ImageView;

    .line 94
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->getAuthorNameTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->authorNameTextView:Landroid/widget/TextView;

    .line 95
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->getAuthorDescTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->authorDescTextView:Landroid/widget/TextView;

    .line 96
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->getReadMoreButton()Lcom/amazon/kcp/home/ui/TwoStateButton;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->readMoreButton:Landroid/widget/Button;

    .line 97
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->getFollowButton()Lcom/amazon/kcp/home/ui/TwoStateButton;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->followButton:Lcom/amazon/kcp/home/ui/TwoStateButton;

    .line 98
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->getFollowButtonText()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->followButtonText:Landroid/widget/TextView;

    .line 99
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->getFollowButtonIcon()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->followButtonIcon:Landroid/widget/ImageView;

    .line 100
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->progressBar:Landroid/widget/ProgressBar;

    .line 102
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "titleTextView"

    const/4 v3, 0x0

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/amazon/kindle/home/model/TextZone;

    if-nez v1, :cond_1

    move-object v0, v3

    :cond_1
    check-cast v0, Lcom/amazon/kindle/home/model/TextZone;

    if-eqz v0, :cond_3

    .line 103
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->titleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 103
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 106
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->subTitleTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "subTitleTextView"

    if-eqz v0, :cond_25

    iget-object v2, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v2

    iget-object v4, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->subTitleTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_24

    invoke-virtual {v4}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Lcom/amazon/kindle/home/model/TextZone;

    if-nez v4, :cond_4

    move-object v2, v3

    :cond_4
    check-cast v2, Lcom/amazon/kindle/home/model/TextZone;

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v2, :cond_6

    .line 107
    iget-object v6, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->subTitleTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_5

    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_6
    const/16 v1, 0x8

    .line 109
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->avatarImageView:Landroid/widget/ImageView;

    const-string v2, "avatarImageView"

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/amazon/kindle/home/model/ImageZone;

    if-nez v1, :cond_7

    move-object v0, v3

    :cond_7
    check-cast v0, Lcom/amazon/kindle/home/model/ImageZone;

    if-eqz v0, :cond_b

    .line 112
    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/ImageZone;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/HomeUtils;->imagePathForAuthorFollowUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_2

    :cond_8
    move-object v1, v3

    :goto_2
    if-eqz v1, :cond_a

    .line 117
    iget-object v6, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->avatarImageView:Landroid/widget/ImageView;

    if-eqz v6, :cond_9

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 120
    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 121
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-eqz v1, :cond_a

    goto :goto_3

    .line 117
    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 122
    :cond_a
    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    .line 127
    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->authorNameTextView:Landroid/widget/TextView;

    const-string v1, "authorNameTextView"

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/amazon/kindle/home/model/TextZone;

    if-nez v0, :cond_c

    move-object p1, v3

    :cond_c
    check-cast p1, Lcom/amazon/kindle/home/model/TextZone;

    if-eqz p1, :cond_e

    .line 128
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->authorNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_4

    .line 128
    :cond_d
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 131
    :cond_e
    :goto_4
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->readMoreButton:Landroid/widget/Button;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/amazon/kindle/home/model/TwoStateButtonZone;

    if-nez v0, :cond_f

    move-object p1, v3

    :cond_f
    check-cast p1, Lcom/amazon/kindle/home/model/TwoStateButtonZone;

    if-eqz p1, :cond_10

    .line 132
    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/TwoStateButtonZone;->getTextOne()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->readMoreString:Ljava/lang/String;

    .line 133
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 135
    :cond_10
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->authorDescTextView:Landroid/widget/TextView;

    const-string v4, "authorDescTextView"

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/amazon/kindle/home/model/TextZone;

    if-nez v0, :cond_11

    move-object p1, v3

    :cond_11
    check-cast p1, Lcom/amazon/kindle/home/model/TextZone;

    if-eqz p1, :cond_12

    .line 136
    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->setDataForAuthorDesc(Ljava/lang/String;)V

    .line 137
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 139
    :cond_12
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->followButton:Lcom/amazon/kcp/home/ui/TwoStateButton;

    const-string v6, "followButton"

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/amazon/kindle/home/model/TwoStateButtonZone;

    if-nez v0, :cond_13

    move-object p1, v3

    :cond_13
    check-cast p1, Lcom/amazon/kindle/home/model/TwoStateButtonZone;

    if-eqz p1, :cond_1a

    .line 140
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->followButton:Lcom/amazon/kcp/home/ui/TwoStateButton;

    if-eqz p1, :cond_19

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v0

    iget-object v7, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->followButton:Lcom/amazon/kcp/home/ui/TwoStateButton;

    if-eqz v7, :cond_18

    invoke-virtual {v7}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    check-cast v0, Lcom/amazon/kindle/home/model/TwoStateButtonZone;

    iget-object v7, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->followButtonIcon:Landroid/widget/ImageView;

    if-eqz v7, :cond_16

    iget-object v8, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->followButtonText:Landroid/widget/TextView;

    if-eqz v8, :cond_15

    iget-object v9, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v9, :cond_14

    invoke-virtual {p1, v0, v7, v8, v9}, Lcom/amazon/kcp/home/ui/TwoStateButton;->setData(Lcom/amazon/kindle/home/model/TwoStateButtonZone;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V

    .line 141
    invoke-virtual {p0}, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->changeFollowButtonState()V

    .line 142
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_5

    :cond_14
    const-string/jumbo p1, "progressBar"

    .line 140
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_15
    const-string p1, "followButtonText"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_16
    const-string p1, "followButtonIcon"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_17
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "null cannot be cast to non-null type com.amazon.kindle.home.model.TwoStateButtonZone"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_19
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 144
    :cond_1a
    :goto_5
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    new-instance v0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget$bindView$8;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/home/widget/AuthorFollowWidget$bindView$8;-><init>(Lcom/amazon/kcp/home/widget/AuthorFollowWidget;)V

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/view/View;

    iget-object v8, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->avatarImageView:Landroid/widget/ImageView;

    if-eqz v8, :cond_1e

    aput-object v8, v7, v5

    iget-object v2, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->authorNameTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_1d

    const/4 v1, 0x1

    aput-object v2, v7, v1

    const/4 v2, 0x2

    iget-object v8, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->authorDescTextView:Landroid/widget/TextView;

    if-eqz v8, :cond_1c

    aput-object v8, v7, v2

    invoke-interface {p2, p1, v3, v0, v7}, Lcom/amazon/kindle/home/action/HomeActionManager;->registerActions(Lcom/amazon/kindle/home/model/CardData;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;[Landroid/view/View;)V

    .line 145
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    new-instance v0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget$bindView$9;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/home/widget/AuthorFollowWidget$bindView$9;-><init>(Lcom/amazon/kcp/home/widget/AuthorFollowWidget;)V

    new-instance v2, Lcom/amazon/kcp/home/widget/AuthorFollowWidget$bindView$10;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/home/widget/AuthorFollowWidget$bindView$10;-><init>(Lcom/amazon/kcp/home/widget/AuthorFollowWidget;)V

    new-array v1, v1, [Landroid/view/View;

    iget-object v4, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->followButton:Lcom/amazon/kcp/home/ui/TwoStateButton;

    if-eqz v4, :cond_1b

    aput-object v4, v1, v5

    invoke-interface {p2, p1, v0, v2, v1}, Lcom/amazon/kindle/home/action/HomeActionManager;->registerActions(Lcom/amazon/kindle/home/model/CardData;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;[Landroid/view/View;)V

    return-void

    :cond_1b
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 144
    :cond_1c
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_1d
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_1e
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 139
    :cond_1f
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 135
    :cond_20
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_21
    const-string/jumbo p1, "readMoreButton"

    .line 131
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 127
    :cond_22
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 111
    :cond_23
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 106
    :cond_24
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_25
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 102
    :cond_26
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method public final changeFollowButtonState()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->followButton:Lcom/amazon/kcp/home/ui/TwoStateButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->followButtonText:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->followButtonIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->isFollowingAuthor:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "followButton"

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->followButton:Lcom/amazon/kcp/home/ui/TwoStateButton;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;->stateTwo:Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/home/ui/TwoStateButton;->show(Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->followButton:Lcom/amazon/kcp/home/ui/TwoStateButton;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;->stateOne:Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/home/ui/TwoStateButton;->show(Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;)V

    :goto_0
    return-void

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_1
    return-void
.end method

.method public final getCard()Lcom/amazon/kindle/home/model/CardData;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->priority:I

    return v0
.end method

.method public getState()Lcom/amazon/kindle/home/card/HomeCardState;
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->imageDownloaded:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 76
    sget-object v0, Lcom/amazon/kindle/home/card/HomeCardState;->LOADING:Lcom/amazon/kindle/home/card/HomeCardState;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 77
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/home/card/HomeCardState;->READY:Lcom/amazon/kindle/home/card/HomeCardState;

    goto :goto_0

    .line 78
    :cond_1
    sget-object v0, Lcom/amazon/kindle/home/card/HomeCardState;->FAILED:Lcom/amazon/kindle/home/card/HomeCardState;

    :goto_0
    return-object v0
.end method

.method public getViewLayoutId()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->viewLayoutId:I

    return v0
.end method

.method public reportImpressionData(Z)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    .line 163
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "refTag"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 164
    invoke-virtual {p0}, Lcom/amazon/kindle/home/card/AbstractHomeCard;->getDisplayPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "widgetPosition"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 162
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v1, :cond_1

    const-string v2, "HomeSKWidget"

    if-eqz p1, :cond_0

    .line 169
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    invoke-interface {p1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 171
    :cond_0
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    invoke-interface {p1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->hideContext(Ljava/lang/String;Ljava/util/Map;)V

    .line 175
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-static {p1, v0}, Lcom/amazon/kcp/home/metrics/HomeFastMetricsKt;->recordImpression(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;)V

    return-void
.end method

.method public final setFollowingAuthor$LibraryModule_release(Ljava/lang/Boolean;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->isFollowingAuthor:Ljava/lang/Boolean;

    return-void
.end method

.method public final setImageDownloaded$LibraryModule_release(Ljava/lang/Boolean;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->imageDownloaded:Ljava/lang/Boolean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->getPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
