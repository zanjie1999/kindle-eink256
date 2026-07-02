.class public Lcom/amazon/xray/ui/fragment/EntityDetailFragment;
.super Lcom/amazon/xray/ui/fragment/XrayFragment;
.source "EntityDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/ui/fragment/EntityDetailFragment$TrackingOnTabSelectedListener;,
        Lcom/amazon/xray/ui/fragment/EntityDetailFragment$TabViewAdapter;,
        Lcom/amazon/xray/ui/fragment/EntityDetailFragment$LoaderStrategy;,
        Lcom/amazon/xray/ui/fragment/EntityDetailFragment$EntityDescriptionOnClickListener;,
        Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENTITY_ID:I = 0x0

.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "DescriptionDialog"

.field private static final LOAD_TIMEOUT_MS:I = 0x64

.field private static final NO_INITIAL_FOCUSED_EXCERPT_ID:I = -0x1

.field private static final NO_TAB_SELECTED:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private entityId:I

.field private holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

.field private initialFocusedExcerptId:I

.field private initialFocusedImageId:Ljava/lang/String;

.field private final loader:Lcom/amazon/xray/model/loader/ContentLoader;

.field private openToFirstEntityTypeTab:Z

.field private openToImagesTab:Z

.field private result:Lcom/amazon/xray/model/loader/EntityDetailTask$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-class v0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 50
    invoke-direct {p0}, Lcom/amazon/xray/ui/fragment/XrayFragment;-><init>()V

    .line 84
    new-instance v0, Lcom/amazon/xray/model/loader/ContentLoader;

    new-instance v1, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$LoaderStrategy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$LoaderStrategy;-><init>(Lcom/amazon/xray/ui/fragment/EntityDetailFragment;Lcom/amazon/xray/ui/fragment/EntityDetailFragment$1;)V

    invoke-direct {v0, v1}, Lcom/amazon/xray/model/loader/ContentLoader;-><init>(Lcom/amazon/xray/model/loader/ContentLoader$Strategy;)V

    iput-object v0, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->loader:Lcom/amazon/xray/model/loader/ContentLoader;

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/xray/ui/fragment/EntityDetailFragment;)Lcom/amazon/xray/model/loader/EntityDetailTask$Result;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->result:Lcom/amazon/xray/model/loader/EntityDetailTask$Result;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/xray/ui/fragment/EntityDetailFragment;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->entityId:I

    return p0
.end method

