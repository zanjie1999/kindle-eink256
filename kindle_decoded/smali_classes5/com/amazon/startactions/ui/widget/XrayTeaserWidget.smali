.class public Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;
.super Lcom/amazon/startactions/ui/widget/WidgetBase;
.source "XrayTeaserWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayImagesQuery;,
        Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery;,
        Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$LaunchXrayImagesOnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/startactions/ui/widget/WidgetBase<",
        "Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef;",
        ">;"
    }
.end annotation


# static fields
.field private static final DISABLED_ALPHA_FLOAT:F = 0.5f

.field private static final ENTITIES_WIDGET_TYPE:Ljava/lang/String; = "entities"

.field private static final IMAGES_DISPLAY_FORMAT_MOSAIC:Ljava/lang/String; = "mosaic"

.field private static final IMAGES_DISPLAY_FORMAT_SQUARE:Ljava/lang/String; = "square"

.field private static final IMAGES_WIDGET_TYPE:Ljava/lang/String; = "images"

.field private static final MOSAIC_IMAGES_DISPLAY_THRESHOLD:I = 0x3

.field private static final SQUARE_IMAGES_DISPLAY_THRESHOLD:I = 0x2

.field private static final TAG:Ljava/lang/String; = "com.amazon.startactions.ui.widget.XrayTeaserWidget"

.field private static final TEXT_TAG_NUM_IMAGES:Ljava/lang/String; = "%{numImages}"

.field private static final XRAY_WIDGET_DEFAULT_TIMEOUT_MS:I = 0x32


# instance fields
.field private final entitiesWidgetHolder:Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$EntitiesWidgetHolder;

.field private final imagesWidgetHolder:Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$ImagesWidgetHolder;

.field private mosaicFormat:Z

