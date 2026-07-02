.class public abstract Lcom/amazon/android/menu/AbstractCustomActionMenuButton;
.super Ljava/lang/Object;
.source "AbstractCustomActionMenuButton.java"

# interfaces
.implements Lcom/amazon/android/menu/CustomActionMenuButton;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Activity;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/android/menu/CustomActionMenuButton;"
    }
.end annotation


# instance fields
.field protected final activity:Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/amazon/android/menu/AbstractCustomActionMenuButton;->resources:Landroid/content/res/Resources;

    .line 18
    iput-object p1, p0, Lcom/amazon/android/menu/AbstractCustomActionMenuButton;->activity:Landroid/app/Activity;

    .line 19
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/menu/AbstractCustomActionMenuButton;->resources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public getBackgroundColor(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 39
    sget-object v0, Lcom/amazon/android/menu/AbstractCustomActionMenuButton$1;->$SwitchMap$com$amazon$android$docviewer$KindleDocColorMode$Id:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 51
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->ic_reader_top_chrome_white:I

    goto :goto_0

    .line 46
    :cond_0
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->ic_reader_top_chrome_sepia:I

    goto :goto_0

    .line 42
    :cond_1
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->ic_reader_top_chrome_black:I

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/amazon/android/menu/AbstractCustomActionMenuButton;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public abstract getContentDescription()Ljava/lang/String;
.end method

.method public abstract getIconName()Ljava/lang/String;
.end method

.method public getTextColor(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Landroid/content/res/ColorStateList;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract handleOnClick()V
.end method

.method public handleOnClick(Landroid/view/View;)V
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/amazon/android/menu/AbstractCustomActionMenuButton;->handleOnClick()V

    return-void
.end method

.method public isActivated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract showAsAction()I
.end method
