.class public final Lcom/amazon/kcp/reader/ui/buttons/SelectionButtonCategory;
.super Ljava/lang/Object;
.source "SelectionButtonCategory.java"

# interfaces
.implements Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;


# instance fields
.field private final context:Landroid/content/Context;

.field private final darkThemeDrawableId:I

.field private final lightThemeDrawableId:I

.field private final nameResourceId:I

.field private final preferTextOnlyDisplay:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIZ)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/buttons/SelectionButtonCategory;->context:Landroid/content/Context;

    .line 24
    iput p2, p0, Lcom/amazon/kcp/reader/ui/buttons/SelectionButtonCategory;->nameResourceId:I

    .line 25
    iput p3, p0, Lcom/amazon/kcp/reader/ui/buttons/SelectionButtonCategory;->lightThemeDrawableId:I

    .line 26
    iput p4, p0, Lcom/amazon/kcp/reader/ui/buttons/SelectionButtonCategory;->darkThemeDrawableId:I

    .line 27
    iput-boolean p5, p0, Lcom/amazon/kcp/reader/ui/buttons/SelectionButtonCategory;->preferTextOnlyDisplay:Z

    return-void
.end method


# virtual methods
.method public getDrawable(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 38
    sget-object v0, Lcom/amazon/kcp/reader/ui/buttons/SelectionButtonCategory$1;->$SwitchMap$com$amazon$android$docviewer$KindleDocColorMode$Id:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 44
    iget p1, p0, Lcom/amazon/kcp/reader/ui/buttons/SelectionButtonCategory;->lightThemeDrawableId:I

    goto :goto_0

    .line 41
    :cond_0
    iget p1, p0, Lcom/amazon/kcp/reader/ui/buttons/SelectionButtonCategory;->darkThemeDrawableId:I

    .line 49
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 50
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->get()Landroidx/appcompat/widget/AppCompatDrawableManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/buttons/SelectionButtonCategory;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kcp/reader/ui/buttons/SelectionButtonCategory;->nameResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameResourceId()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/amazon/kcp/reader/ui/buttons/SelectionButtonCategory;->nameResourceId:I

    return v0
.end method