.field private final preferredType:[Ljava/lang/String;

.field private final widgetTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef;)V
    .locals 1

    .line 148
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;-><init>(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    .line 150
    iget-object v0, p1, Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef;->preferredType:[Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->preferredType:[Ljava/lang/String;

    .line 151
    iget-object v0, p1, Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef;->imagesWidgetHolder:Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$ImagesWidgetHolder;

    iput-object v0, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->imagesWidgetHolder:Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$ImagesWidgetHolder;

    .line 152
    iget-object v0, p1, Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef;->entitiesWidgetHolder:Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$EntitiesWidgetHolder;

    iput-object v0, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->entitiesWidgetHolder:Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$EntitiesWidgetHolder;

    .line 153
    iget p1, p1, Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef;->widgetTimeout:I

    if-nez p1, :cond_0

    const/16 p1, 0x32

    :cond_0
    iput p1, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->widgetTimeout:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;Landroid/view/View;Landroid/view/ViewGroup;[ILjava/util/List;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->updateImagesWidget(Landroid/view/View;Landroid/view/ViewGroup;[ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->mosaicFormat:Z

    return p0
.end method

.method private createEntitiesWidget(Landroid/view/ViewGroup;Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;)Landroid/view/View;
    .locals 9

    .line 463
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$layout;->startactions_widget_xray_entities:I

    const/4 v2, 0x0

    .line 464
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 467
    sget v0, Lcom/amazon/kindle/ea/R$id;->xray_description_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 468
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->entitiesWidgetHolder:Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$EntitiesWidgetHolder;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$EntitiesWidgetHolder;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 472
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    const-string v1, "XrayTeaserEntitiesWidgetLaunchedXray"

    .line 473
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v3

    .line 474
    invoke-static {v1, v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 478
    sget v1, Lcom/amazon/kindle/ea/R$id;->xray_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 479
    new-instance v3, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$4;

    invoke-direct {v3, p0, v0}, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$4;-><init>(Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;Lcom/amazon/startactions/metrics/Metric;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->entitiesWidgetHolder:Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$EntitiesWidgetHolder;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$EntitiesWidgetHolder;->buttonText:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 495
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 496
    sget v0, Lcom/amazon/kindle/ea/R$array;->startactions_secondary_button:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 497
    sget v0, Lcom/amazon/kindle/ea/R$array;->startactions_secondary_button_text_color:I

    .line 498
    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 497
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 501
    sget v0, Lcom/amazon/kindle/ea/R$id;->xray_entity_people_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 502
    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_xray_people_icon:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 505
    sget v0, Lcom/amazon/kindle/ea/R$id;->xray_entity_people_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 506
    iget v1, p2, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;->numPeople:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/amazon/kindle/ea/R$plurals;->startactions_widget_xray_num_people:I

    iget v4, p2, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;->numPeople:I

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    .line 508
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 507
    invoke-virtual {v1, v3, v4, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 511
    iget v0, p2, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;->numPeople:I

    const/high16 v1, 0x3f000000    # 0.5f

    if-nez v0, :cond_0

    .line 512
    sget v0, Lcom/amazon/kindle/ea/R$id;->xray_entity_people:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 513
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 517
    :cond_0
    sget v0, Lcom/amazon/kindle/ea/R$id;->xray_entity_terms_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 518
    sget v3, Lcom/amazon/kindle/ea/R$array;->startactions_xray_terms_icon:I

    invoke-static {v3}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 521
    sget v0, Lcom/amazon/kindle/ea/R$id;->xray_entity_terms_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 522
    iget v3, p2, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;->numTerms:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v4, Lcom/amazon/kindle/ea/R$plurals;->startactions_widget_xray_num_terms:I

    iget v6, p2, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;->numTerms:I

    new-array v7, v5, [Ljava/lang/Object;

    .line 524
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    .line 523
    invoke-virtual {v3, v4, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 527
    iget v0, p2, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;->numTerms:I

    if-nez v0, :cond_1

    .line 528
    sget v0, Lcom/amazon/kindle/ea/R$id;->xray_entity_terms:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 529
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 533
    :cond_1
    sget v0, Lcom/amazon/kindle/ea/R$id;->xray_entity_images_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 534
    sget v3, Lcom/amazon/kindle/ea/R$array;->startactions_xray_images_icon:I

    invoke-static {v3}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 537
    sget v0, Lcom/amazon/kindle/ea/R$id;->xray_entity_images_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 538
    iget v3, p2, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;->numImages:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v4, Lcom/amazon/kindle/ea/R$plurals;->startactions_widget_xray_num_images:I

    iget v6, p2, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;->numImages:I

    new-array v5, v5, [Ljava/lang/Object;

    .line 540
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v2

    .line 539
    invoke-virtual {v3, v4, v6, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 543
    iget p2, p2, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;->numImages:I

    if-nez p2, :cond_2

    .line 544
    sget p2, Lcom/amazon/kindle/ea/R$id;->xray_entity_images:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 545
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_2
    return-object p1
.end method

.method private createImagesWidget(Landroid/view/ViewGroup;Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;)Landroid/view/View;
    .locals 4

    .line 274
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->imagesWidgetHolder:Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$ImagesWidgetHolder;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$ImagesWidgetHolder;->displayFormat:Ljava/lang/String;

    const-string v1, "mosaic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;->previewImages:[I

    array-length v0, v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    .line 276
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/ea/R$layout;->startactions_widget_xray_mosaic_images:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x1

    .line 278
    iput-boolean v0, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->mosaicFormat:Z

    goto :goto_0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/ea/R$layout;->startactions_widget_xray_square_images:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 282
    iput-boolean v1, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->mosaicFormat:Z

    .line 286
    :goto_0
    sget v0, Lcom/amazon/kindle/ea/R$id;->xray_description_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 287
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->imagesWidgetHolder:Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$ImagesWidgetHolder;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$ImagesWidgetHolder;->description:Ljava/lang/String;

    iget p2, p2, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;->numImages:I

    .line 288
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v3, "%{numImages}"

    .line 287
    invoke-virtual {v2, v3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    sget p2, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {p2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 292
    sget p2, Lcom/amazon/kindle/ea/R$id;->xray_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 293
    new-instance v0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$LaunchXrayImagesOnClickListener;

    const/4 v2, -0x1

    invoke-direct {v0, p0, v2}, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$LaunchXrayImagesOnClickListener;-><init>(Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;I)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->imagesWidgetHolder:Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$ImagesWidgetHolder;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$ImagesWidgetHolder;->buttonText:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 295
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 296
    sget v0, Lcom/amazon/kindle/ea/R$array;->startactions_secondary_button:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 297
    sget v0, Lcom/amazon/kindle/ea/R$array;->startactions_secondary_button_text_color:I

    .line 298
    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 297
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-object p1
.end method

.method private getImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 3

    .line 448
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    new-instance v0, Lcom/amazon/kindle/krx/content/images/ImageScaling;

    sget-object v1, Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;->Fit:Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;

    new-instance v2, Lcom/amazon/kindle/krx/content/images/ImageScaling$Dimension;

    invoke-direct {v2, p2, p2}, Lcom/amazon/kindle/krx/content/images/ImageScaling$Dimension;-><init>(II)V

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, p2}, Lcom/amazon/kindle/krx/content/images/ImageScaling;-><init>(Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;Lcom/amazon/kindle/krx/content/images/ImageScaling$Dimension;F)V

    invoke-static {p1, v0}, Lcom/amazon/xray/plugin/util/ContentUtil;->getImage(Ljava/lang/String;Lcom/amazon/kindle/krx/content/images/ImageScaling;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private queryImagesInBackground(Landroid/view/View;Landroid/view/ViewGroup;Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;)V
    .locals 2

    .line 313
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 314
    new-instance v1, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$3;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$3;-><init>(Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 333
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public static tryCreate(Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef;)Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;
    .locals 7

    const-string v0, "XrayTeaserXraySidecarExists"

    .line 115
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 117
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 118
    sget-object p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->TAG:Ljava/lang/String;

    const-string v0, "Book is not opened; cannot create widget"

    invoke-static {p0, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v2

    .line 124
    :cond_1
    new-instance v3, Lcom/amazon/startactions/metrics/Metric;

    const-string v4, "StartActionsXrayTeaserTryCreate"

    .line 125
    invoke-static {v4}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/amazon/startactions/metrics/Metric;-><init>(Ljava/lang/String;)V

    .line 127
    :try_start_0
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 128
    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v5

    .line 129
    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v6

    .line 128
    invoke-static {v4, v5, v6}, Lcom/amazon/xray/model/util/SidecarFileUtil;->getSidecarFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 130
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 131
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 132
    sget-object p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No database for book [bookId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_2
    invoke-virtual {v3}, Lcom/amazon/startactions/metrics/Metric;->close()V

    return-object v2

    .line 136
    :cond_3
    :try_start_1
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 138
    new-instance v0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;

    invoke-direct {v0, p0}, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;-><init>(Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    invoke-virtual {v3}, Lcom/amazon/startactions/metrics/Metric;->close()V

    return-object v0

    :catchall_0
    move-exception p0

    invoke-virtual {v3}, Lcom/amazon/startactions/metrics/Metric;->close()V

    .line 141
    throw p0
.end method

.method private updateImagesWidget(Landroid/view/View;Landroid/view/ViewGroup;[ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            "[I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 347
    sget v0, Lcom/amazon/kindle/ea/R$id;->xray_progress_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    .line 348
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 350
    sget v0, Lcom/amazon/kindle/ea/R$id;->xray_widget_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 351
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    .line 356
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    .line 360
    :cond_0
    sget-object p2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/amazon/kindle/ea/R$dimen;->startactions_widget_xray_images_padding_between_images:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    .line 362
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->imagesWidgetHolder:Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$ImagesWidgetHolder;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$ImagesWidgetHolder;->displayFormat:Ljava/lang/String;

    const-string/jumbo v2, "square"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x40400000    # 3.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v1, :cond_1

    mul-float p2, p2, v3

    sub-float/2addr v0, p2

    div-float/2addr v0, v2

    .line 367
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 370
    sget v0, Lcom/amazon/kindle/ea/R$id;->xray_square_image_one:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 371
    sget v1, Lcom/amazon/kindle/ea/R$id;->xray_square_image_two:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 374
    invoke-interface {p4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2, p2}, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->getImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 375
    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-direct {p0, p4, p2}, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->getImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p4

    invoke-virtual {v1, p4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 378
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    iput p2, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 379
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    iput p2, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 380
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    iput p2, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 381
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    iput p2, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 384
    new-instance p2, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$LaunchXrayImagesOnClickListener;

    aget p4, p3, v5

    invoke-direct {p2, p0, p4}, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$LaunchXrayImagesOnClickListener;-><init>(Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;I)V

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    new-instance p2, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$LaunchXrayImagesOnClickListener;

    aget p3, p3, v4

    invoke-direct {p2, p0, p3}, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$LaunchXrayImagesOnClickListener;-><init>(Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;I)V

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    invoke-static {v0, v6}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 389
    invoke-static {v1, v6}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 392
    sget p2, Lcom/amazon/kindle/ea/R$id;->xray_square_images:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 393
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 395
    :cond_1
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->imagesWidgetHolder:Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$ImagesWidgetHolder;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$ImagesWidgetHolder;->displayFormat:Ljava/lang/String;

    const-string v7, "mosaic"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v1, v1, p2

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    .line 402
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-float v0, v0, v2

    add-float/2addr v0, p2

    .line 403
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 406
    sget v0, Lcom/amazon/kindle/ea/R$id;->xray_mosaic_image_one:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 407
    sget v2, Lcom/amazon/kindle/ea/R$id;->xray_mosaic_image_two:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 408
    sget v3, Lcom/amazon/kindle/ea/R$id;->xray_mosaic_image_three:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 411
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput p2, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 412
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v1, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 413
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v1, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 414
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput p2, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 415
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v1, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 416
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v1, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 419
    invoke-interface {p4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7, p2}, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->getImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 420
    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2, v1}, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->getImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 421
    invoke-interface {p4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2, v1}, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->getImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 424
    new-instance p2, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$LaunchXrayImagesOnClickListener;

    aget p4, p3, v5

    invoke-direct {p2, p0, p4}, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$LaunchXrayImagesOnClickListener;-><init>(Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;I)V

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    new-instance p2, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$LaunchXrayImagesOnClickListener;

    aget p4, p3, v4

    invoke-direct {p2, p0, p4}, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$LaunchXrayImagesOnClickListener;-><init>(Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;I)V

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    new-instance p2, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$LaunchXrayImagesOnClickListener;

    aget p3, p3, v6

    invoke-direct {p2, p0, p3}, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$LaunchXrayImagesOnClickListener;-><init>(Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;I)V

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    invoke-static {v0, v6}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 430
    invoke-static {v2, v6}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 431
    invoke-static {v3, v6}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 434
    sget p2, Lcom/amazon/kindle/ea/R$id;->xray_mosaic_images:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 435
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    .line 160
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    .line 161
    new-instance v0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$1;

    invoke-direct {v0, p0}, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$1;-><init>(Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 170
    new-instance v1, Lcom/amazon/startactions/metrics/Metric;

    const-string v2, "StartActionsXrayTeaserCreateView"

    .line 171
    invoke-static {v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/amazon/startactions/metrics/Metric;-><init>(Ljava/lang/String;)V

    const-string v2, "XrayTeaserMetadataQueryTimeout"

    .line 172
    invoke-static {v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v3, "XrayTeaserMetadataQueryException"

    .line 173
    invoke-static {v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v4, "XrayTeaserMetadataQueryReturnedNull"

    .line 175
    invoke-static {v4}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v5, "XrayTeaserMetadataQuerySucceeded"

    .line 176
    invoke-static {v5}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v6, "XrayTeaserDisplayed"

    .line 177
    invoke-static {v6}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 184
    :try_start_0
    iget v9, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->widgetTimeout:I

    int-to-long v9, v9

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v9, v10, v11}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :try_start_1
    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    if-nez v0, :cond_0

    .line 204
    invoke-static {v4}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    .line 203
    invoke-virtual {v1, v4, v8}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 258
    invoke-virtual {v1}, Lcom/amazon/startactions/metrics/Metric;->close()V

    return-object v7

    .line 208
    :cond_0
    :try_start_2
    invoke-static {v5}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    invoke-virtual {v1, v5, v8}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 212
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->preferredType:[Ljava/lang/String;

    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, p2, v3

    const-string v5, "images"

    .line 214
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v9, "DisplayedExpandingTextWidget"

    if-eqz v5, :cond_1

    :try_start_3
    iget-object v5, v0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;->previewImages:[I

    array-length v5, v5

    const/4 v10, 0x2

    if-le v5, v10, :cond_1

    iget v5, v0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;->numImages:I

    iget-object v10, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->imagesWidgetHolder:Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$ImagesWidgetHolder;

    iget v10, v10, Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef$ImagesWidgetHolder;->imagesThreshold:I

    if-le v5, v10, :cond_1

    .line 216
    invoke-direct {p0, p1, v0}, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->createImagesWidget(Landroid/view/ViewGroup;Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;)Landroid/view/View;

    move-result-object p2

    .line 217
    invoke-direct {p0, p2, p1, v0}, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->queryImagesInBackground(Landroid/view/View;Landroid/view/ViewGroup;Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;)V

    .line 220
    invoke-static {v6}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v1, v6, v8}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 221
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v8}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 223
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/GeneralWidgetActions;->RENDER:Lcom/amazon/ea/metrics/GeneralWidgetActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 225
    new-instance p1, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$2;

    invoke-direct {p1, p0}, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$2;-><init>(Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    invoke-static {v9, p0}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetSA(Ljava/lang/String;Lcom/amazon/startactions/ui/widget/Widget;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 258
    invoke-virtual {v1}, Lcom/amazon/startactions/metrics/Metric;->close()V

    return-object p2

    :cond_1
    :try_start_4
    const-string v5, "entities"

    .line 237
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;->numPeople:I

    if-gtz v5, :cond_2

    iget v5, v0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;->numTerms:I

    if-gtz v5, :cond_2

    iget v5, v0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;->numImages:I

    if-lez v5, :cond_3

    .line 241
    :cond_2
    invoke-static {v6}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v1, v6, v8}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 242
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2, v8}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 244
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p2, Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef;

    iget-object p2, p2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v2, Lcom/amazon/startactions/metrics/XRayActions;->RENDER_ENTITIES_WIDGET:Lcom/amazon/startactions/metrics/XRayActions;

    invoke-static {p2, v2}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 245
    invoke-static {v9, p0}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetSA(Ljava/lang/String;Lcom/amazon/startactions/ui/widget/Widget;)V

    .line 247
    invoke-direct {p0, p1, v0}, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->createEntitiesWidget(Landroid/view/ViewGroup;Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;)Landroid/view/View;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 258
    invoke-virtual {v1}, Lcom/amazon/startactions/metrics/Metric;->close()V

    return-object p1

    .line 249
    :cond_3
    :try_start_5
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 250
    sget-object v5, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Xray teaser does not support preferred type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 258
    :cond_5
    invoke-virtual {v1}, Lcom/amazon/startactions/metrics/Metric;->close()V

    return-object v7

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 192
    :try_start_6
    sget-object v0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->TAG:Ljava/lang/String;

    const-string v2, "exception occurred reading xray database."

    invoke-static {v0, v2, p1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    invoke-static {v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    invoke-virtual {v1, v3, v8}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 198
    :try_start_7
    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 258
    invoke-virtual {v1}, Lcom/amazon/startactions/metrics/Metric;->close()V

    return-object v7

    :catch_1
    move-exception p1

    .line 186
    :try_start_8
    sget-object v0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "timeout occurred reading xray database."

    invoke-static {v0, v3, p1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    invoke-static {v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    invoke-virtual {v1, v2, v8}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 198
    :try_start_9
    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 258
    invoke-virtual {v1}, Lcom/amazon/startactions/metrics/Metric;->close()V

    return-object v7

    .line 198
    :goto_1
    :try_start_a
    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 199
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception p1

    .line 258
    invoke-virtual {v1}, Lcom/amazon/startactions/metrics/Metric;->close()V

    .line 259
    throw p1
.end method

.method public initMetricsValues()V
    .locals 0

    return-void
.end method