.method static synthetic access$500(Lcom/amazon/xray/ui/fragment/EntityDetailFragment;Lcom/amazon/xray/model/loader/EntityDetailTask$Result;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->configureView(Lcom/amazon/xray/model/loader/EntityDetailTask$Result;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/amazon/xray/ui/fragment/EntityDetailFragment;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->initialFocusedImageId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/xray/ui/fragment/EntityDetailFragment;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->initialFocusedExcerptId:I

    return p0
.end method

.method private configureView(Lcom/amazon/xray/model/loader/EntityDetailTask$Result;Z)V
    .locals 7

    .line 206
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    if-nez v0, :cond_0

    return-void

    .line 210
    :cond_0
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->result:Lcom/amazon/xray/model/loader/EntityDetailTask$Result;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_e

    .line 213
    invoke-virtual {p1}, Lcom/amazon/xray/model/loader/EntityDetailTask$Result;->getEntity()Lcom/amazon/xray/model/object/Entity;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_5

    .line 221
    :cond_1
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->content:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 222
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 223
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->error:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    invoke-virtual {p1}, Lcom/amazon/xray/model/loader/EntityDetailTask$Result;->getEntity()Lcom/amazon/xray/model/object/Entity;

    move-result-object p2

    .line 228
    invoke-virtual {p2}, Lcom/amazon/xray/model/object/Entity;->getId()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 229
    iget-object v2, p0, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    sget v4, Lcom/amazon/kindle/xray/R$string;->xray_title:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amazon/xray/ui/activity/XrayActivity;->setActionBarTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_2
    iget-object v2, p0, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    sget v4, Lcom/amazon/kindle/xray/R$string;->xray_title_with_details:I

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/amazon/xray/model/object/Entity;->getLabel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p0, v4, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amazon/xray/ui/activity/XrayActivity;->setActionBarTitle(Ljava/lang/String;)V

    .line 235
    :goto_0
    invoke-virtual {p2}, Lcom/amazon/xray/model/object/Entity;->getId()I

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_9

    invoke-virtual {p2}, Lcom/amazon/xray/model/object/Entity;->getDescription()Lcom/amazon/xray/model/object/Description;

    move-result-object v2

    if-nez v2, :cond_3

    goto/16 :goto_3

    .line 249
    :cond_3
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    iget-object v0, v0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->entityIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 250
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    iget-object v0, v0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->entityIcon:Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/amazon/xray/ui/util/EntityIconUtil;->getLargeIcon(Lcom/amazon/xray/model/object/Entity;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 252
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    iget-object v0, v0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->entityIcon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/amazon/xray/model/object/Entity;->getType()Lcom/amazon/xray/model/object/EntityType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/xray/model/object/EntityType;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    iget-object v0, v0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->entityIcon:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 255
    :cond_4
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    iget-object v0, v0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->descriptionSeparator:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 256
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 260
    :cond_5
    invoke-static {}, Lcom/amazon/xray/ui/util/TextScalingUtil;->isFontScaleOverCap()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 261
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    iget-object v0, v0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->entityDesc:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/amazon/kindle/xray/R$integer;->xray_description_max_lines_with_large_font:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setLines(I)V

    .line 265
    :cond_6
    invoke-virtual {p2}, Lcom/amazon/xray/model/object/Entity;->getDescription()Lcom/amazon/xray/model/object/Description;

    move-result-object v0

    .line 266
    iget-object v2, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    iget-object v2, v2, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->entityDesc:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    sget v5, Lcom/amazon/kindle/xray/R$string;->xray_read_more:I

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setLinkText(Ljava/lang/String;)V

    .line 267
    iget-object v2, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    iget-object v2, v2, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->entityDesc:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    sget v5, Lcom/amazon/kindle/xray/R$string;->xray_read_more_content_description:I

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setLinkContentDescription(Ljava/lang/String;)V

    .line 268
    iget-object v2, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    iget-object v2, v2, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->entityDesc:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    new-instance v5, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$EntityDescriptionOnClickListener;

    invoke-direct {v5, p0, v4}, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$EntityDescriptionOnClickListener;-><init>(Lcom/amazon/xray/ui/fragment/EntityDetailFragment;Lcom/amazon/xray/ui/fragment/EntityDetailFragment$1;)V

    invoke-virtual {v2, v5}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setLinkListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v2, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    iget-object v2, v2, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->entityDesc:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    invoke-virtual {v0}, Lcom/amazon/xray/model/object/Description;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 270
    invoke-virtual {v0}, Lcom/amazon/xray/model/object/Description;->getLicenseLabel()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v4, 0x1

    .line 269
    :goto_2
    invoke-virtual {v2, v4}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setAlwaysShowLink(Z)V

    .line 271
    iget-object v2, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    iget-object v2, v2, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->entityDesc:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    invoke-virtual {p2}, Lcom/amazon/xray/model/object/Entity;->getDescription()Lcom/amazon/xray/model/object/Description;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/xray/model/object/Description;->isFromBook()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setShowingQuotes(Z)V

    .line 272
    iget-object v2, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    iget-object v2, v2, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->entityDesc:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    invoke-virtual {v0}, Lcom/amazon/xray/model/object/Description;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/xray/model/util/DescriptionUtil;->stripNewlines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setTextWithExtras(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    iget-object v0, v0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->entityDesc:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 237
    :cond_9
    :goto_3
    iget-object v2, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    iget-object v2, v2, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->entityIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_a

    .line 238
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    iget-object v2, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    iget-object v2, v2, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->entityIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    :cond_a
    iget-object v2, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    iget-object v2, v2, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->descriptionSeparator:Landroid/view/View;

    if-eqz v2, :cond_b

    .line 242
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 245
    :cond_b
    iget-object v2, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    iget-object v2, v2, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->entityDesc:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v2, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    iget-object v2, v2, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->entityDesc:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    :goto_4
    new-instance v0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$TabViewAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, p0, v2, p1}, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$TabViewAdapter;-><init>(Lcom/amazon/xray/ui/fragment/EntityDetailFragment;Landroidx/fragment/app/FragmentManager;Lcom/amazon/xray/model/loader/EntityDetailTask$Result;)V

    .line 284
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->tabs:Lcom/amazon/xray/ui/widget/TabView;

    invoke-virtual {p1}, Lcom/amazon/xray/ui/widget/TabView;->getSelectedTabIndex()I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_d

    invoke-virtual {v0}, Lcom/amazon/xray/ui/widget/TabView$TabArrayAdapter;->getCount()I

    move-result p1

    if-lez p1, :cond_d

    .line 285
    invoke-virtual {p2}, Lcom/amazon/xray/model/object/Entity;->getId()I

    move-result p1

    if-nez p1, :cond_c

    const/4 v1, 0x1

    :cond_c
    invoke-direct {p0, v0, v1}, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->getDefaultTabIndex(Lcom/amazon/xray/ui/widget/TabView$TabAdapter;Z)I

    move-result p1

    .line 286
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->tabs:Lcom/amazon/xray/ui/widget/TabView;

    invoke-virtual {p2, p1}, Lcom/amazon/xray/ui/widget/TabView;->setSelectedTabIndex(I)V

    .line 289
    invoke-static {}, Lcom/amazon/xray/plugin/util/BookUtil;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p2

    const-string v1, "XrayReadingSession"

    invoke-static {p2, v1}, Lcom/amazon/xray/metrics/SessionManager;->getSessionMetric(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;

    move-result-object p2

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InitialTab_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Lcom/amazon/xray/ui/widget/TabView$TabArrayAdapter;->getStateKey(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    .line 294
    :cond_d
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->tabs:Lcom/amazon/xray/ui/widget/TabView;

    invoke-virtual {p1, v0}, Lcom/amazon/xray/ui/widget/TabView;->setAdapter(Lcom/amazon/xray/ui/widget/TabView$TabAdapter;)V

    .line 295
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->tabs:Lcom/amazon/xray/ui/widget/TabView;

    new-instance p2, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$TrackingOnTabSelectedListener;

    invoke-direct {p2, p0, v0}, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$TrackingOnTabSelectedListener;-><init>(Lcom/amazon/xray/ui/fragment/EntityDetailFragment;Lcom/amazon/xray/ui/widget/TabView$TabAdapter;)V

    invoke-virtual {p1, p2}, Lcom/amazon/xray/ui/widget/TabView;->setOnTabSelectedListener(Lcom/amazon/xray/ui/widget/TabView$OnTabSelectedListener;)V

    return-void

    .line 214
    :cond_e
    :goto_5
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->content:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->progress:Landroid/widget/ProgressBar;

    if-eqz p2, :cond_f

    const/4 v2, 0x0

    goto :goto_6

    :cond_f
    const/16 v2, 0x8

    :goto_6
    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 216
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->error:Landroid/widget/TextView;

    if-eqz p2, :cond_10

    goto :goto_7

    :cond_10
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private getDefaultTabIndex(Lcom/amazon/xray/ui/widget/TabView$TabAdapter;Z)I
    .locals 8

    .line 308
    iget-boolean v0, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->openToImagesTab:Z

    iget-boolean v1, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->openToFirstEntityTypeTab:Z

    xor-int/2addr v0, v1

    const-string v1, "allOfType"

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const/4 p2, 0x0

    .line 310
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/xray/ui/widget/TabView$TabAdapter;->getCount()I

    move-result v0

    if-ge p2, v0, :cond_6

    .line 311
    invoke-virtual {p1, p2}, Lcom/amazon/xray/ui/widget/TabView$TabAdapter;->getStateKey(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v4, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->openToImagesTab:Z

    if-eqz v4, :cond_0

    const-string v4, "images"

    goto :goto_1

    :cond_0
    move-object v4, v1

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_6

    .line 319
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    const-string/jumbo v0, "xray.preference.config"

    invoke-virtual {p2, v0, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v0, "LastSelectedTab"

    const-string v4, ""

    .line 320
    invoke-interface {p2, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 321
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 323
    :goto_2
    invoke-virtual {p1}, Lcom/amazon/xray/ui/widget/TabView$TabAdapter;->getCount()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 324
    invoke-virtual {p1, v4}, Lcom/amazon/xray/ui/widget/TabView$TabAdapter;->getStateKey(I)Ljava/lang/String;

    move-result-object v6

    .line 325
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move p2, v4

    goto :goto_3

    :cond_3
    if-ne v5, v2, :cond_4

    if-eqz v0, :cond_4

    .line 333
    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v5, v4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    move p2, v5

    goto :goto_3

    :cond_6
    const/4 p2, -0x1

    :goto_3
    if-ne p2, v2, :cond_7

    goto :goto_4

    :cond_7
    move v3, p2

    :goto_4
    return v3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 109
    invoke-super {p0, p1}, Lcom/amazon/xray/ui/fragment/XrayFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 112
    iput p1, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->entityId:I

    const/4 p1, 0x0

    .line 113
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->initialFocusedImageId:Ljava/lang/String;

    const/4 p1, -0x1

    .line 114
    iput p1, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->initialFocusedExcerptId:I

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 118
    iget v0, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->entityId:I

    const-string v1, "entityId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->entityId:I

    .line 119
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->initialFocusedImageId:Ljava/lang/String;

    const-string v1, "initialFocusedImageId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->initialFocusedImageId:Ljava/lang/String;

    .line 120
    iget v0, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->initialFocusedExcerptId:I

    const-string v1, "initialFocusedExcerptId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->initialFocusedExcerptId:I

    .line 121
    iget-boolean v0, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->openToImagesTab:Z

    const-string v1, "openToImages"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->openToImagesTab:Z

    .line 122
    iget-boolean v0, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->openToFirstEntityTypeTab:Z

    const-string v1, "openToFirstEntityType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->openToFirstEntityTypeTab:Z

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 129
    sget p3, Lcom/amazon/kindle/xray/R$layout;->xray_fragment_entity_detail:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 133
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 134
    sget-object p2, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->TAG:Ljava/lang/String;

    const-string p3, "Parent activity is finishing, aborting."

    invoke-static {p2, p3}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 139
    :cond_0
    new-instance p2, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;-><init>(Lcom/amazon/xray/ui/fragment/EntityDetailFragment$1;)V

    iput-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    .line 140
    sget p3, Lcom/amazon/kindle/xray/R$id;->xray_progress:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ProgressBar;

    iput-object p3, p2, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->progress:Landroid/widget/ProgressBar;

    .line 141
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    sget p3, Lcom/amazon/kindle/xray/R$id;->xray_error:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p2, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->error:Landroid/widget/TextView;

    .line 142
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    sget p3, Lcom/amazon/kindle/xray/R$id;->xray_content:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p2, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->content:Landroid/view/View;

    .line 143
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    sget p3, Lcom/amazon/kindle/xray/R$id;->xray_entity_desc:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/amazon/xray/ui/widget/EnhancedTextView;

    iput-object p3, p2, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->entityDesc:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    .line 144
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    sget p3, Lcom/amazon/kindle/xray/R$id;->xray_entity_icon:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p2, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->entityIcon:Landroid/widget/ImageView;

    .line 145
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    sget p3, Lcom/amazon/kindle/xray/R$id;->xray_separator:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p2, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->separator:Landroid/view/View;

    .line 146
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    sget p3, Lcom/amazon/kindle/xray/R$id;->xray_description_separator:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p2, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->descriptionSeparator:Landroid/view/View;

    .line 147
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    sget p3, Lcom/amazon/kindle/xray/R$id;->xray_tabs:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/amazon/xray/ui/widget/TabView;

    iput-object p3, p2, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->tabs:Lcom/amazon/xray/ui/widget/TabView;

    .line 148
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    sget p3, Lcom/amazon/kindle/xray/R$id;->xray_tab_content:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p2, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->tabContent:Landroid/view/ViewGroup;

    .line 151
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    sget p3, Lcom/amazon/kindle/xray/R$string;->xray_title:I

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/amazon/xray/ui/activity/XrayActivity;->setActionBarTitle(Ljava/lang/String;)V

    .line 154
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->entityIcon:Landroid/widget/ImageView;

    if-eqz p2, :cond_4

    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 156
    iget-object p3, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    iget-object p3, p3, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->entityIcon:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 157
    iget v1, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->entityId:I

    if-nez v1, :cond_3

    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 159
    :goto_0
    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    iget-object v1, v1, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->entityIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    sget v0, Lcom/amazon/kindle/xray/R$dimen;->xray_size_book_icon:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 161
    sget v0, Lcom/amazon/kindle/xray/R$dimen;->xray_size_book_icon:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    .line 163
    :cond_3
    sget v0, Lcom/amazon/kindle/xray/R$dimen;->xray_size_entity_icon_large:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 164
    sget v0, Lcom/amazon/kindle/xray/R$dimen;->xray_size_entity_icon_large:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 169
    :cond_4
    :goto_2
    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object p2

    .line 170
    iget-object p3, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    iget-object p3, p3, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->separator:Landroid/view/View;

    if-eqz p3, :cond_5

    .line 171
    invoke-virtual {p2}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSeparatorColor()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 173
    :cond_5
    iget-object p3, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    iget-object p3, p3, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;->descriptionSeparator:Landroid/view/View;

    if-eqz p3, :cond_6

    .line 174
    invoke-virtual {p2}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSeparatorColor()I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 178
    :cond_6
    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->loader:Lcom/amazon/xray/model/loader/ContentLoader;

    const-wide/16 v0, 0x64

    invoke-virtual {p2, v0, v1}, Lcom/amazon/xray/model/loader/ContentLoader;->load(J)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 192
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 194
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->loader:Lcom/amazon/xray/model/loader/ContentLoader;

    invoke-virtual {v0}, Lcom/amazon/xray/model/loader/ContentLoader;->cancel()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 185
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->holder:Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;

    return-void
.end method
