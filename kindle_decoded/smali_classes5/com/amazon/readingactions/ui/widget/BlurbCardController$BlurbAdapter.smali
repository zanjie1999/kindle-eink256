.class final Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BlurbCardController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/BlurbCardController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BlurbAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlurbCardController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlurbCardController.kt\ncom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter\n*L\n1#1,466:1\n*E\n"
.end annotation


# instance fields
.field private maxHeight:I

.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;


# direct methods
.method public constructor <init>(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 242
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method private final applyThemeRules(Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;)V
    .locals 3

    .line 355
    sget-object v0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager;->Companion:Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager$Companion;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getResources$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "resources"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager$Companion;->setBlurbCardStyles(Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;Landroid/content/res/Resources;)V

    .line 357
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->getReadNowButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager;->Companion:Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager$Companion;

    .line 358
    sget v2, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_read_button_text_color:I

    invoke-virtual {v1, v2}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager$Companion;->getThemedColor(I)I

    move-result v1

    .line 357
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 359
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->getReadNowButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager;->Companion:Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager$Companion;

    .line 360
    sget v2, Lcom/amazon/kindle/ea/R$array;->readingactions_read_now_button_background:I

    invoke-virtual {v1, v2}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager$Companion;->getThemedColor(I)I

    move-result v1

    .line 359
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 361
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->getLearnMoreButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager;->Companion:Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager$Companion;

    .line 362
    sget v2, Lcom/amazon/kindle/ea/R$array;->readingactions_learn_more_button_text_color:I

    invoke-virtual {v1, v2}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager$Companion;->getThemedColor(I)I

    move-result v1

    .line 361
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 363
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->getBlurbAuthorRole()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager;->Companion:Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager$Companion;

    .line 364
    sget v2, Lcom/amazon/kindle/ea/R$array;->readingactions_blurb_author_role_text_color:I

    invoke-virtual {v1, v2}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager$Companion;->getThemedColor(I)I

    move-result v1

    .line 363
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 365
    :cond_3
    sget-object v0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager;->Companion:Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager$Companion;

    sget v1, Lcom/amazon/kindle/ea/R$array;->readingactions_text_primary_color:I

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager$Companion;->getThemedColor(I)I

    move-result v0

    .line 366
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->getBlurb()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 367
    :cond_4
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->getBlurbAuthorName()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 368
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->getBlurbAuthorName()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getContext$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/BookerlyDisplay_Bd.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_6
    return-void
.end method

.method private final makeRecyclerViewHeightAdaptable(Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;)V
    .locals 3

    .line 338
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 339
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v2, "EndActionsPlugin.sdk"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "EndActionsPlugin.sdk.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 340
    sget v2, Lcom/amazon/kindle/ea/R$dimen;->readingactions_blurb_widget_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    .line 339
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v2, 0x0

    .line 341
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 338
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 342
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "holder.itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 343
    iget v1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->maxHeight:I

    if-le v0, v1, :cond_3

    .line 344
    iput v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->maxHeight:I

    .line 345
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getRecyclerView$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 346
    iget v1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->maxHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 347
    :cond_1
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getRecyclerView$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getRecyclerView$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter$makeRecyclerViewHeightAdaptable$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter$makeRecyclerViewHeightAdaptable$1;-><init>(Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public final getBlurbAuthorImage(I)Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 319
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getBlurbAuthorImages$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Lcom/amazon/startactions/storage/ImageBatchDownloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->get(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getBlurbAuthorImages$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Lcom/amazon/startactions/storage/ImageBatchDownloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->get(I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 322
    :cond_0
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getResources$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/ea/R$drawable;->ic_author_photo_placeholder:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    move-object v1, p1

    .line 324
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getResources$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Landroid/content/res/Resources;

    move-result-object v7

    .line 325
    sget-object v0, Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator;->Companion:Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator$Companion;

    const-string v2, "bitmap"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v2}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getResources$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "resources"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator$Companion;->getCircularBitmap$default(Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator$Companion;Landroid/graphics/Bitmap;Landroid/content/res/Resources;IIILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 324
    invoke-direct {p1, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method public final getBlurbCardContentDescription(Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "rec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    invoke-virtual {p1}, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->getBlurb()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    if-eqz v1, :cond_0

    .line 304
    invoke-virtual {p1}, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->getBlurb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->getBlurbAuthorImageAltText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 307
    invoke-virtual {p1}, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->getBlurbAuthorImageAltText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->getBlurbAuthorNameAltText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 310
    invoke-virtual {p1}, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->getBlurbAuthorNameAltText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {p1}, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->getBlurbAuthorRole()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 312
    invoke-virtual {p1}, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->getBlurbAuthorRole()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "blurbCardContentDescription.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->getRecommendations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 242
    check-cast p1, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->onBindViewHolder(Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "holder"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v3}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getCoverImageList$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v3

    iget-object v4, v0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v4}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getRecommendationsBookCoverImageHelper$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    move-result-object v4

    iget-object v5, v0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v5}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getResources$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "resources"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2, v5}, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->getCoverDrawable(ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 260
    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v3}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->getRecommendations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;

    .line 261
    iget-object v4, v0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v4}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getBlurbAuthorImageList$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v4

    invoke-virtual {v0, v2}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->getBlurbAuthorImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 263
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v5, "holder.itemView"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 264
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->getBlurb()Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->getBlurb()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->getBlurbBookImage()Landroid/widget/ImageView;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, v0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v5}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getCoverImageList$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 266
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->getBlurbBookImage()Landroid/widget/ImageView;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v5, v0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v5}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getRecommendationsBookCoverImageHelper$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    move-result-object v5

    iget-object v7, v0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v7}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getResources$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v2, v7}, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->getCoverContentDescription(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 267
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->getBlurbAuthorImage()Landroid/widget/ImageView;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v5, v0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v5}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getBlurbAuthorImageList$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 268
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->getBlurbAuthorImage()Landroid/widget/ImageView;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->getBlurbAuthorImageAltText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 269
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->getBlurbAuthorName()Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->getBlurbAuthorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->getBlurbAuthorName()Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->getBlurbAuthorNameAltText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 271
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->getBlurbAuthorRole()Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->getBlurbAuthorRole()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->getLearnMoreButton()Landroid/widget/Button;

    move-result-object v4

    if-eqz v4, :cond_8

    new-instance v5, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter$onBindViewHolder$1;

    invoke-direct {v5, v0, v2}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter$onBindViewHolder$1;-><init>(Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    :cond_8
    new-instance v4, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter$onBindViewHolder$onClickBlurbCardListener$1;

    invoke-direct {v4, v0, v2}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter$onBindViewHolder$onClickBlurbCardListener$1;-><init>(Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;I)V

    .line 281
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->getBlurbCardContentLayout()Landroid/widget/LinearLayout;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->getBlurbCardContentLayout()Landroid/widget/LinearLayout;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v0, v3}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->getBlurbCardContentDescription(Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 283
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->getBlurbBookImage()Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    :cond_b
    new-instance v4, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->getReadNowButton()Landroid/widget/Button;

    move-result-object v5

    sget-object v6, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->READ:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    invoke-direct {v4, v5, v6}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;-><init>(Landroid/widget/Button;Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;)V

    invoke-virtual {v1, v4}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->setPurchaseViewManager(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)V

    const/4 v4, 0x1

    .line 286
    invoke-static {v4}, Lcom/amazon/ea/guava/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v4

    const-string/jumbo v5, "rsMetadata"

    .line 287
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v5}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    move-result-object v5

    iget-object v5, v5, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v6, "MetricsTag"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->getPurchaseViewManager()Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    move-result-object v5

    if-eqz v5, :cond_c

    new-instance v6, Lcom/amazon/ea/util/EABookShell;

    invoke-direct {v6, v3}, Lcom/amazon/ea/util/EABookShell;-><init>(Lcom/amazon/ea/sidecar/def/data/RecommendationData;)V

    const/4 v7, 0x0

    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v3}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->getOneClickBorrowSupported()Z

    move-result v8

    .line 289
    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v3}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    move-result-object v3

    iget-object v10, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    .line 290
    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v3}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    move-result-object v3

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v11}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    move-result-object v11

    invoke-virtual {v11}, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->getRefTagFeatureIdPartial()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_pb_"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 291
    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v3}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    move-result-object v3

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v12}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    move-result-object v12

    invoke-virtual {v12}, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->getRefTagFeatureIdPartial()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "_b_"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 292
    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v3}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    move-result-object v3

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v13}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    move-result-object v13

    invoke-virtual {v13}, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->getRefTagFeatureIdPartial()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "_ub_"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 293
    iget-object v3, v0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v3}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    move-result-object v3

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v14}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    move-result-object v14

    invoke-virtual {v14}, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->getRefTagFeatureIdPartial()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "_ku_"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v9, "BlurbCardWidget"

    const-string v15, "AnyActionsBlurbCardWidget"

    move-object/from16 v16, v4

    .line 288
    invoke-virtual/range {v5 .. v16}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->initialize(Lcom/amazon/ea/util/EABookShell;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;

    .line 295
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->getPurchaseViewManager()Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->getBlurbBookImage()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setCurrentBookView(Landroid/view/View;)V

    .line 297
    :cond_d
    invoke-direct/range {p0 .. p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->applyThemeRules(Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;)V

    .line 298
    invoke-direct/range {p0 .. p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->makeRecyclerViewHeightAdaptable(Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 242
    invoke-virtual {p0, p1, p2}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;
    .locals 2

    const-string/jumbo p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {p2}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getController$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Lcom/amazon/startactions/ui/IAnyActionsUIController;

    move-result-object p2

    const-string v0, "controller"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/ea/R$layout;->readingactions_blurb_card:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 252
    new-instance p2, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    const-string v1, "blurbCard"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;-><init>(Lcom/amazon/readingactions/ui/widget/BlurbCardController;Landroid/view/View;)V

    return-object p2
.end method
